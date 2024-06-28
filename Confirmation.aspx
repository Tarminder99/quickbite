<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Confirmation.aspx.cs" Inherits="GroupProject.Confirmation" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h1 class="text-center">Your Order has been placed successfully</h1>
                <div class="text-center">
                     <form id="form1" runat="server">
                    <asp:Button ID="contShop" runat="server" Text="Place another Order" CssClass="btn btn-primary" OnClick="contShop_Click" />
                         </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
