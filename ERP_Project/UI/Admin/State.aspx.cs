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

    public partial class State : System.Web.UI.Page
    {
        StateService stateservice = new StateService(new StateRepository(new DL.SystemDataUnit(new Entities())));
        CountryService countryservice = new CountryService(new ContryRepository(new DL.SystemDataUnit(new Entities())));
        tbl_State_Master stateNew = new tbl_State_Master();
        int countryId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

            //CheckLogin cL = new CheckLogin();
            //if (cL.checkLoggedInType() == "ADMIN")
            //{
            //    Response.Redirect("../Login.aspx");
            //}


            if (!IsPostBack)
            {
                Initialize();
                BindddlCountry();
                BindStates(countryId);

                if (Request.QueryString["id"] != null)
                {
                    int stateId = Convert.ToInt32(Request.QueryString["id"]);
                    btnSaveState.Text = CommonVariable.constUpdate;
                    stateNew = stateservice.GetStateByID(stateId);
                    txtStateName.Text = stateNew.state_name;
                    ddlCountryName.SelectedValue = stateNew.tbl_Country_Master.cntry_Id.ToString();
                    gridStateTable.Visible = false;

                }
                else if (Request.QueryString["countryId"] != null)
                {
                    countryId = Convert.ToInt32(Request.QueryString["countryId"]);

                }

            }

        }

        protected void btnSaveState_Click(object sender, EventArgs e)
        {
            if ((ddlCountryName.SelectedItem.Value != "0") && (!String.IsNullOrEmpty(txtStateName.Text.Trim()) && (btnSaveState.Text == CommonVariable.constSave)))
            {
                int a = Convert.ToInt32(ddlCountryName.SelectedItem.Value);
                stateNew.cntry_Id = a;
                stateNew.state_name = txtStateName.Text.Trim();
                stateservice.AddState(stateNew);
                BindStates(countryId);
            }
            else if (btnSaveState.Text == CommonVariable.constUpdate)
            {
                stateNew = stateservice.GetStateByID(Convert.ToInt32(Request.QueryString["id"]));
                stateNew.state_name = txtStateName.Text;
                stateNew.cntry_Id = Convert.ToInt32(ddlCountryName.SelectedValue);
                stateservice.UpdateState(stateNew);
                BindStates(countryId);
                gridStateTable.Visible = true;
            }
            Clear();
        }

        protected void gridStateTable_PageIndexChanging1(object sender, GridViewPageEventArgs e)
        {
            gridStateTable.PageIndex = e.NewPageIndex;
            BindStates();
        }

        protected void ddlCountryName_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindStates(Convert.ToInt32(ddlCountryName.SelectedValue));
        }

        protected void lnkDeleteState_Click1(object sender, EventArgs e)
        {
            int stateId = Convert.ToInt32(((LinkButton)sender).CommandArgument);
            stateservice.DeleteState(stateId);
            BindStates();
        }

        void BindStates(int countryId = 0)
        {
            int i = 0;
            if (countryId == 0)
            {
                gridStateTable.DataSource = stateservice.GetStateForGrid();
                gridStateTable.DataBind();
            }
            else
            {
                gridStateTable.DataSource = stateservice.GetStateForGrid(countryId);
                gridStateTable.DataBind();
            }
        }

        void BindddlCountry()
        {
            ddlCountryName.DataSource = countryservice.GetAllCountries();
            ddlCountryName.DataTextField = "cntry_name";
            ddlCountryName.DataValueField = "cntry_Id";
            ddlCountryName.DataBind();
            ddlCountryName.Items.Insert(0, CommonVariable.ddlFirstSelect);
            //BindStates();
        }

        void Clear()
        {
            TextBox2.Text = "";
            txtStateName.Text = "";
            BindddlCountry();
        }

        void Initialize()
        {
            btnSaveState.Text = CommonVariable.constSave;
        }
    }
}