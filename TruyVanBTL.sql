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
    SELECT MaMH, TenMH FROM MonHoc
	where MaGV = @MaGV
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

CREATE alter PROCEDURE sp_DangKyTaiKhoan
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
        SET @Result = 'Đăng ký không thành công. Vui lòng thử lại.'
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