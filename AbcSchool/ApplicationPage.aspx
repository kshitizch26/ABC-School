<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicationPage.aspx.cs" Inherits="AbcSchool.ApplicationPage" %>

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
            width: 342px;
        }
        .auto-style3 {
            width: 269px;
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
                    <td class="auto-style2">Select Branch:</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddBranch" runat="server">
                            <asp:ListItem Value="1">HSR Layout</asp:ListItem>
                            <asp:ListItem Value="2">Yeswanthpur</asp:ListItem>
                            <asp:ListItem Value="3">Tumkur</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddBranch" ErrorMessage="Branch is Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Select Class ID:</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddClass" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddClass" ErrorMessage="Class ID is Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Candidate Name:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtName" ErrorMessage="Candidate Name is Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Age:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtAge" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAdd" ErrorMessage="Enter Age"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Date Of Birth:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDOB" ErrorMessage="Enter Date Of Birth"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Address:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtAdd" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAdd" ErrorMessage="Address is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit Application" />
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="output" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/MasterPage.aspx">Home</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
