using System;
using System.Collections.Generic;
using System.Text;

namespace DTO
{
    public class LoginResult
    {
        public string maTk { get; set; }
        public string tenTk { get; set; }

        public LoginResult(string maTk, string tenTk)
        {
            this.maTk = maTk;
            this.tenTk = tenTk;
        }
    }
}
