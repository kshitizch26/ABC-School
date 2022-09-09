<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MasterPage.aspx.cs" Inherits="AbcSchool.MasterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #CCCCFF;
        }
        /* === HEADING STYLE === */
        .three h1 {
          font-size: 28px;
          font-weight: 500;
          letter-spacing: 0;
          line-height: 1.5em;
          padding-bottom: 15px;
          position: relative;
        }
        .three h1:before {
          content: "";
          position: absolute;
          left: 0;
          bottom: 0;
          height: 5px;
          width: 55px;
          background-color: #111;
        }
        .three h1:after {
          content: "";
          position: absolute;
          left: 0;
          bottom: 2px;
          height: 1px;
          width: 95%;
          max-width: 255px;
          background-color: #333;
        }

        .auto-style4 {
            text-align: center;
        }
        .auto-style7 {
            width: 304px;
        }
        .auto-style8 {
            text-align: center;
            width: 304px;
        }
        .auto-style9 {
            width: 283px;
        }
        .auto-style10 {
            text-align: center;
            width: 283px;
        }
        .auto-style11 {
            width: 295px;
        }
        .auto-style12 {
            text-align: center;
            width: 295px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="three" style="background-color:oldlace">
            <h1>ABC International School</h1>
         </div>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7"><strong>
                        <br />
                        Welcome To ABC International School Portal<br />
                        <br />
                        </strong></td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ApplicationPage.aspx">Apply</asp:HyperLink>
                    </td>
                    <td class="auto-style12">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CheckApplicationStatus.aspx">Application Status</asp:HyperLink>
                    </td>
                    <td class="auto-style10">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx">Admin</asp:HyperLink>
                    </td>
                    <td class="auto-style4">
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Report.aspx">Application Report</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
