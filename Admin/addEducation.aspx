<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="addEducation.aspx.cs" Inherits="MyPortfolio.Admin.addEducation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .education {
            margin-top: 20px;
        }

        .center-text {
            text-align: center;
            margin-bottom: 20px;
        }

        .edu-form {
            width: 50%;
            margin: 0 auto;
        }

        .edu-form .form-control {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .edu-form .btn-primary {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
        }

        .edu-form .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="education" id="education"> 
       
         <div class="center-text">
        <h2>Add Education</h2>
    </div>
    <div class="edu-form"  id="eduContainer">
        <asp:Label ID="lblId" runat="server" Text="Id"></asp:Label>
            <asp:TextBox ID="txtId" runat="server" CssClass="form-control" placeholder="Enter Id"></asp:TextBox>
        <asp:Label ID="lblLevel" runat="server" Text="Level"></asp:Label>
        <asp:TextBox ID="txtLevel" runat="server" CssClass="form-control" placeholder="Enter level"></asp:TextBox>
        
        <asp:Label ID="lblInstitute" runat="server" Text="Institute"></asp:Label>
        <asp:TextBox ID="txtInstitute" runat="server" CssClass="form-control" placeholder="Enter institute"></asp:TextBox>
        
        <asp:Label ID="lblGPA" runat="server" Text="GPA"></asp:Label>
        <asp:TextBox ID="txtGPA" runat="server" CssClass="form-control" placeholder="Enter GPA"></asp:TextBox>
        
        <asp:Label ID="lblPassingYear" runat="server" Text="Passing Year"></asp:Label>
        <asp:TextBox ID="txtPassingYear" runat="server" CssClass="form-control" placeholder="Enter passing year"></asp:TextBox>
        
        <asp:Button ID="Button1" runat="server" Text="Add Education" CssClass="btn btn-primary" OnClick="btnAddEducation_Click" />
    </div>
       
    </section> 
</asp:Content>
