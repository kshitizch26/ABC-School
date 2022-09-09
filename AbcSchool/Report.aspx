<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="AbcSchool.Report" %>

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
        .auto-style2 {
            background-color: #CCCCFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="three" style="background-color:oldlace">
            <h1>ABC International School</h1>
         </div>
        <div class="auto-style2">
            <table class="auto-style1">
                <tr>
                    <td>Select:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem Value="0">Unprocessed</asp:ListItem>
                            <asp:ListItem Value="1">Processed</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Total Applications:</td>
                    <td>
                        <asp:Label ID="optotal" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Processed Applications:</td>
                    <td>
                        <asp:Label ID="opprocessed" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MasterPage.aspx">Home</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="appid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="appid" HeaderText="appid" InsertVisible="False" ReadOnly="True" SortExpression="appid" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                    <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                    <asp:BoundField DataField="class_id" HeaderText="class_id" SortExpression="class_id" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OAF_DBConnectionString3 %>" SelectCommand="SELECT [appid], [name], [address], [dob], [age], [class_id] FROM [Applications] WHERE ([status] = @status)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="status" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
