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

-- Kết thúc phương thức quản lý học sinh, dưới đây là phương thức gốc

CREATE PROCEDURE sp_GetThoiKhoaBieu
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
END;

exec sp_GetThoiKhoaBieu

CREATE PROCEDURE sp_GetMonHoc
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


CREATE PROCEDURE sp_SearchThoiKhoaBieu
    @Thu NVARCHAR(50) = NULL,
    @TietHoc INT = NULL,
    @TenGiaoVien NVARCHAR(50) = NULL,
    @MaLop NVARCHAR(10) = NULL,
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
        (@MaMH IS NULL OR mh.MaMH = @MaMH) AND
        (@NgayDay IS NULL OR tkb.NgayBatDau <= @NgayDay AND tkb.NgayKetThuc >= @NgayDay)
END


CREATE PROCEDURE Check_login
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

