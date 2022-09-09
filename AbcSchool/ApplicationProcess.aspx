<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicationProcess.aspx.cs" Inherits="AbcSchool.ApplicationProcess" %>

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
            width: 429px;
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
                    <td class="auto-style2">Application Id:</td>
                    <td>
                        <asp:TextBox ID="txtappid" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Comments:</td>
                    <td>
                        <asp:TextBox ID="txtcomment" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnSubmit" runat="server" Text="Process Application" OnClick="btnSubmit_Click" />
                    </td>
                    <td>
                        <asp:Label ID="output" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
