alter PROCEDURE sp_SearchLop
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
alter PROCEDURE GetLopHoc
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
GetLopHoc 'GV001'
sp_SearchLop null,'L003',null,'GV001'
ALTER PROCEDURE ThongKeXepLoaiTheoGV
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
ThongKeXepLoaiTheoGV 'GV001'
ALTER PROCEDURE ThongKeXepLoaiTheoMonHocVaGiaoVien
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
        hk.NamHoc, hk.TenHK, mh.TenMH,lh.TenLop
    ORDER BY 
        hk.NamHoc, hk.TenHK, mh.TenMH
END 
exec ThongKeXepLoaiTheoMonHocVaGiaoVien 'MH002', 'GV001'
