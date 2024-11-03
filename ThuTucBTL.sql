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
        NgayBatDau,
        NgayKetThuc
    FROM 
        ThoiKhoaBieu tkb
    JOIN 
        LopHoc lh ON tkb.MaLop = lh.MaLop
    JOIN 
        MonHoc mh ON tkb.MaMH = mh.MaMH
	JOIN 
		GiaoVien gv ON gv.MaGV = tkb.MaGV
	WHERE gv.MaGV = @MaGV
END;

exec sp_GetThoiKhoaBieu 'GV003'

CREATE PROCEDURE sp_GetMonHoc
	@MaGV nvarchar(10)
AS
BEGIN
    SELECT mh.MaMH, TenMH FROM MonHoc mh
	INNER JOIN GiaoVien gv on mh.MaMH = gv.MaMH
	where MaGV = @MaGV
END

CREATE PROCEDURE sp_GetMonHocAll
AS
BEGIN
    SELECT MaMH, TenMH FROM MonHoc
END

exec sp_GetMonHoc

drop procedure sp_GetThoiKhoaBieu

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
        NgayBatDau,
        NgayKetThuc
    FROM ThoiKhoaBieu tkb
	JOIN MonHoc mh ON tkb.MaMH = mh.MaMH
    JOIN GiaoVien gv ON tkb.MaGV = gv.MaGV
    JOIN LopHoc lh ON tkb.MaLop = lh.MaLop
    
    WHERE 
        (@Thu IS NULL OR tkb.Thu like '%' + @Thu + '%') AND
        (@TietHoc IS NULL OR tkb.Tiet = @TietHoc) AND
        (@MaLop IS NULL OR lh.MaLop =  @MaLop) AND
		(@KhoiLop IS NULL OR lh.TenKL =  @KhoiLop) AND
        (@MaMH IS NULL OR mh.MaMH = @MaMH) AND
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
	select MaGV, HoTen, gv.MaTK, NgaySinh, DiaChi, GioiTinh
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
    @Thu NVARCHAR(20)
AS
BEGIN
    SELECT gv.MaGV, gv.HoTen
    FROM GiaoVien gv
    INNER JOIN MonHoc mh ON gv.MaMH = mh.MaMH
	LEFT JOIN ThoiKhoaBieu tkb ON tkb.MaGV = gv.MaGV
                               AND tkb.Tiet = @Tiet
                               AND tkb.Thu = @Thu 
							   
    WHERE mh.MaMH = @MaMonHoc
      AND tkb.MaGV IS NULL;
END;




--Chung
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

CREATE PROCEDURE sp_SearchDiem
    @MaLop1 NVARCHAR(10) = NULL,
    @MaMH1 NVARCHAR(10) = NULL,
	@MaGV NVARCHAR(10) =NULL
AS
BEGIN
    SELECT hs.MaHS, hs.HoTen, MaDiem, DiemMieng, Diem15p, Diem45p, DiemGiuaKy, DiemCuoiKy, DiemTB, TenMH, TenLop
    FROM Diem d
	JOIN MonHoc mh ON d.MaMH = mh.MaMH
	JOIN GiaoVien gv ON gv.MaMH = mh.MaMH
    JOIN HocSinh hs ON d.MaHS = hs.MaHS
    JOIN LopHoc lh ON hs.MaLop = lh.MaLop
    WHERE 
        (@MaLop1 IS NULL OR lh.MaLop =  @MaLop1) AND
        (@MaMH1 IS NULL OR mh.MaMH = @MaMH1) and
		(@MaGV IS NULL OR gv.MaGV = @MaGV)
END

--Dat
-- Phương thức quản lý học sinh
-- Lấy danh sách toàn bộ học sinh
CREATE PROCEDURE sp_GetAllHocSinh
AS
BEGIN
    SELECT MaHS, HoTen, NgaySinh, DiaChi, GioiTinh, MaLop
    FROM HocSinh
END

CREATE PROCEDURE sp_GetAllMaLop
AS
BEGIN
    SELECT DISTINCT MaLop 
    FROM LopHoc 
    ORDER BY MaLop ASC; -- Sắp xếp theo thứ tự tăng dần
END


-- Thêm mới học sinh
CREATE PROCEDURE sp_AddHocSinh
    @MaHS NVARCHAR(10),
    @HoTen NVARCHAR(50),
    @NgaySinh DATE,
    @DiaChi NVARCHAR(100),
    @GioiTinh BIT,
    @MaLop NVARCHAR(10)
AS
BEGIN
    INSERT INTO HocSinh (MaHS, HoTen, NgaySinh, DiaChi, GioiTinh, MaLop)
    VALUES (@MaHS, @HoTen, @NgaySinh, @DiaChi, @GioiTinh, @MaLop)
END

-- Cập nhật thông tin học sinh
CREATE PROCEDURE sp_UpdateHocSinh
    @MaHS NVARCHAR(10),
    @HoTen NVARCHAR(50),
    @NgaySinh DATE,
    @DiaChi NVARCHAR(100),
    @GioiTinh BIT,
    @MaLop NVARCHAR(10)
AS
BEGIN
    UPDATE HocSinh
    SET HoTen = @HoTen,
        NgaySinh = @NgaySinh,
        DiaChi = @DiaChi,
        GioiTinh = @GioiTinh,
        MaLop = @MaLop
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

