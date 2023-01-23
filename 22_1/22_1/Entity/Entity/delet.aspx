<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delet.aspx.cs" Inherits="Entity.delet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title> <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
    <form id="form1" runat="server">
        <div style="margin: 100px 500px">



            <div class="card" style="width: 18rem;">
                 
  
  <div class="card-body">
    <h5 class="card-title">Delet</h5>
      <br />
    <asp:Image class="card-img-top"  ID="Image1" runat="server" style="height:120px ; width : 140px " />
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item"> Full Name  : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </li>
    <li class="list-group-item"> Age : <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></li>
    <li class="list-group-item"> phone : <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> </li>
  </ul>
  <div class="card-body">
      <asp:Button ID="Button1" runat="server" Text="Delet" OnClick="Button1_Click" />
  </div>
</div>








<%--            <asp:Image ID="Image1" runat="server" style="height:60px ; width : 70px " />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></body>--%>
        </di>
    </form>
 </body>
</html>
