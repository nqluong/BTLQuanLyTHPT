using DAL;
using System;
using System.Collections.Generic;
using System.Text;
using DTO;
using System.Text.RegularExpressions;
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

        public string GetPasswordByEmail(string email)
        {
            if(string.IsNullOrWhiteSpace(email))
            {
                return "Vui long nhap email cua ban";
            }
            if (!IsValidEmail(email))
            {
                return "Email không hợp lệ. Vui lòng nhập đúng định dạng email.";
            }
            return taiKhoanDAL.GetPasswordByEmail(email);
        }
        private bool IsValidEmail(string email)
        {
          
            string emailPattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
            return Regex.IsMatch(email, emailPattern);
        }
    }


}
