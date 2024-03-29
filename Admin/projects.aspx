﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="projects.aspx.cs" Inherits="MyPortfolio.Admin.projects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Project Page</title>
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="update-form">
        <label for="idField">Project Id(Unique) :</label>
        <div class="input-group">
        <asp:TextBox ID="idTextBox" runat="server"></asp:TextBox>
        </div>
        <label for="nameField">Project Name :</label>
        <div class="input-group">
            <asp:TextBox ID="ProjectNameTextBox" runat="server"></asp:TextBox>
        </div>
    <div class="form-group">
    <label for="pictureField">Project Demo Picture</label>
    <div class="input-group">
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </div>
        <label for="gitHubField">Github Link:</label>
        <div class="input-group">
            <asp:TextBox ID="gitHubTextBox" runat="server"></asp:TextBox>
        </div>
        <label for="demoField">Live Demo Link:</label>
        <div class="input-group">
            <asp:TextBox ID="demoLinkTextBox" runat="server"></asp:TextBox>
        </div>

        <br />
        <asp:Label ID="LabelMessage" runat="server" Text=""></asp:Label>
        <br />
        <asp:Button ID="updateButton" runat="server" Text="Include" CssClass="admin-button"  OnClick="updateButton_Click" />

    </div>
</div>

    <div class="table-responsive">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Project Id" />
                <asp:BoundField DataField="project_name" HeaderText="Project Name" />
                <asp:BoundField DataField="github" HeaderText="GitHub Link" />
                <asp:BoundField DataField="livedemo" HeaderText="Live Demo" />
                <asp:TemplateField HeaderText="Project Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" ImageUrl='<%#Bind("project_pic") %>' runat="server" Width="100px" Height="100px"/>
                        <%--<img src="<%#Eval("project_pic")%>"  style="width:100px;height:100px" />--%>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                        <asp:LinkButton ID="UpdateLinkButton" CommandName="upd" CommandArgument='<%# Eval("id") %>' runat="server" >Update</asp:LinkButton>
                        <asp:LinkButton ID="DeleteLinkButton" CommandName="del" CommandArgument='<%# Eval("id") %>' OnClientClick="return confirm('are you sure you want to delete this project?');" runat="server" >Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView> 
    </div>
</asp:Content>