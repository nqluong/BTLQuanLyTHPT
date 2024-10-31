create procedure sp_GetGiaoVien
	@maTK nvarchar(10)
as 
begin 
	select gv.MaGV, gv.HoTen, gv.NgaySinh, gv.DiaChi, gv.GioiTinh, gv.MaTK, gv.MaMH, l.TenLop
	from GIAOVIEN gv join LopHoc l on gv.MaGV=l.MaGVCN
	where gv.MaTK = @maTK
end
drop procedure sp_GetGiaoVien

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


CREATE PROCEDURE sp_GetMonHoc
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
