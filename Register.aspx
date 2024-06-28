<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Register.aspx.cs" Inherits="GroupProject.Register" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-4 ">
                <div class="card bg-light">
                    <h2 class="card-header text-center">Register</h2>
                    <div class="card-body mx-auto">
                        <form id="loginForm" runat="server">
                            <div class="mb-3">
                                <label for="txtEmail" class="form-label">Email:</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3">
                                <label for="txtPassword" class="form-label">Password:</label>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Password is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:Label ID="error" runat="server" CssClass="text-danger"></asp:Label>
                            </div>
                            <div class="d-grid gap-2">
                                <asp:Button ID="btnRegister" runat="server" Text="Register" CausesValidation="true" CssClass="btn btn-primary" OnClick="btnRegister_Click" />
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>  
    </div>
</asp:Content>
