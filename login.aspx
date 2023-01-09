<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication3.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录页</title>
    <script src="js/bootstrap.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <style>
        body {
            display: flex;
            align-items: center;
            padding-top: 100px;
            background-color: #f5f5f5;
            margin: 0;
            box-sizing: border-box;
        }

        .form-area {
            max-width: 600px;
            padding: 10px;
        }
    </style>
</head>
<body class="text-center">
    <main class="form-area w-100 m-auto">
        <form id="form1" runat="server" class="p-4 p-md-5 border rounded-5 bg-light">
            <div>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/logo.png" Width="100" Height="100"/><br />
                <h1 class="h3 mb-3 fw-normal">登录</h1><br />
                <div class="mb-3 row">
                    <asp:Label runat="server" Text="用户名:" ID="Lable1" class="col-sm-2 col-form-label"></asp:Label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtUserName" CssClass="form-control" placeholder="Username" TextMode="SingleLine"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="mb-3 row">
                    <asp:Label runat="server" Text="密码:" ID="Lable2" CssClass="col-sm-2 col-sm-offset-2 control-lable"></asp:Label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtPwd" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <br />
                <asp:Label runat="server" Text="请输入用户名密码" ID="Lable3"></asp:Label>
                <br />
                <br />
                <div class="d-grid gap-2 d-md-flex justify-content-md-center">
                    <asp:Button runat="server" Text="登录" ID="btnLogin" OnClick="btnLogin_Click" class="btn btn-primary btn-lg px-4 me-md-2 fa-sign-in"></asp:Button>
                    <asp:Button runat="server" Text="重写" ID="btnReset" OnClick="btnReset_Click" class="btn btn-outline-secondary btn-lg px-4"></asp:Button><br />
                </div>
                <p class="mt-5 mb-3 text-muted text-center">© 2022-2023 Qi_Ming</p>
            </div>
        </form>
    </main>
</body>
</html>
