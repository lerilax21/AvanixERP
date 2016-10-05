using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UI
{
    public class CheckLogin
    {
        static String type { get; set; }
        static String isLogin { get; set; }
        public CheckLogin()
        {
            try
            {
               if( HttpContext.Current.Session["type"].ToString() != null && HttpContext.Current.Session["isLogin"].ToString() != null)
                {
                    type = HttpContext.Current.Session["type"].ToString();
                    isLogin =   HttpContext.Current.Session["isLogin"].ToString();
                }

            }
            catch
            {
                type = String.Empty;
                isLogin = String.Empty;
            }
            
            
        }
        public String checkLoggedInType()
        {
            if (String.Compare(isLogin, "Y") == 0)
            {

                return type;
            }
            return String.Empty;
        }
    }

}