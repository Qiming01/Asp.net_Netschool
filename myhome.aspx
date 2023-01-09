<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myhome.aspx.cs" Inherits="WebApplication3.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <!-- Bootstrap core CSS     -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!--  Material Dashboard CSS    -->
    <link href="css/material-dashboard.css" rel="stylesheet" />

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="css/demo.css" rel="stylesheet" />

    <!--     Fonts and icons     -->
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href='css/2d7207a20f294df196f3a53cae8a0def.css' rel='stylesheet' type='text/css' />
    <title>我的空间</title>
    <style>
        .user-info {
            margin: 0 auto;
            padding-top: 200px;
        }
    </style>
</head>
<body class="text-center">
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="sidebar" data-color="blue" data-image="../assets/img/sidebar-1.jpg">
                <div class="sidebar-wrapper user-info" >
                    <div class="col-md-12">
                        <div class="card card-profile">
                            <div class="card-avatar">
                                <a href="#pablo">
                                    <img class="img" src="face.PNG"/>
                                </a>
                            </div>

                            <div class="content">
                                <h6 class="category text-gray">Welcome</h6>
                                <h4 class="card-title" id="Lable1">欢迎来到您的空间</h4><br />
                                <asp:Label runat="server" Text="" ID="Lable2"></asp:Label><br /><br />
                                <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <asp:Label runat="server" Text="" ID="Lable3"></asp:Label><br />
                                        <asp:Timer ID="Timer2" runat="server" Interval="1000"></asp:Timer>
                                    </ContentTemplate>
                                </asp:UpdatePanel><br />
                                <asp:Button runat="server" Text="退出" ID="btnLogout" OnClick="btnLogout_Click" class="btn btn-primary btn-round"></asp:Button><br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-panel text-left">
                <nav class="navbar navbar-transparent navbar-absolute">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header" data-background-color="purple">
                                        <h4 class="title">查询课程信息</h4>
                                        <p class="category">Select class information.</p>
                                    </div>
                                    <div class="card-content table-responsive">
                                        <%--<asp:ListBox ID="ListBMyClass" runat="server" Width="200"></asp:ListBox>--%>
                                        <asp:GridView CssClass="table text-primary" ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                            <Columns>
                                                <asp:BoundField HeaderText="CLASSID" DataField="CLASSID" />
                                                <asp:BoundField HeaderText="课程名称" DataField="CLASSNAME" />
                                                <asp:BoundField HeaderText="专业" DataField="专业" />
                                                <asp:BoundField HeaderText="注册时间" DataField="注册时间" />
                                                <asp:BoundField HeaderText="主讲教师" DataField="主讲教师" />
                                                <asp:BoundField HeaderText="职位" DataField="主讲教师职位" />
                                                <asp:BoundField HeaderText="成绩" DataField="GRADE" />
                                            </Columns>
                                        </asp:GridView>
                                        <br />
                                        <asp:Button ID="btnSearchMyClass" runat="server" class="btn btn-primary btn-round" Text="查询" OnClick="btnSearchMyClass_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </form>

</body>
</html>
