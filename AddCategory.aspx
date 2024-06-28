<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AddCategory.aspx.cs" Inherits="GroupProject.AddCategory" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <form id="form1" runat="server">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <h2>Add Category</h2>
                    <hr />
                    <div class="table-responsive">
                        <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False" DataSourceID="dataSource3" DataKeyNames="category_id">
                            <Columns>
                                <asp:BoundField DataField="category_id" HeaderText="Category ID" ReadOnly="True" SortExpression="category_id"></asp:BoundField>
                                <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category"></asp:BoundField>
                                <asp:CommandField ButtonType="Button" ShowEditButton="True" CausesValidation="False" />
                                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" CausesValidation="False" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Add New Category</h5>
                            <asp:TextBox ID="txtCategoryID" runat="server" CssClass="form-control" placeholder="Category ID"></asp:TextBox>
                            <asp:TextBox ID="txtCategory" runat="server" CssClass="form-control mt-3" placeholder="Category"></asp:TextBox>
                            <asp:Button ID="btnAddCategory" runat="server" Text="Add Category" CssClass="btn btn-primary mt-3" CausesValidation="true" OnClick="btnAddCategory_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <asp:SqlDataSource ID="dataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [Category]"
        InsertCommand="INSERT INTO [Category] ([category_id], [category]) VALUES (@category_id, @category)"
        UpdateCommand="UPDATE [Category] SET [category] = @category WHERE [category_id] = @category_id"
        DeleteCommand="DELETE FROM [Category] WHERE [category_id] = @category_id">
        <InsertParameters>
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="category_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="category_id" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="category_id" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>
</asp:Content>
