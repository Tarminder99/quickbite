<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Checkout.aspx.cs" Inherits="GroupProject.Checkout" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <form id="form1" runat="server">
        <div class="container mt-4">
            <div class="row justify-content-center mt-4">
                <div class="col-md-6">
                    <h3 class="text-center">Please enter delivery address</h3>
                    <hr />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" />

                    <div class="mb-3">
                        <asp:Label class="form-label" ID="Label1" runat="server" Text="First Name:" AssociatedControlID="TextBox1"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First Name is required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <asp:Label class="form-label" ID="Label2" runat="server" Text="Last Name:" AssociatedControlID="TextBox2"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last Name is required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <asp:Label class="form-label" ID="Label3" runat="server" Text="Email ID:" AssociatedControlID="TextBox6"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="Email ID is required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <asp:Label class="form-label" ID="Label5" runat="server" Text="Phone Number:" AssociatedControlID="TextBox4"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Phone Number is required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <asp:Label class="form-label" ID="Label6" runat="server" Text="Address:" AssociatedControlID="TextBox5"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Address is required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <asp:Label class="form-label" ID="Label7" runat="server" Text="City:" AssociatedControlID="TextBox7"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="City is required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <asp:Label class="form-label" ID="Label8" runat="server" Text="State:" AssociatedControlID="DropDownList1"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                            <asp:ListItem>ON</asp:ListItem>
                            <asp:ListItem>AB</asp:ListItem>
                            <asp:ListItem>QB</asp:ListItem>
                            <asp:ListItem>BC</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="mb-3">
                        <asp:Label class="form-label" ID="Label9" runat="server" Text="Zip Code:" AssociatedControlID="TextBox9"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox9" ErrorMessage="Zip Code is required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3 text-center">
                        <asp:Button ID="Button1" runat="server" Text="Place Order" CssClass="btn btn-primary" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
