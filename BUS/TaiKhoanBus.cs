using DAL;
using System;
using System.Collections.Generic;
using System.Text;
using DTO;
namespace BUS
{
    public class TaiKhoanBus
    {
        TaiKhoanDAL taiKhoanDAL = new TaiKhoanDAL();

        public LoginResult Login(TaiKhoan taikhoan)
        {
            
            if (string.IsNullOrWhiteSpace(taikhoan.tenTk) || string.IsNullOrWhiteSpace(taikhoan.matkhauTk))
            {
                throw new ArgumentException("Tên tài khoản và mật khẩu không được để trống.");
            }

            
            return taiKhoanDAL.CheckloginDTO(taikhoan);
        }


    }


}
