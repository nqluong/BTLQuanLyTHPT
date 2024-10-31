CREATE PROCEDURE sp_GetThoiKhoaBieu
	@MaGV nvarchar(10)
AS
BEGIN
    SELECT 
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
		GiaoVien gv ON gv.MaGV = mh.MaGV
	WHERE gv.MaGV = @MaGV
END;

exec sp_GetThoiKhoaBieu

CREATE PROCEDURE sp_GetMonHoc
	@MaGV nvarchar(10)
AS
BEGIN
    SELECT mh.MaMH, mh.TenMH FROM MonHoc mh
	join ThoiKhoaBieu tkb on tkb.MaMH =mh.MaMH
	join GiaoVien gv on gv.MaGV =tkb.MaGV 
	where gv.MaGV = @MaGV
END

exec sp_GetMonHoc

drop procedure sp_GetThoiKhoaBieu

CREATE PROCEDURE sp_GetLopHoc
AS
BEGIN
    SELECT MaLop, TenLop FROM LopHoc
END

exec sp_GetLopHoc

CREATE PROCEDURE sp_SearchThoiKhoaBieu
	@MaGV nvarchar(10) = null,
    @Thu NVARCHAR(50) = NULL,
    @TietHoc INT = NULL,
    @TenGiaoVien NVARCHAR(50) = NULL,
    @MaLop NVARCHAR(10) = NULL,
	@KhoiLop nvarchar(50) = null,
    @MaMH NVARCHAR(10) = NULL,
    @NgayDay DATE = NULL
AS
BEGIN
    SELECT tkb.MaLop,
        lh.TenLop,
        gv.HoTen AS TenGiaoVien,
        mh.TenMH AS TenMon,
        tkb.Tiet,
        tkb.Thu,
        NgayBatDau,
        NgayKetThuc
    FROM ThoiKhoaBieu tkb
	JOIN MonHoc mh ON tkb.MaMH = mh.MaMH
    JOIN GiaoVien gv ON mh.MaGV = gv.MaGV
    JOIN LopHoc lh ON tkb.MaLop = lh.MaLop
    
    WHERE 
        (@Thu IS NULL OR tkb.Thu like '%' + @Thu + '%') AND
        (@TietHoc IS NULL OR tkb.Tiet = @TietHoc) AND
        (@TenGiaoVien IS NULL OR gv.HoTen like N'%'+@TenGiaoVien+'%') AND
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

exec sp_SearchThoiKhoaBieu null, null, null, 'L003', null, null


create procedure sp_GetGiaoVienByMaTK
	@maTK nvarchar(10)
as 
begin 
	select MaGV, HoTen, gv.MaTK, NgaySinh, DiaChi, GioiTinh
	from GIAOVIEN gv 
	where gv.MaTK = @maTK
end


exec sp_GetGiaoVienByMaTK 'TK001'

CREATE  PROCEDURE sp_DangKyTaiKhoan
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

CREATE PROCEDURE sp_SearchLop
    @TenGiaoVien NVARCHAR(50) = NULL,
    @MaLop NVARCHAR(10) = NULL,
    @Khoi NVARCHAR(10) = NULL,
	@Magv NVARCHAR(10) = NULL
    
AS
BEGIN
    select
	lh.MaLop,lh.TenLop,TenKL,gv.HoTen as gvday,gvc.HoTen as gvcn,count(hs.MaHS) as siso
	from LopHoc lh
	join HocSinh hs on hs.MaLop=lh.MaLop
	join ThoiKhoaBieu tkb on tkb.MaLop=lh.MaLop
	join MonHoc mh on mh.MaMH=tkb.MaMH
	join GiaoVien gv on gv.MaGV=gv.MaGV
	join GiaoVien gvc on gvc.MaGV=lh.MaGVCN
    WHERE   
        (@TenGiaoVien IS NULL OR gv.HoTen like N'%'+@TenGiaoVien+'%') AND
        (@MaLop IS NULL OR lh.MaLop =  @MaLop) AND
        (@Khoi IS NULL OR lh.TenKL like N'%'+@Khoi+'%') AND
        (@Magv IS NULL OR tkb.MaGV=@Magv)
	group by lh.MaLop,lh.TenLop,TenKL,gv.HoTen,gvc.HoTen 	
END
CREATE PROCEDURE GetLopHoc
	@Magv NVARCHAR(10)   
AS
BEGIN
    select
	lh.MaLop,lh.TenLop,TenKL,gv.HoTen as gvday,gvc.HoTen as gvcn,count(hs.MaHS) as siso
	from LopHoc lh
	join HocSinh hs on hs.MaLop=lh.MaLop
	join ThoiKhoaBieu tkb on tkb.MaLop=lh.MaLop
	join MonHoc mh on mh.MaMH=tkb.MaMH
	join GiaoVien gv on gv.MaGV=tkb.MaGV
	join GiaoVien gvc on gvc.MaGV=lh.MaGVCN
    WHERE  tkb.MaGV=@Magv
	group by lh.MaLop,lh.TenLop,TenKL,gv.HoTen,gvc.HoTen 	
END
exec  GetLopHoc 'GV003'
CREATE PROCEDURE sp_BangDiemTatCaHocSinh_TheoMon_Ky
    @MaMH NVARCHAR(10),  -- Mã môn học
    @MaHK NVARCHAR(10)   -- Mã học kỳ
AS
BEGIN
    SELECT 
        HS.MaHS,
        HS.HoTen AS TenHocSinh,
        L.TenLop AS Lop,
        MH.TenMH AS MonHoc,
        HK.TenHK AS HocKy,
        D.DiemMieng, 
        D.Diem15p, 
        D.Diem45p, 
        D.DiemGiuaKy, 
        D.DiemCuoiKy, 
        D.DiemTB
    FROM Diem D
    INNER JOIN HocSinh HS ON D.MaHS = HS.MaHS
    INNER JOIN LopHoc L ON HS.MaLop = L.MaLop
    INNER JOIN MonHoc MH ON D.MaMH = MH.MaMH
    INNER JOIN HocKy HK ON MH.MaHK = HK.MaHK
    WHERE MH.MaMH = @MaMH
      AND HK.MaHK = @MaHK
    ORDER BY L.TenLop, HS.HoTen;
END;
exec sp_BangDiemTatCaHocSinh_TheoMon_Ky 'MH003','HK1'
alter PROCEDURE ThongKeXepLoaiTheoGV
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
    FROM 
        BaoCaoHocTap bc
    JOIN 
        HocKy hk ON bc.MaHK = hk.MaHK
    JOIN 
        HocSinh hs ON bc.MaHS = hs.MaHS
    JOIN 
        LopHoc lh ON hs.MaLop = lh.MaLop
	join GiaoVien gv on gv.MaGV= lh.MaGVCN
    WHERE 
        lh.MaGVCN = @MaGV
    GROUP BY 
        hk.NamHoc, hk.TenHK,gv.HoTen,lh.TenLop
    ORDER BY 
        hk.NamHoc, hk.TenHK;
END
exec ThongKeXepLoaiTheoGV 'GV001'
alter PROCEDURE ThongKeXepLoaiTheoMonHocVaGiaoVien
    @MaMH NVARCHAR(10),  -- Mã môn học
    @MaGV NVARCHAR(10)   -- Mã giáo viên
AS
BEGIN
    SELECT 
        hk.NamHoc,
		mh.TenMH,
        hk.TenHK,
        COUNT(CASE WHEN d.DiemTB  >= 8.0 THEN 1 END) AS SoLuongHSGioi,
        COUNT(CASE WHEN d.DiemTB >= 6.5 AND d.DiemTB  < 8.0 THEN 1 END) AS SoLuongHSKha,
        COUNT(CASE WHEN d.DiemTB  >= 5.0 AND d.DiemTB  < 6.5 THEN 1 END) AS SoLuongHSTB,
        COUNT(CASE WHEN d.DiemTB < 5.0 THEN 1 END) AS SoLuongHSYeu
    FROM 
        Diem d
	Join MonHoc mh on d.MaMH=mh.MaMH
    JOIN 
        HocKy hk ON mh.MaHK = hk.MaHK
    JOIN 
        HocSinh hs ON d.MaHS = hs.MaHS
    JOIN 
        LopHoc lh ON hs.MaLop = lh.MaLop
    WHERE 
        d.MaMH = @MaMH      
        AND lh.MaGVCN = @MaGV  
    GROUP BY 
        hk.NamHoc, hk.TenHK,mh.TenMH
    ORDER BY 
        hk.NamHoc, hk.TenHK,mh.TenMH
END
exec ThongKeXepLoaiTheoMonHocVaGiaoVien 'MH001', 'GV001'