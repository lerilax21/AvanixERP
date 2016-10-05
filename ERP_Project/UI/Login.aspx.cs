using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using DL.Model;
using DL.Repositories;
using BL;

namespace UI
{
    public partial class Login : System.Web.UI.Page
    {
        UserAuthService authservice = new UserAuthService(new UserAuthRepository(new DL.SystemDataUnit(new Entities())));
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtUname.Text) && !String.IsNullOrEmpty(txtPass.Text))
            {
                int logStatus=authservice.AuthenticateUser(txtUname.Text, FormsAuthentication.HashPasswordForStoringInConfigFile(txtPass.Text, "SHA1"));
                if (logStatus >0)
                {//success login
                    FormsAuthenticationTicket authTicket = new FormsAuthenticationTicket(1, //version
                                                             txtUname.Text, // user name
                                                             DateTime.Now,             //creation
                                                             DateTime.Now.AddMinutes(101), //Expiration (you can set it to 1 month
                                                             true,
                                                             ""); // additional informations

                    HttpCookie test = new HttpCookie("val", FormsAuthentication.Encrypt(authTicket));
                    test.HttpOnly = true;
                    test.Expires = DateTime.Now.AddMinutes(100);
                    Response.AppendCookie(test);

                    Session["isLogin"] = "Y";
                    Session["type"] = "ADMIN";
                    Session["uid"] = logStatus;

                    Response.Redirect("Admin/Country.aspx");
                }
            }
        }
    }
}