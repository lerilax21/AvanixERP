using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace BL.Common
{
    public class CommonVariable
    {

        #region Constants

        public static double PI = 3.14;

        public static string constADMIN = "ADMIN";

        public static string constSave = "Save";
        public static string constUpdate = "Update";

        public static ListItem ddlFirstSelect = new ListItem { Value = "0", Text = "Select" };


    #endregion

    #region ENUM Variables

    /// <summary>
    /// BillHeadType is used to define the Type of BillHead in BillHeads object
    /// </summary>
    public enum UserRoles
        {
            None = 0,
            OrdinaryUser = 1,
            PoweredUser = 2,
            AdminUser = 3,
            SuperAdmin = 4,
            SystemAdmin = 5
        };

        public enum PrimaryKey
        {
            //a="A",
        }
        public enum Status
        {
            Active = 0,
            Inavctive = 1
        };

        #endregion

    }
}
