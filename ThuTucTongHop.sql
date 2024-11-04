CREATE PROCEDURE sp_GetThoiKhoaBieu
	@MaGV nvarchar(10)
AS
BEGIN
    SELECT 
		tkb.MaTKB,
        tkb.MaLop,
        lh.TenLop,
        gv.HoTen AS TenGiaoVien,
        mh.TenMH AS TenMon,
        tkb.Tiet,
        tkb.Thu,
		hk.NamHoc+ '_' + hk.TenHK as TenHK,
        NgayBatDau,
        NgayKetThuc
    FROM 
        ThoiKhoaBieu tkb
    JOIN 
        LopHoc lh ON tkb.MaLop = lh.MaLop
    JOIN 
        MonHoc mh ON tkb.MaMH = mh.MaMH
	JOIN 
		HocKy hk on hk.MaHK = tkb.MaHK
	JOIN
		GiaoVien gv ON gv.MaGV = tkb.MaGV
	WHERE gv.MaGV = @MaGV
END;


CREATE PROCEDURE sp_GetMonHoc
	@MaGV nvarchar(10)
AS
BEGIN
    SELECT mh.MaMH, TenMH FROM MonHoc mh
	INNER JOIN GiaoVien gv on mh.MaMH = gv.MaMH
	where MaGV = @MaGV
END

CREATE PROCEDURE sp_GetHocKy
	@MaGV nvarchar(10)
AS
BEGIN
    SELECT distinct hk.MaHK, hk.NamHoc+ '_' + hk.TenHK as TenHK  FROM HocKy hk
	INNER JOIN ThoiKhoaBieu tkb on tkb.MaHK = hk.MaHK
	INNER JOIN GiaoVien gv on tkb.MaGV = gv.MaGV
	where gv.MaGV = @MaGV
END

CREATE PROCEDURE sp_GetMonHocAll
AS
BEGIN
    SELECT MaMH, TenMH FROM MonHoc
END


CREATE PROCEDURE sp_GetLopHoc
AS
BEGIN
    SELECT MaLop, TenLop FROM LopHoc
END


CREATE  PROCEDURE sp_SearchThoiKhoaBieu
	@MaGV nvarchar(10) = null,
    @Thu NVARCHAR(50) = NULL,
    @TietHoc INT = NULL,
    @MaLop NVARCHAR(10) = NULL,
	@MaHK NVARCHAR(10) = NULL,
	@KhoiLop nvarchar(50) = null,
    @MaMH NVARCHAR(10) = NULL,
    @NgayDay DATE = NULL
AS
BEGIN
    SELECT 
		tkb.MaTKB,
		tkb.MaLop,
        lh.TenLop,
        gv.HoTen AS TenGiaoVien,
        mh.TenMH AS TenMon,
        tkb.Tiet,
        tkb.Thu,
		hk.NamHoc+ '_' + hk.TenHK as TenHK,
        NgayBatDau,
        NgayKetThuc
    FROM ThoiKhoaBieu tkb
	JOIN MonHoc mh ON tkb.MaMH = mh.MaMH
    JOIN GiaoVien gv ON tkb.MaGV = gv.MaGV
	JOIN HocKy hk ON tkb.MaHK = hk.MaHK
    JOIN LopHoc lh ON tkb.MaLop = lh.MaLop
    
    WHERE 
        (@Thu IS NULL OR tkb.Thu like '%' + @Thu + '%') AND
        (@TietHoc IS NULL OR tkb.Tiet = @TietHoc) AND
        (@MaLop IS NULL OR lh.MaLop =  @MaLop) AND
		(@KhoiLop IS NULL OR lh.TenKL =  @KhoiLop) AND
        (@MaHK IS NULL OR hk.MaHK = @MaHK) AND
        (@NgayDay IS NULL OR tkb.NgayBatDau <= @NgayDay AND tkb.NgayKetThuc >= @NgayDay) AND
		gv.MaGV = @MaGV
END


CREATE PROCEDURE sp_Check_login
    @user NVARCHAR(50),
    @password NVARCHAR(50)
AS
BEGIN
    -- Kiểm tra tài khoản trong bảng TaiKhoan
    SELECT MaTk, TenTK
    FROM TaiKhoan
    WHERE TenTk = @user AND MatKhauTK = @password
END




create procedure sp_GetGiaoVienByMaTK
	@maTK nvarchar(10)
as 
begin 
	select MaGV, HoTen, gv.MaTK, NgaySinh, DiaChi, GioiTinh, Anh
	from GIAOVIEN gv 
	where gv.MaTK = @maTK
end



CREATE PROCEDURE sp_DangKyTaiKhoan
    @Email NVARCHAR(100),
    @TenTk NVARCHAR(100),
    @MatKhau NVARCHAR(100),
    @SoDT NVARCHAR(15),
	
    @Result NVARCHAR(255) OUTPUT
AS
BEGIN
	DECLARE @MaTaiKhoan nvarchar(10)
    DECLARE @RandomPart NVARCHAR(8) = LEFT(CONVERT(NVARCHAR(50), NEWID()), 8);
    SET @MaTaiKhoan = 'TK' + @RandomPart;
    IF EXISTS (SELECT 1 FROM TaiKhoan WHERE Email = @Email OR SDT = @SoDT )
    BEGIN
        SET @Result = 'Email hoặc Số điện thoại đã tồn tại.'
        RETURN
    END

    
    INSERT INTO TaiKhoan (MaTK,Email, TenTK, MatKhauTK, SDT)
    VALUES (@MaTaiKhoan, @Email, @TenTk, @MatKhau, @SoDT)

    IF @@ROWCOUNT > 0
    BEGIN
        SET @Result = ''
    END
    ELSE
    BEGIN
        SET @Result = 'Error'
    END
END

CREATE PROCEDURE sp_CheckUsername
    @Username NVARCHAR(255),
    @Exists BIT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT @Exists = CASE WHEN COUNT(*) > 0 THEN 1 ELSE 0 END
    FROM TaiKhoan
    WHERE TenTK = @Username;
END

CREATE PROCEDURE sp_GetPasswordByEmail
    @Email NVARCHAR(100)
AS
BEGIN
    SELECT MatKhauTK
    FROM TaiKhoan
    WHERE Email = @Email
END


CREATE PROCEDURE sp_TimGiaoVienDayThay
    @MaMonHoc NVARCHAR(50),
    @Tiet INT,
    @Thu NVARCHAR(20),
	@MaHK NVARCHAR(10)
AS
BEGIN
    SELECT gv.MaGV, gv.HoTen
    FROM GiaoVien gv
    INNER JOIN MonHoc mh ON gv.MaMH = mh.MaMH
	LEFT JOIN ThoiKhoaBieu tkb ON tkb.MaGV = gv.MaGV
                               AND tkb.Tiet = @Tiet
                               AND tkb.Thu = @Thu 
							   AND tkb.MaHK = @MaHK
    WHERE mh.MaMH = @MaMonHoc
      AND tkb.MaGV IS NULL;
END;





CREATE PROCEDURE sp_UpdateLichHoc
    @MaTkb NVARCHAR(10),
    @MaMH NVARCHAR(10),
    @MaGV NVARCHAR(10)
AS
BEGIN
    UPDATE ThoiKhoaBieu
    SET MaMH = @MaMH, MaGV = @MaGV
    WHERE MaTKB = @MaTkb;
END;
--Chung
CREATE PROCEDURE sp_GetLopHocByGiaoVien
		@MaGV NVARCHAR(10) =NULL
AS
BEGIN
    SELECT DISTINCT lh.MaLop, TenLop FROM LopHoc lh
	JOIN ThoiKhoaBieu tkb ON lh.MaLop = tkb.MaLop
	JOIN GiaoVien gv ON tkb.MaGV = gv.MaGV
	WHERE (@MaGV IS NULL OR gv.MaGV = @MaGV)
END

CREATE PROCEDURE sp_GetMonHocByGiaoVien
	@MaGV nvarchar(10)
AS
BEGIN
    SELECT mh.MaMH, TenMH FROM MonHoc mh
	INNER JOIN GiaoVien gv on mh.MaMH = gv.MaMH
	where MaGV = @MaGV
END


CREATE PROCEDURE sp_NamHocByDiem
AS
BEGIN
    SELECT distinct NamHoc FROM HocKy
END

CREATE PROCEDURE sp_HocKyByDiem
	@NamHoc nvarchar(20)
AS
BEGIN
    SELECT MaHK, TenHK FROM HocKy hk
	where NamHoc = @NamHoc
END

CREATE PROCEDURE sp_GetDiemByGiaoVien
	@MaGV NVARCHAR(10) =NULL
AS
BEGIN
    SELECT hs.MaHS, hs.HoTen, MaDiem, DiemMieng, Diem15p, Diem45p, DiemGiuaKy, DiemCuoiKy, DiemTB, TenMH, TenLop, TenHK, NamHoc
    FROM Diem d
	JOIN MonHoc_HocKy mh_hk ON d.MaMHHK = mh_hk.MaMHHK
	JOIN MonHoc mh ON mh_hk.MaMH = mh.MaMH
	JOIN HocKy hk ON mh_hk.MaHK = hk.MaHK
	JOIN GiaoVien gv ON gv.MaMH = mh.MaMH
    JOIN HocSinh hs ON d.MaHS = hs.MaHS
	JOIN HocSinh_Lop hsl ON hsl.MaHS = hs.MaHS
    JOIN LopHoc lh ON hsl.MaLop = lh.MaLop
    WHERE (@MaGV IS NULL OR gv.MaGV = @MaGV)
END

CREATE PROCEDURE sp_UpdateDiem
    @md NVARCHAR(10),
	@DiemM float,
	@Diem15p float,
	@Diem45p float,
	@DiemGK float, 
	@DiemCK float
AS
BEGIN
    update Diem 
	set DiemMieng = @DiemM, 
		Diem15p = @Diem15p,
		Diem45p= @Diem45p, 
		DiemGiuaKy = @DiemGK, 
		DiemCuoiKy = @DiemCK 
	where MaDiem = @md
END

CREATE PROCEDURE sp_SearchDiem
    @MaLop1 NVARCHAR(10) = NULL,
    @MaMH1 NVARCHAR(10) = NULL,
	@MaGV NVARCHAR(10) =NULL,
	@NamHoc NVARCHAR(10) =NULL,
	@MaHK NVARCHAR(10) =NULL
AS
BEGIN
    SELECT hs.MaHS, hs.HoTen, MaDiem, DiemMieng, Diem15p, Diem45p, DiemGiuaKy, DiemCuoiKy, DiemTB, TenMH, TenLop, TenHK, NamHoc
    FROM Diem d
	JOIN MonHoc_HocKy mh_hk ON d.MaMHHK = mh_hk.MaMHHK
	JOIN MonHoc mh ON mh_hk.MaMH = mh.MaMH
	JOIN HocKy hk ON mh_hk.MaHK = hk.MaHK
	JOIN GiaoVien gv ON gv.MaMH = mh.MaMH
    JOIN HocSinh hs ON d.MaHS = hs.MaHS
	JOIN HocSinh_Lop hsl ON hsl.MaHS = hs.MaHS
    JOIN LopHoc lh ON hsl.MaLop = lh.MaLop
    WHERE 
        (@MaLop1 IS NULL OR lh.MaLop =  @MaLop1) AND
        (@MaMH1 IS NULL OR mh.MaMH = @MaMH1) and
		(@MaGV IS NULL OR gv.MaGV = @MaGV) and
		(@NamHoc IS NULL OR NamHoc = @NamHoc) and
		(@MaHK IS NULL OR hk.MaHK = @MaHK)
END

--Dat
-- Phương thức quản lý học sinh
-- Lấy danh sách toàn bộ học sinh
CREATE PROCEDURE sp_GetAllHocSinh
	@MaGVCN nvarchar(10)
AS
BEGIN
    SELECT hs.MaHS, hs.HoTen, hs.NgaySinh, hs.DiaChi, hs.GioiTinh, l.MaLop
    FROM HocSinh hs INNER JOIN HocSinh_Lop hsl
		ON hs.MaHS = hsl.MaHS
	INNER JOIN LopHoc l ON l.MaLop = hsl.MaLop
	WHERE l.MaGVCN = @MaGVCN
END

CREATE PROCEDURE sp_GetAllMaLop
	@MaGVCN nvarchar(10)
AS
BEGIN
    SELECT DISTINCT MaLop 
    FROM LopHoc
	WHERE MaGVCN = @MaGVCN
    ORDER BY MaLop ASC; -- Sắp xếp theo thứ tự tăng dần
END


---- Thêm mới học sinh
CREATE PROCEDURE sp_AddHocSinh
    @MaHS NVARCHAR(10),
    @HoTen NVARCHAR(50),
    @NgaySinh DATE,
    @DiaChi NVARCHAR(100),
    @GioiTinh BIT,
    @MaLop NVARCHAR(10)
AS
BEGIN
    INSERT INTO HocSinh (MaHS, HoTen, NgaySinh, DiaChi, GioiTinh)
    VALUES (@MaHS, @HoTen, @NgaySinh, @DiaChi, @GioiTinh)

	DECLARE @MaxMaHSL NVARCHAR(10);
    DECLARE @NewMaHSL NVARCHAR(10);

    -- Lấy mã HSL lớn nhất hiện tại
    SELECT @MaxMaHSL = MAX(MaHSL) 
    FROM HocSinh_Lop;

    -- Tăng mã HSL lên 1 dựa trên mã lớn nhất hiện có
    SET @NewMaHSL = 'HSL' + RIGHT('000' + CAST(COALESCE(CAST(SUBSTRING(@MaxMaHSL, 4, LEN(@MaxMaHSL) - 3) AS INT), 0) + 1 AS NVARCHAR), 3);
	INSERT INTO HocSinh_Lop(MaHSL,MaHS,MaLop)
	VALUES(@NewMaHSL, @MaHS, @MaLop)
END

---- Cập nhật thông tin học sinh
CREATE PROCEDURE sp_UpdateHocSinh
    @MaHS NVARCHAR(10),
    @HoTen NVARCHAR(50),
    @NgaySinh DATE,
    @DiaChi NVARCHAR(100),
    @GioiTinh BIT
AS
BEGIN
    UPDATE HocSinh
    SET HoTen = @HoTen,
        NgaySinh = @NgaySinh,
        DiaChi = @DiaChi,
        GioiTinh = @GioiTinh
    WHERE MaHS = @MaHS

END

-- Xóa học sinh
CREATE PROCEDURE sp_DeleteHocSinh
    @MaHS NVARCHAR(10)
AS
BEGIN
    DELETE FROM HocSinh
    WHERE MaHS = @MaHS
END

--Toan
create procedure sp_GetGiaoVien
	@maTK nvarchar(10)
as 
begin 
	select gv.MaGV, gv.HoTen, gv.NgaySinh, gv.DiaChi, gv.GioiTinh, gv.MaTK, gv.MaMH, l.TenLop
	from GIAOVIEN gv join LopHoc l on gv.MaGV=l.MaGVCN
	where gv.MaTK = @maTK
end


CREATE PROCEDURE sp_DeleteGiaoVien
    @maGV NVARCHAR(50)
AS
BEGIN
    -- Bắt đầu giao dịch
    BEGIN TRANSACTION;

    BEGIN TRY
        -- Lấy mã tài khoản liên quan đến giáo viên
        DECLARE @maTK NVARCHAR(50);
        SELECT @maTK = MaTK FROM GiaoVien WHERE MaGV = @maGV;

        -- Đặt các trường khóa ngoại liên quan đến giáo viên thành NULL
        UPDATE LopHoc SET MaGVCN = NULL WHERE MaGVCN = @maGV;
        UPDATE BaoCaoHocTap SET MaGV = NULL WHERE MaGV = @maGV;
		UPDATE ThoiKhoaBieu SET MaGV = NULL WHERE MaGV = @maGV
        -- Xóa giáo viên từ bảng GiaoVien trước
        DELETE FROM GiaoVien WHERE MaGV = @maGV;
        -- Xóa tài khoản từ bảng TaiKhoan nếu mã tài khoản tồn tại
        IF @maTK IS NOT NULL
        BEGIN
            DELETE FROM TaiKhoan WHERE MaTK = @maTK;
        END

        -- Hoàn tất giao dịch
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Quay lại trạng thái ban đầu nếu có lỗi xảy ra
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END
drop procedure sp_DeleteGiaoVien


CREATE PROCEDURE sp_UpdateGiaoVien
    @MaGV NVARCHAR(50),
    @HoTen NVARCHAR(100),
    @NgaySinh DATE,
    @DiaChi NVARCHAR(255),
    @GioiTinh BIT,
    @MaTK NVARCHAR(50),
	@MaMH NVARCHAR(50)
AS
BEGIN
    -- Kiểm tra nếu giáo viên tồn tại
    IF EXISTS (SELECT 1 FROM GiaoVien WHERE MaGV = @MaGV)
    BEGIN
        -- Cập nhật thông tin giáo viên
        UPDATE GiaoVien
        SET 
            HoTen = @HoTen,
            NgaySinh = @NgaySinh,
            DiaChi = @DiaChi,
            GioiTinh = @GioiTinh,
            MaTK = @MaTK,
			MaMH = @MaMH
        WHERE MaGV = @MaGV;
    END
    ELSE
    BEGIN
        -- Trả về lỗi nếu không tìm thấy giáo viên với MaGV
        RAISERROR('Không tìm thấy giáo viên với mã giáo viên %s.', 16, 1, @MaGV);
    END
END;

CREATE PROCEDURE sp_CheckDuplicateGiaoVien
    @MaGV NVARCHAR(50),
    @MaTK NVARCHAR(50),
    @IsDuplicate BIT OUTPUT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM GiaoVien
        WHERE (MaGV = @MaGV OR MaTK = @MaTK)
          AND MaGV <> @MaGV  -- Đảm bảo đây là giáo viên khác
    )
    BEGIN
        SET @IsDuplicate = 1  -- Trùng lặp
    END
    ELSE
    BEGIN
        SET @IsDuplicate = 0  -- Không trùng lặp
    END
END


CREATE PROCEDURE sp_GetMonHocToan
AS
BEGIN
    SELECT MaMH, TenMH FROM MonHoc 
END

CREATE PROCEDURE sp_UpdateMatKhau
    @MaTK NVARCHAR(50),
    @MatKhauMoi NVARCHAR(50)
AS
BEGIN
    UPDATE TaiKhoan
    SET MatKhauTK = @MatKhauMoi
    WHERE MaTK = @MaTK
END
CREATE PROCEDURE sp_Check_login
    @user NVARCHAR(50),
    @password NVARCHAR(50)
AS
BEGIN
    -- Kiểm tra tài khoản trong bảng TaiKhoan
    SELECT MaTk, TenTK
    FROM TaiKhoan
    WHERE TenTk = @user AND MatKhauTK = @password
END

--CHINH
CREATE PROCEDURE sp_SearchLop
    @TenGiaoVien NVARCHAR(50) = NULL,
    @MaLop NVARCHAR(10) = NULL,
    @Khoi NVARCHAR(10) = NULL,
	@Magv NVARCHAR(10) = NULL
    
AS
BEGIN
    select
	lh.MaLop,lh.TenLop,TenKL,mh.TenMH,gv.HoTen as gvday,gvc.HoTen as gvcn,count(DISTINCT hs.MaHS) as siso
	from LopHoc lh
	left join HocSinh_Lop hs on hs.MaLop=lh.MaLop
	join ThoiKhoaBieu tkb on tkb.MaLop=lh.MaLop
	join MonHoc mh on mh.MaMH=tkb.MaMH
	join GiaoVien gv on gv.MaGV=tkb.MaGV
	join GiaoVien gvc on gvc.MaGV=lh.MaGVCN
    WHERE   
        (@TenGiaoVien IS NULL OR gv.HoTen like N'%'+@TenGiaoVien+'%') AND
        (@MaLop IS NULL OR lh.MaLop =  @MaLop) AND
        (@Khoi IS NULL OR lh.TenKL like N'%'+@Khoi+'%') AND
        (@Magv IS NULL OR tkb.MaGV=@Magv)
	group by lh.MaLop,lh.TenLop,TenKL,gv.HoTen,gvc.HoTen ,mh.TenMH	
END

CREATE PROCEDURE GetLopHoc
	@Magv NVARCHAR(10)   
AS
BEGIN
    select
	lh.MaLop,lh.TenLop,TenKL,mh.TenMH,gv.HoTen as gvday,gvc.HoTen as gvcn,count(DISTINCT hs.MaHS) as siso
	from LopHoc lh
	LEFT JOIN HocSinh_Lop hs on hs.MaLop=lh.MaLop
	join ThoiKhoaBieu tkb on tkb.MaLop=lh.MaLop
	join MonHoc mh on mh.MaMH=tkb.MaMH
	join GiaoVien gv on gv.MaGV=tkb.MaGV
	join GiaoVien gvc on gvc.MaGV=lh.MaGVCN
    WHERE  tkb.MaGV=@Magv
	group by lh.MaLop,lh.TenLop,TenKL,gv.HoTen,gvc.HoTen,mh.TenMH	
END

CREATE PROCEDURE ThongKeXepLoaiTheoGV
    @MaGV NVARCHAR(10)
AS
BEGIN
    SELECT 
        hk.NamHoc,
        gv.HoTen,
        lh.TenLop,
        hk.TenHK,
        COUNT(CASE WHEN bc.XepLoai = 'Gioi' THEN 1 END) AS SoLuongHSGioi,
        COUNT(CASE WHEN bc.XepLoai = 'Kha' THEN 1 END) AS SoLuongHSKha,
        COUNT(CASE WHEN bc.XepLoai = 'Trung Binh' THEN 1 END) AS SoLuongHSTB,
        COUNT(CASE WHEN bc.XepLoai = 'Yeu' THEN 1 END) AS SoLuongHSYeu
    FROM BaoCaoHocTap bc
    JOIN 
        HocKy hk ON bc.MaHK = hk.MaHK
    JOIN 
        HocSinh hs ON bc.MaHS = hs.MaHS
    JOIN 
        HocSinh_Lop hsl ON hsl.MaHS = hs.MaHS  -- K?t n?i v?i b?ng HocSinh_Lop
    JOIN 
        LopHoc lh ON hsl.MaLop = lh.MaLop
    JOIN 
        GiaoVien gv ON gv.MaGV = lh.MaGVCN
    WHERE 
        gv.MaGV = @MaGV
    GROUP BY 
        hk.NamHoc, hk.TenHK, gv.HoTen, lh.TenLop
    ORDER BY 
        hk.NamHoc, hk.TenHK;
END

CREATE PROCEDURE ThongKeXepLoaiTheoMonHocVaGiaoVien
    @MaMH NVARCHAR(10)= NULL,  
    @MaGV NVARCHAR(10)  
AS
BEGIN
    SELECT 
        hk.NamHoc,lh.TenLop,
        mh.TenMH,gv.HoTen,
        hk.TenHK,
        COUNT(CASE WHEN d.DiemTB >= 8.0 THEN 1 END) AS SoLuongHSGioi,
        COUNT(CASE WHEN d.DiemTB >= 6.5 AND d.DiemTB < 8.0 THEN 1 END) AS SoLuongHSKha,
        COUNT(CASE WHEN d.DiemTB >= 5.0 AND d.DiemTB < 6.5 THEN 1 END) AS SoLuongHSTB,
        COUNT(CASE WHEN d.DiemTB < 5.0 THEN 1 END) AS SoLuongHSYeu
    FROM 
        Diem d
    JOIN HocSinh hs ON hs.MaHS = d.MaHS
	JOIN HocSinh_Lop hsl ON hsl.MaHS = hs.MaHS  
    JOIN LopHoc lh ON hsl.MaLop = lh.MaLop 
    JOIN MonHoc_HocKy mhhk ON d.MaMHHK = mhhk.MaMHHK
    JOIN MonHoc mh ON mhhk.MaMH = mh.MaMH 
    JOIN HocKy hk ON mhhk.MaHK = hk.MaHK
	JOIN GiaoVien gv ON gv.MaGV = lh.MaGVCN
    WHERE 
        lh.MaGVCN = @MaGV AND 
		(@MaMH  IS NULL OR mhhk.MaMH = @MaMH )
    GROUP BY 
        hk.NamHoc, hk.TenHK, mh.TenMH,lh.TenLop, gv.HoTen
    ORDER BY 
        hk.NamHoc, hk.TenHK, mh.TenMH
END 