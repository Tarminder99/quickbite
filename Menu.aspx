<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="GroupProject.Menu" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <form runat="server" class="container mt-4 py-5 ">
        <div class="row">
            <div class="col-md-6">
                <h3>Select Menu</h3>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select mb-3" DataSourceID="dataSource" DataTextField="category" DataValueField="category_id" AutoPostBack="True"></asp:DropDownList>
                <asp:SqlDataSource ID="dataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </div>
        </div>

        <div class="row mt-4">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="data" RepeatColumns="3" ItemStyle-CssClass="col-sm-4 mb-4" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                <ItemTemplate>
                    <div class="card h-100 text-center">
                        <img src='<%# Eval("Image") %>' class="card-img-top mx-auto mt-3" alt='<%# Eval("Title") %>' style="max-width: 50%; max-height: 200px;">
                        <div class="card-body">
                            <h5 class="card-title">
                                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' /></h5>
                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                            <br />
                            <strong class="text-primary">$
                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                            </strong>
                            <div class="input-group mt-3 justify-content-center">
                                <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control" placeholder="Quantity" aria-label="Quantity" aria-describedby="button-addon2"></asp:TextBox>
                                <asp:Button ID="btnAdd" runat="server" Text="Place Order"
                                    OnClick="DataList1_SelectedIndexChanged" CssClass="btn btn-primary" />
                                <br />
                                <asp:Label ID="MessageLabel" runat="server" />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>

        <asp:SqlDataSource ID="data" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [Id], [Description], [Image], [Price], [category_id] FROM [Menu] WHERE ([category_id] = @category_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="category_id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
