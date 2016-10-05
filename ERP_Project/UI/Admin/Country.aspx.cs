using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DL.Model;
using DL.Repositories;
using BL;
using BL.Common;

namespace UI.Admin
{
    public partial class Country : System.Web.UI.Page
    {
        CountryService countryservice = new CountryService(new ContryRepository(new DL.SystemDataUnit(new Entities())));

        protected void Page_Load(object sender, EventArgs e)
        {
            CheckLogin cL = new CheckLogin();
            if (cL.checkLoggedInType() != CommonVariable.constADMIN)
            {
                Response.Redirect("../Login.aspx");
            }

            if (!IsPostBack)
            {
                tbl_Country_Master newCountry;
                int countryId;
                if (Request.QueryString["id"] != null)
                {
                    newCountry = new tbl_Country_Master();

                    countryId = Convert.ToInt32(Request.QueryString["id"]);
                    btnCntrySave.Text = CommonVariable.constUpdate;
                    newCountry = countryservice.GetCountryByID(countryId);
                    txtCountryName.Text = newCountry.cntry_name;
                    gridCountryTable.Visible = false; ;
                }

                BindCountries();

            }
        }

        protected void btnCntrySave_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtCountryName.Text) && btnCntrySave.Text == CommonVariable.constSave)
            {
                tbl_Country_Master newCountry = new tbl_Country_Master();

                newCountry.cntry_name = txtCountryName.Text;
                newCountry.CreatedBy = Convert.ToInt32(Session["uid"]);
                countryservice.AddCountry(newCountry);
                BindCountries();
            }
            else if (btnCntrySave.Text == CommonVariable.constUpdate)
            {
                tbl_Country_Master newCountry = countryservice.GetCountryByID(Convert.ToInt32(Request.QueryString["id"]));
                newCountry.cntry_name = txtCountryName.Text;
                countryservice.UpdateCountry(newCountry);
                BindCountries();
                btnCntrySave.Text = "Save";
                gridCountryTable.Visible = true;
            }
            ClearInputFields();
        }

        protected void gridCountryTable_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridCountryTable.PageIndex = e.NewPageIndex;
            BindCountries();
        }

        protected void lnkDeleteContry_Click(object sender, EventArgs e)
        {
            int countryId = Convert.ToInt32(((LinkButton)sender).CommandArgument);
            countryservice.DeleteCountry(countryId);
            BindCountries();
        }

        void BindCountries()
        {
            int i = 0;
            var lstgrid = countryservice.GetCountryForGrid();
            gridCountryTable.DataSource = lstgrid.ToList();
            gridCountryTable.DataBind();
        }
        void ClearInputFields()
        {
            txtCountryName.Text = String.Empty;
        }
    }
}