<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="UI.Admin.Company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="dist/js/typeahead.jquery.min.js"></script>
    <div class="page-content">
        <form class="form-horizontal" role="form" runat="server" enctype="multipart/form-data" method="post">

            <div class="page-header">
                <h1>Company
								<small>
                                    <i class="ace-icon fa fa-angle-double-right"></i>
                                    Add/Edit
                                </small>
                </h1>
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <!-- PAGE CONTENT BEGINS -->
                    <div class="col-xs-12 col-sm-6 col-md-7">

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="form-field-1">Company Name </label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="txtCompanyName" runat="server" placeholder="Company Full Name" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Display Name </label>

                            <div class="col-sm-9">
                                <asp:TextBox ID="txtDisplayName" runat="server" placeholder="Company Shot Name" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="form-field-1">Company Code </label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="txtCompanyCode" runat="server" placeholder="Company Code" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="form-field-1">Start Date </label>
                            <div class="col-sm-9">
                                <div class="input-group">
                                    <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control date-picker" placeholder="Start Date" data-date-format="dd-mm-yyyy"></asp:TextBox>
                                    <span class="input-group-addon">
                                        <i class="fa fa-calendar bigger-110"></i>
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">UID </label>

                            <div class="col-sm-9">
                                <asp:TextBox ID="txtAutoId" runat="server" placeholder="<Auto Generete>" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-5">

                        <div class="center">
                            <span class="profile-picture">
                                <img id="avatar" class="editable img-responsive" alt="Alex's Avatar" src="dist/avatars/profile-pic.jpg" />

                            </span>

                            <div class="space-4"></div>

                            <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                <div class="inline position-relative">
                                    <a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
                                        <%--<i class="ace-icon fa fa-circle light-green"></i>--%>
                                        &nbsp;
										<span class="white">Choose company logo</span>
                                    </a>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>

            <hr />

            <div class="row">
                <div class="col-xs-12">
                    <asp:Panel ID="panelTab" runat="server">
                        <div class="tabbable">
                            <ul class="nav nav-tabs padding-12 tab-color-blue background-blue" id="myTab4">
                                <li class="active">
                                    <a data-toggle="tab" href="#home4">General Information</a>
                                </li>

                                <li>
                                    <a data-toggle="tab" href="#profile4">Contact</a>
                                </li>

                                <li>
                                    <a data-toggle="tab" href="#dropdown14">Transaction Log</a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                <div id="home4" class="tab-pane in active">
                                    <div class="row">
                                        <div class="col-xs-12 col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Base Currency </label>

                                                <div class="col-sm-9">
                                                    <asp:DropDownList ID="ddlCurrency" runat="server" placeholder="Currency List" class="form-control"></asp:DropDownList>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="col-xs-12 col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Mobile No </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtMob" runat="server" placeholder="Mobile Number" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Email ID </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Official Email Id" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">TIN No </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtTIN" runat="server" placeholder="Taxpayer Identification Number" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">CST No </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtCST" runat="server" placeholder="Central Sales Tax Number" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">GST/HST </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtGST" runat="server" placeholder="Goods and Services Tax Number" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">PAN No </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtPAN" runat="server" placeholder="Permanent Account Number" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">TAN No </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtTAN" runat="server" placeholder="Tax Deduction and Collection A/C No" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <%--<div class="row">
                                        <div class="col-xs-12">
                                            <div class="clearfix form-actions">
                                                <div class="col-md-offset-3 col-md-9">
                                                    <asp:Button ID="btnTabSave1" runat="server" Text="Update" CssClass="btn btn-info" OnClick="btnTabSave_Click" />
                                                    &nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
                                                Reset</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </div>

                                <div id="profile4" class="tab-pane">
                                    <div class="row">

                                        <div class="col-xs-12 col-md-6">

                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right">Contact Person </label>

                                                <div class="col-sm-9">
                                                    <div class="pos-rel">
                                                        <input class="typeahead scrollable" type="text" placeholder="States of USA" runat="server" />
                                                        <asp:TextBox ID="txtCntpName" runat="server" CssClass="scrollable form-control" placeholder="Name of Contact Person" data-provide="typeahead"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-xs-12 col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Designation </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtCntpDesig" runat="server" placeholder="Designation" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Mobile No </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtCntpMob" runat="server" placeholder="Primary Mobile Number" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Email Id </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtCntpEmail" runat="server" placeholder="Primary Email Id" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Phone No </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtCntpPhone" runat="server" placeholder="Telephone Number" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Fax No </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtCntpFax" runat="server" placeholder="Fax Number" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-12 col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Address 1 </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtCntpAddr1" runat="server" placeholder="First Address" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="col-xs-12 col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Address 2 </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtCntpAddr2" runat="server" placeholder="Second Address" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">City </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtCntpCity" runat="server" placeholder="Your City Name" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">ZIP/PIN </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtCntpPIN" runat="server" placeholder="ZIP or PIN Code" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>

                                        </div>


                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Country </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Tax Deduction and Collection A/C No" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">State </label>

                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtCntpState" runat="server" placeholder="Your State" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <%--<div class="row">
                                        <div class="col-xs-12">
                                            <div class="clearfix form-actions">
                                                <div class="col-md-offset-3 col-md-9">
                                                    <asp:Button ID="btnTabSave2" runat="server" Text="Update" CssClass="btn btn-info" OnClick="btnTabSave_Click" />
                                                    &nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
                                                Reset</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </div>

                                <div id="dropdown14" class="tab-pane">
                                    <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade.</p>

                                    <%--<div class="row">
                                        <div class="col-xs-12">
                                            <div class="clearfix form-actions">
                                                <div class="col-md-offset-3 col-md-9">
                                                    <asp:Button ID="btnTabSave3" runat="server" Text="Update" CssClass="btn btn-info" OnClick="btnTabSave_Click" />
                                                    &nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
                                                Reset</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>


                </div>
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <div class="clearfix form-actions">
                        <div class="col-md-offset-3 col-md-9">
                            <asp:Button ID="btnCompanySave" runat="server" Text="Save" CssClass="btn btn-info" OnClick="btnCompanySave_Click" />
                            &nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
                                                Reset</button>
                        </div>
                    </div>
                </div>
            </div>

            <hr />

            <div class="row">
                <div class="col-xs-12">
                    <asp:GridView ID="gridViewCompany" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="cmpny_name" />
                            <asp:BoundField DataField="status" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>

        </form>
    </div>
    <script type="text/javascript">
        jQuery(function ($) {

            $.fn.editable.defaults.mode = 'inline';
            $.fn.editableform.loading = "<div class='editableform-loading'><i class='ace-icon fa fa-spinner fa-spin fa-2x light-blue'></i></div>";
            $.fn.editableform.buttons = '<button type="submit" class="btn btn-info editable-submit"><i class="ace-icon fa fa-check"></i></button>' +
                                        '<button type="button" class="btn editable-cancel"><i class="ace-icon fa fa-times"></i></button>';
            try {
                try {
                    document.createElement('IMG').appendChild(document.createElement('B'));
                } catch (e) {
                    Image.prototype.appendChild = function (el) { }
                }

                var last_gritter
                $('#avatar').editable({
                    type: 'image',
                    name: 'avatar',
                    value: null,
                    image: {
                        //specify ace file input plugin's options here
                        btn_choose: 'Change Logo',
                        droppable: true,
                        maxSize: 110000,//~100Kb

                        //and a few extra ones here
                        name: 'avatar',//put the field name here as well, will be used inside the custom plugin
                        on_error: function (error_type) {//on_error function will be called when the selected file has a problem
                            if (last_gritter) $.gritter.remove(last_gritter);
                            if (error_type == 1) {//file format error
                                last_gritter = $.gritter.add({
                                    title: 'File is not an image!',
                                    text: 'Please choose a jpg|gif|png image!',
                                    class_name: 'gritter-error gritter-center'
                                });
                            } else if (error_type == 2) {//file size rror
                                last_gritter = $.gritter.add({
                                    title: 'File too big!',
                                    text: 'Image size should not exceed 100Kb!',
                                    class_name: 'gritter-error gritter-center'
                                });
                            }
                            else {//other error
                            }
                        },
                        on_success: function () {
                            $.gritter.removeAll();
                        }
                    },
                    url: function (params) {
                        // ***UPDATE AVATAR HERE*** //
                        //for a working upload example you can replace the contents of this function with 
                        //examples/profile-avatar-update.js

                        var deferred = new $.Deferred

                        var value = $('#avatar').next().find('input[type=hidden]:eq(0)').val();
                        if (!value || value.length == 0) {
                            deferred.resolve();
                            return deferred.promise();
                        }


                        //dummy upload
                        setTimeout(function () {
                            if ("FileReader" in window) {
                                //for browsers that have a thumbnail of selected image
                                var thumb = $('#avatar').next().find('img').data('thumb');
                                if (thumb) $('#avatar').get(0).src = thumb;
                            }

                            deferred.resolve({ 'status': 'OK' });

                            if (last_gritter) $.gritter.remove(last_gritter);
                            last_gritter = $.gritter.add({
                                title: 'Logo Uploded!',
                                text: 'Press \'Save Button\' for set company logo',
                                class_name: 'gritter-info gritter-center'
                            });

                        }, parseInt(Math.random() * 800 + 800))

                        return deferred.promise();

                        // ***END OF UPDATE AVATAR HERE*** //
                    },
                    success: function (response, newValue) {

                    }
                })
            } catch (e) { }



            var substringMatcher = function (strs) {
                return function findMatches(q, cb) {
                    var matches, substringRegex;

                    // an array that will be populated with substring matches
                    matches = [];

                    // regex used to determine if a string contains the substring `q`
                    substrRegex = new RegExp(q, 'i');

                    // iterate through the pool of strings and for any string that
                    // contains the substring `q`, add it to the `matches` array
                    $.each(strs, function (i, str) {
                        if (substrRegex.test(str)) {
                            // the typeahead jQuery plugin expects suggestions to a
                            // JavaScript object, refer to typeahead docs for more info
                            matches.push({ value: str });
                        }
                    });

                    cb(matches);
                }
            }

            $('input.typeahead').typeahead({
                hint: true,
                highlight: true,
                minLength: 1,
                source: function (request, response) {
                    $.ajax({
                        url: '<%=ResolveUrl("~/Company.aspx/testMethod") %>',
                    data: "{ 'prefix': '" + request + "'}",
                    dataType: "json",
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    success: function (data) {
                        items = [];
                        map = {};
                        $.each(data.d, function (i, item) {
                            var id = item.split('-')[1];
                            var name = item.split('-')[0];
                            map[name] = { id: id, name: name };
                            items.push(name);
                        });
                        response(items);
                       // $(".dropdown-menu").css("height", "auto");
                    },
                    error: function (response) {
                        alert(response.responseText);
                    },
                    failure: function (response) {
                        alert(response.responseText);
                    }
                });
                },
                limit: 10
            });

        });

    </script>
</asp:Content>
