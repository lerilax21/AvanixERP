<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="Country.aspx.cs" Inherits="UI.Admin.Country" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <form class="form-horizontal" role="form" runat="server">
            <div class="page-header">
                <h1>Country
								<small>
                                    <i class="ace-icon fa fa-angle-double-right"></i>
                                    Add/Edit
                                </small>
                </h1>
            </div>
            <!-- /.page-header -->

            <div class="row">
                <div class="col-xs-12">
                    <!-- PAGE CONTENT BEGINS -->

                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">Country Name </label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="txtCountryName" runat="server" placeholder="Country Name" CssClass="col-xs-10 col-sm-6"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">demo </label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Country Name demo" CssClass="col-xs-10 col-sm-6"></asp:TextBox>
                        </div>
                    </div>
                    <div class="clearfix form-actions">
                        <div class="col-md-offset-3 col-md-9">
                            <asp:Button ID="btnCntrySave" runat="server" Text="Save" CssClass="btn btn-info" OnClick="btnCntrySave_Click" />
                            &nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
                                                Reset
                                            </button>
                        </div>
                    </div>

                </div>

            </div>

            <%--<a class="btn btn-xs btn-info">
                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                        </a>--%>

            <div class="row">
                <div class="col-xs-12">

                    <asp:GridView ID="gridCountryTable" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gridCountryTable_PageIndexChanging">
                        <Columns>
                            <asp:BoundField HeaderText="Sno" ReadOnly="True" DataField="sNo">
                                <FooterStyle Width="10px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="countryName" HeaderText="Countries" ReadOnly="True" />
                            <asp:HyperLinkField DataNavigateUrlFields="countryId" DataNavigateUrlFormatString="State.aspx?countryId={0}" DataTextField="noOfState" HeaderText="No of States" />
                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <div class="hidden-sm hidden-xs btn-group">
                                        <%--<a href="google.com" class="btn btn-xs btn-success">
																<i class="ace-icon fa fa-check bigger-120"></i>
															</a>--%>
                                        <asp:HyperLink ID="lnkEditCountry" runat="server" CssClass="btn btn-xs btn-info" NavigateUrl='<%# Eval("countryId", "Country.aspx?id={0}") %>'><i class="ace-icon fa fa-pencil bigger-120"></i></asp:HyperLink>
                                        <%--                                        <asp:LinkButton ID="lnkEditCountry" runat="server" CssClass="btn btn-xs btn-info" OnClick="lnkEditCountry_Click"><i class="ace-icon fa fa-pencil bigger-120"></i></asp:LinkButton>--%>
                                        <%--<a class="btn btn-xs btn-info">
                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                        </a>--%>

                                        <%--<a class="btn btn-xs btn-danger" href="Country.aspx?id"></a>--%>

                                        <%--<asp:HyperLink ID="lnkDeleteContry" runat="server" CssClass="btn btn-xs btn-danger"><i class="ace-icon fa fa-trash-o bigger-120"></i></asp:HyperLink>--%>
                                        <asp:LinkButton ID="lnkDeleteContry" runat="server" CssClass="btn btn-xs btn-danger" CommandArgument='<%# Eval("countryId") %>' OnClick="lnkDeleteContry_Click"><i class="ace-icon fa fa-trash-o bigger-120"></i></asp:LinkButton>
                                        <%--<a class="btn btn-xs btn-warning">
																<i class="ace-icon fa fa-flag bigger-120"></i>
															</a>--%>
                                    </div>

                                    <div class="hidden-md hidden-lg">
                                        <div class="inline pos-rel">
                                            <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                                <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                                            </button>

                                            <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                <%--<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
																			<span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
																		</a>
																	</li>--%>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                        <span class="green">
                                                            <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                        </span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                        <span class="red">
                                                            <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </form>
    </div>
    <button class="btn btn-success" id="bootbox-options">More Options</button>
    <script>
        $("#bootbox-options").on(ace.click_event, function () {
            bootbox.dialog({
                message: "<span class='bigger-110'>I am a custom dialog with smaller buttons</span>",
                buttons:
                {
                    "success":
                     {
                         "label": "<i class='ace-icon fa fa-check'></i> Success!",
                         "className": "btn-sm btn-success",
                         "callback": function () {
                            Example.show("great success");
                         }
                     },
                    "danger":
                    {
                        "label": "Danger!",
                        "className": "btn-sm btn-danger",
                        "callback": function () {
                            //Example.show("uh oh, look out!");
                        }
                    },
                    "click":
                    {
                        "label": "Click ME!",
                        "className": "btn-sm btn-primary",
                        "callback": function () {
                            //Example.show("Primary button");
                        }
                    },
                    "button":
                    {
                        "label": "Just a button...",
                        "className": "btn-sm"
                    }
                }
            });
        });
    </script>

</asp:Content>
