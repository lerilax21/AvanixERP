using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DL.Model;
using DL.Repositories;
using BL;

namespace UI
{
    public partial class testForm : System.Web.UI.Page
    {
        
        CountryService countryservice=new CountryService(new ContryRepository(new DL.SystemDataUnit(new Entities())));

        protected void Page_Load(object sender, EventArgs e)
        {
            tbl_Country_Master ob = new tbl_Country_Master();
            ob.cntry_name = "test 1";
            countryservice.AddCountry(ob);
            ob.cntry_name = "test2";
            countryservice.AddCountry(ob);
        }
    }
}