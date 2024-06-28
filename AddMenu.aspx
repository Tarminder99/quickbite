<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AddMenu.aspx.cs" Inherits="GroupProject.AddMenu" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <asp:GridView ID="GridView2" runat="server" SelectedIndex="0" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="dataSource4" AllowPaging="True" CssClass="table table-bordered">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True"></asp:BoundField>
                            <asp:BoundField DataField="Title" HeaderText="Title"></asp:BoundField>
                            <asp:BoundField DataField="category_id" HeaderText="Category ID"></asp:BoundField>
                            <asp:CommandField ButtonType="Link" ShowSelectButton="true"></asp:CommandField>
                        </Columns>
                        <HeaderStyle CssClass="thead-dark" />
                        <PagerSettings Mode="NumericFirstLast" />
                        <PagerStyle CssClass="pagerStyle" HorizontalAlign="Center" />
                        <SelectedRowStyle CssClass="warning" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="dataSource4" runat="server"
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        SelectCommand="SELECT [Id], [Title], [category_id] FROM [Menu] ORDER BY [Id]"></asp:SqlDataSource>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-md-12">
                    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="dataSource5" DataKeyNames="Id" AutoGenerateRows="False" OnItemUpdated="DetailsView1_ItemUpdated" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" CssClass="table table-bordered">
                        <Fields>
                            <asp:TemplateField HeaderText="Id">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="lblId" Text='<%# Bind("Id") %>'></asp:Label>
                                </ItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox runat="server" ID="txtId" Text='<%# Bind("Id") %>' CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvId" runat="server" CssClass="text-danger" ControlToValidate="txtId" ErrorMessage="ID is a required field."></asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Title">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="lbltitle" Text='<%# Bind("title") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txttitle" runat="server" Text='<%# Bind("title") %>' CssClass="form-control"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox runat="server" ID="txttitle" Text='<%# Bind("title") %>' CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvtitle" runat="server" CssClass="text-danger" ControlToValidate="txttitle" ErrorMessage="Title is a required field."></asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Description">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="lbldescription" Text='<%# Bind("description") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtdescription" runat="server" Text='<%# Bind("description") %>' CssClass="form-control"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox runat="server" ID="txtdescription" Text='<%# Bind("description") %>' CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvdescription" runat="server" CssClass="text-danger" ControlToValidate="txtdescription" ErrorMessage="Description is a required field."></asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="lblimage" Text='<%# Bind("image") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtimage" runat="server" Text='<%# Bind("image") %>' CssClass="form-control"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox runat="server" ID="txtimage" Text='<%# Bind("image") %>' CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvimage" runat="server" CssClass="text-danger" ControlToValidate="txtimage" ErrorMessage="Image is a required field."></asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="lblprice" Text='<%# Bind("price") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtprice" runat="server" Text='<%# Bind("price") %>' CssClass="form-control"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox runat="server" ID="txtprice" Text='<%# Bind("price") %>' CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvprice" runat="server" CssClass="text-danger" ControlToValidate="txtprice" ErrorMessage="Price is a required field."></asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Category ID">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="lblcategory_id" Text='<%# Bind("category_id") %>'></asp:Label>
                                </ItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox runat="server" ID="txtcategory_id" Text='<%# Bind("category_id") %>' CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvcategory_id" runat="server" CssClass="text-danger" ControlToValidate="txtcategory_id" ErrorMessage="Category ID is a required field."></asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                            </asp:TemplateField>


                            <asp:CommandField ButtonType="Link" ShowDeleteButton="true" ShowEditButton="true" ShowInsertButton="true" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="dataSource5" runat="server"
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        OldValuesParameterFormatString="original_{0}"
                        SelectCommand="SELECT [Id], [title], [description], [image], [category_id], [price] FROM [Menu] WHERE ([Id] = @Id)"
                        UpdateCommand="UPDATE [Menu] SET [title] = @title,[description] = @description,[image] = @image,[price] = @price WHERE [Id] = @original_Id"
                        InsertCommand="INSERT INTO [Menu] ([Id], [title], [description], [image], [category_id], [price]) VALUES (@Id, @title, @description, @image, @category_id, @price)"
                        DeleteCommand="DELETE FROM [Menu] WHERE [Id] = @original_Id">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="Id"
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="title" Type="String" />
                            <asp:Parameter Name="description" Type="String" />
                            <asp:Parameter Name="image" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="original_Id" Type="String" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Id" Type="String" />
                            <asp:Parameter Name="title" Type="String" />
                            <asp:Parameter Name="description" Type="String" />
                            <asp:Parameter Name="image" Type="String" />
                            <asp:Parameter Name="category_id" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                        </InsertParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="original_Id" Type="String" />
                        </DeleteParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
