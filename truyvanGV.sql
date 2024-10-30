CREATE PROCEDURE sp_GetGiaoVien AS
BEGIN
	select MaGV, HoTen, gv.MaTK, NgaySinh, DiaChi, GioiTinh
	from GIAOVIEN gv 
END


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
        UPDATE MonHoc SET MaGV = NULL WHERE MaGV = @maGV;
        UPDATE BaoCaoHocTap SET MaGV = NULL WHERE MaGV = @maGV;

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



CREATE PROCEDURE sp_AddGiaoVien
    @MaGV NVARCHAR(50),
    @HoTen NVARCHAR(100),
    @NgaySinh DATE,
    @DiaChi NVARCHAR(200),
    @GioiTinh BIT
AS
BEGIN
    INSERT INTO GiaoVien (MaGV, HoTen, NgaySinh, DiaChi, GioiTinh)
    VALUES (@MaGV, @HoTen, @NgaySinh, @DiaChi, @GioiTinh)
END


CREATE PROCEDURE sp_UpdateGiaoVien
    @MaGV NVARCHAR(50),
    @HoTen NVARCHAR(100),
    @NgaySinh DATE,
    @DiaChi NVARCHAR(255),
    @GioiTinh BIT,
    @MaTK NVARCHAR(50)
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
            MaTK = @MaTK
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
    @HoTen NVARCHAR(100),
    @NgaySinh DATE,
    @DiaChi NVARCHAR(255),
    @GioiTinh BIT,
    @MaTK NVARCHAR(50)
AS
BEGIN
    SELECT COUNT(*)
    FROM GiaoVien
    WHERE MaGV <> @MaGV
      AND HoTen = @HoTen
      AND NgaySinh = @NgaySinh
      AND DiaChi = @DiaChi
      AND GioiTinh = @GioiTinh
      AND MaTK = @MaTK;
END
