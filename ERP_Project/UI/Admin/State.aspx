<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="State.aspx.cs" Inherits="UI.Admin.State" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-content">
        <form class="form-horizontal" role="form" runat="server">
            <div class="page-header">
                <h1>State
								<small>
                                    <i class="ace-icon fa fa-angle-double-right"></i>
                                    Common form elements and layouts
                                </small>
                </h1>
            </div>
            <!-- /.page-header -->

            <div class="row">
                <div class="col-xs-12">
                    <!-- PAGE CONTENT BEGINS -->

                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">State </label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Status" class="col-xs-10 col-sm-6"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Name </label>

                        <div class="col-sm-9">
                            <asp:TextBox  ID="txtStateName" runat="server" placeholder="State Name" class="col-xs-10 col-sm-6"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">Country </label>

                        <div class="col-sm-9">
                            <asp:DropDownList ID="ddlCountryName" runat="server" placeholder="Country Name" class="col-xs-10 col-sm-6" AutoPostBack="True" OnSelectedIndexChanged="ddlCountryName_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                    </div>



                    <div class="clearfix form-actions">
                        <div class="col-md-offset-3 col-md-9">
                            <asp:Button ID="btnSaveState" runat="server" Text="Save" class="btn btn-info" OnClick="btnSaveState_Click" />
                            &nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
                                                Reset</button>
                        </div>
                    </div>

                </div>

            </div>

            <div class="row">
                <div class="col-xs-12">
 
                    <asp:GridView ID="gridStateTable" runat="server" CssClass="table table-striped table-bordered table-hover" OnPageIndexChanging="gridStateTable_PageIndexChanging1" AllowPaging="True" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="sNo" HeaderText="Sno" />
                            <asp:BoundField DataField="stateName" HeaderText="State Name" />
                            <asp:BoundField DataField="countryName" HeaderText="Country Name" />
                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <%--<asp:HyperLink ID="lnkEditState" runat="server">HyperLink</asp:HyperLink>--%>
                                    <asp:HyperLink ID="lnkEditState" runat="server" CssClass="btn btn-xs btn-info" NavigateUrl='<%# Eval("stateId", "State.aspx?id={0}") %>'><i class="ace-icon fa fa-pencil bigger-120"></i></asp:HyperLink>
                                    &nbsp;<asp:LinkButton ID="lnkDeleteState" runat="server" CssClass="btn btn-xs btn-danger" CommandArgument='<%# Eval("stateId") %>' OnClick="lnkDeleteState_Click1"><i class="ace-icon fa fa-trash-o bigger-120"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerSettings Mode="NextPrevious" NextPageText="Next" PreviousPageText="Previous" />
                        
                     
                    </asp:GridView>

                </div>
            </div>
                    
                <!-- /.span -->
        </form>
    </div>

</asp:Content>
