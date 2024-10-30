using DTO;
using DAL;
using System;
using System.Collections.Generic;
using System.Text;

namespace BUS
{
    public class DangKyBus
    {
        DangKyDAL dangKyDAL = new DangKyDAL(); 
        public string DangKyTK(TaiKhoanDangKy taiKhoan)
        {
            if(string.IsNullOrEmpty(taiKhoan.emailTk))
            {
                return "Email không được để trống";

            }
            if(string.IsNullOrEmpty(taiKhoan.tenTk))
            {
                return "Tên tài khoản không được để trống";
            }
            if(string.IsNullOrEmpty(taiKhoan.matkhauTk))
            {
                return "Mật khẩu không được để trống";
            }
            if(string.IsNullOrEmpty(taiKhoan.soDT))
            {
                return "Số điện thoại không được để trống";
            }
            return dangKyDAL.DangKyTaiKhoan(taiKhoan);
        }
    }
}
