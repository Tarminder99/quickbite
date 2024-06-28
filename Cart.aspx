<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Cart.aspx.cs" Inherits="GroupProject.Cart" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <form id="form1" runat="server">
        <header class="text-center mt-4">
            <h1>Your Order</h1>
            <asp:Label ID="MessageLabel" runat="server" />
        </header>

        <div class="container mt-4">
            <asp:Repeater ID="CartRepeater" runat="server">
                <ItemTemplate>
                    <div class="card mb-3">
                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("Menu.Title") %></h5>
                            <p class="card-text">Quantity: <%# Eval("Quantity") %></p>
                            <p class="card-text">Price: $<%# Eval("Menu.Price") %></p>
                            <asp:Button ID="btnRemove" runat="server" Text="Remove" CssClass="btn btn-danger" OnClick="btnRemove_Click" CommandArgument='<%# Eval("Menu.Id") %>' />
                        </div>
                    </div>
                </ItemTemplate>

            </asp:Repeater>
        </div>

        <div class="container text-center">
            <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" OnClick="btnCheckOut_Click" CssClass="btn btn-dark" />
        </div>
    </form>
</asp:Content>
