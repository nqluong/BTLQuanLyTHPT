using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using DTO;
namespace DAL
{
    public class TaiKhoanDAL
    {
        private DbConnect db = new DbConnect();
        public LoginResult CheckloginDTO(TaiKhoan taikhoan)
        {
            LoginResult loginResult = null;

            using (SqlCommand sqlCommand = new SqlCommand("sp_Check_login", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;

                
                sqlCommand.Parameters.AddWithValue("@user", taikhoan.tenTk);
                sqlCommand.Parameters.AddWithValue("@password", taikhoan.matkhauTk);

                try
                {
                    // Mở kết nối
                    db.connection.Open();

                    // Thực thi lệnh
                    using (SqlDataReader reader = sqlCommand.ExecuteReader())
                    {
                        if (reader.HasRows && reader.Read())
                        {
                            string maTk = reader.GetString(0);
                            string tenTk = reader.GetString(1);

                            loginResult = new LoginResult(maTk, tenTk);
                        }
                    }
                }
                finally
                {
                    // Đảm bảo đóng kết nối trong mọi trường hợp
                    if (db.connection.State == ConnectionState.Open)
                    {
                        db.connection.Close();
                    }
                }
            }

            return loginResult;

        } 
        
    }
}
