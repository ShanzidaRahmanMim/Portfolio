<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyPortfolio.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin login</title>
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet"/>
      <style>
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            width: 400px;
            margin: 100px auto;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        .panel-heading {
            background-color: navy;
            color: #fff;
            font-size: 20px;
            text-align: center;
            padding: 10px 0;
            margin-bottom: 20px;
            border-radius: 5px 5px 0 0;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
            display: block;
            color: #000;
        }

        .form-control {
        
            width: 94%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #000;
            border-radius: 4px;
            color: #000;
        }
     

        .btn-success {
            width: 30%;
            padding: 10px;
            font-size: 16px;
            margin-top:10px;
            background-color: mediumseagreen;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
       

        .btn-success:hover {
            background-color: green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      
         <div class="container">
        <div class="col-sm-3">
        </div>
        <div class="col-sm-6">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    Admin Login</div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label>
                                    Username:</label>
                                <asp:TextBox ID="txtuserid" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>
                                    Password:</label>
                                <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnLogin" CssClass=" btn-success" runat="server" 
                                    Text="Login" OnClick="btnLogin_Click"  />
                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                </div>
            </div>
        </div>
        <div class="col-sm-3">
        </div>
    </div>
    </form>
</body>
</html>
