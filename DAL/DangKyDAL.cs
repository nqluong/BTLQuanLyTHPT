using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace DAL
{
    public class DangKyDAL
    {
        DbConnect db = new DbConnect();

        public string DangKyTaiKhoan(TaiKhoanDangKy taiKhoan)
        {
            string result;
            if (UsernameExists(taiKhoan.tenTk))
            {
                return "Tài khoản đã tồn tại";
            }
            using (SqlCommand sqlCommand = new SqlCommand("sp_DangKyTaiKhoan", db.connection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@Email", taiKhoan.emailTk);
                sqlCommand.Parameters.AddWithValue("@TenTk", taiKhoan.tenTk);
                sqlCommand.Parameters.AddWithValue("@MatKhau", taiKhoan.matkhauTk); 
                sqlCommand.Parameters.AddWithValue("@SoDT", taiKhoan.soDT);

                SqlParameter resultPara = new SqlParameter("@result", SqlDbType.NVarChar, 255)
                {
                    Direction = ParameterDirection.Output
                };
                sqlCommand.Parameters.Add(resultPara);
                try
                {
                    if(db.connection.State == ConnectionState.Closed)
                    {
                        db.connection.Open();
                    }
                    sqlCommand.ExecuteNonQuery();
                    result = resultPara.Value.ToString();
                }
                catch(Exception ex) 
                {
                        throw new Exception("Error:" + ex.Message);
                }
                finally
                {
                    if (db.connection.State == ConnectionState.Closed)
                    {
                        db.connection.Close();
                    }
                }

            }
            return result;
        }

        public bool UsernameExists(string username)
        {
                using (SqlCommand sqlCommand = new SqlCommand("sp_CheckUsername", db.connection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.AddWithValue("@Username", username);

                    SqlParameter existsParam = new SqlParameter("@Exists", SqlDbType.Bit)
                    {
                        Direction = ParameterDirection.Output
                    };
                sqlCommand.Parameters.Add(existsParam);
                try
                {
                    if (db.connection.State == ConnectionState.Closed)
                    {
                        db.connection.Open();
                    }
                    sqlCommand.ExecuteNonQuery();
                    return (bool)existsParam.Value;
                }
                catch (Exception ex)
                {
                    
                    throw new Exception("Error checking username existence: " + ex.Message);
                }
                finally
                {
                    if (db.connection.State == ConnectionState.Open)
                    {
                        db.connection.Close();
                    }
                }
            }
            
        }
    }
}
