<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="addAbout.aspx.cs" Inherits="MyPortfolio.Admin.addAbout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Style for the image upload section */
        .about-img {
            margin-bottom: 20px;
        }
        /* Style for the edit profile section */
        .about-text {
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 5px;
        }
        .about-text h2 {
            margin-bottom: 20px;
        }
        .exp p {
            margin-bottom: 15px;
        }
        .exp label {
            font-weight: bold;
        }
        .exp input[type="text"] {
            width: 40%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .exp button {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .exp button:hover {
            background-color: #0056b3;
        }
    </style>
</asp:Content>

  
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="about-img">
        <!-- Input field to upload a new image -->
        <asp:FileUpload ID="fileUploadImage" runat="server" />
        <asp:Button ID="btnUploadImage" runat="server" Text="Upload" 
            />
    </div>
    <div class="about-text">
        <h2>Edit Profile</h2>
        <div class="exp">
            <p>
                <label>Department:</label>
                <!-- Input field to edit the department -->
                <asp:TextBox ID="txtDepartment" runat="server"></asp:TextBox>
            </p>
            <p class="dept">
                <label>Batch:</label>
                <!-- Input field to edit the batch -->
                <asp:TextBox ID="txtBatch" runat="server"></asp:TextBox>
            </p>
            <p class="dept">
                <label>Address:</label>
                <!-- Input field to edit the address -->
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </p>
            <p class="dept">
                <label>Email:</label>
                <!-- Input field to edit the email -->
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </p>
            <p class="dept">
                <label>Phone:</label>
                <!-- Input field to edit the phone -->
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </p>
            <asp:Button ID="btnUpdateProfile" runat="server" Text="Update Profile" onclick="btnUpdateProfile_Click" />
        </div>
    </div>
</asp:Content>
