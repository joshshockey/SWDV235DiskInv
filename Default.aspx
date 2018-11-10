<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ MasterType VirtualPath="~/Site.Master" %>


<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                CssClass="text-danger summary"
                HeaderText="Please enter required fields." />

            <%-- contact info --%>            
              <h3>Borrower Information</h3>
                <div class="form-group">
                    <label class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <!-- validator(s) -->
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtFirstName" CssClass="text-danger" ForeColor="Red">* Required</asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <!-- validator(s) -->
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtLastName" CssClass="text-danger" ForeColor="Red">* Required</asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Email address</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" 
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <!-- validator(s) -->
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                             ControlToValidate="txtEmail" CssClass="text-danger" ForeColor="Red">* Required</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                             CssClass="text-danger" ControlToValidate="txtEmail" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Must be a valid email address</asp:RegularExpressionValidator>
                    </div>
           
             <%-- Submit and Clear buttons --%>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                             CssClass="btn btn-primary" OnClick="btnSubmit_Click"  />
                        <asp:Button ID="btnClear" runat="server" Text="Clear"
                             CssClass="btn btn-primary" OnClick="btnClear_Click" CausesValidation="false" style="margin-left: 10px"  />
                    </div>
                </div> 

                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-11">
                        <asp:Label ID="lblMessage" runat="server" CssClass="text-info"></asp:Label>
                    </div>
                </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="headPlaceholder">
    </asp:Content>

