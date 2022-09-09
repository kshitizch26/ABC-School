<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckApplicationStatus.aspx.cs" Inherits="AbcSchool.CheckApplicationStatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #CCCCFF;
        }
        .auto-style2 {
            width: 300px;
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
                    <td class="auto-style2">Entetr Application Id: </td>
                    <td>
                        <asp:TextBox ID="txtaid" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtaid" ErrorMessage="Application Id is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnStatus" runat="server" OnClick="btnStatus_Click" Text="Check Status" />
                    </td>
                    <td>
                        <asp:Label ID="output" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/MasterPage.aspx">Home</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
