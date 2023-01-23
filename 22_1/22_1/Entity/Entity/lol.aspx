<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lol.aspx.cs" Inherits="Entity.lol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">






        <div>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 207px" Width="246px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="serach" OnClick="Button1_Click" style="margin-left: 0px" Width="115px" />
            <br /><br /><br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" Height="338px" style="margin-left: 141px; margin-right: 0px;" Width="488px">
                <Columns>
                    <asp:BoundField AccessibleHeaderText="Name" DataField="custoumer_Name" FooterText="Name" HeaderText="Name"></asp:BoundField>
                    <asp:BoundField DataField="Age" FooterText="Age" HeaderText="Age" />
                    <asp:BoundField DataField="ciry" FooterText="City" HeaderText="City" />
                    <asp:BoundField DataField="phone" FooterText="phone" HeaderText="Phone" />
                    <asp:ImageField DataImageUrlField="photo" HeaderText="photo">
                        <ControlStyle Height="40px" Width="60px" />
                    </asp:ImageField>
                  
                   
                    <asp:HyperLinkField DataNavigateUrlFields="custoumer_id" DataNavigateUrlFormatString="update.aspx?id={0}" HeaderText="Update" Text="update" />
                    <asp:HyperLinkField DataNavigateUrlFields="custoumer_id" DataNavigateUrlFormatString="delet.aspx?id={0}" Text="Delet" />
                  
                   
                </Columns>

                <EmptyDataTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("photo") %>' />
                    <asp:Button ID="Button2" runat="server" Height="27px" OnClick="Button2_Click" style="margin-left: 254px" Text="Button" Width="220px" />
                </EmptyDataTemplate>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            
        </div>
        <br /><br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />  <br /><br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />  <br /><br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><br /> <br /><br />
        
    </form>
</body>
</html>
