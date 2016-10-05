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
    public partial class Register : System.Web.UI.Page
    {
        UserAuthService authservice = new UserAuthService(new UserAuthRepository(new DL.SystemDataUnit(new Entities())));
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            tbl_User newUser = new tbl_User();
            newUser.user_name = txtUname.Text;
            newUser.pass = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPass.Text, "SHA1");

            authservice.AddUser(newUser);
        }
    }
}