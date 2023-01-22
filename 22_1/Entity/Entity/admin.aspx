<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Entity.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title> <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
    <style>
        .col-12 {
            flex: 0 0 auto;
            width: 57%;
        }
        body{
            height:100vh ;
            background-color : #EFD3E4 ;
        }
    </style>
    <form id="form1" runat="server">
        <br /><br />
        <section class="intro">
  <div class="bg-image-vertical h-200" style="background-color: #EFD3E4;
         /* background-image: url(https://mdbootstrap.com/img/Photos/new-templates/search-box/img1.jpg);*/
        ">
    <div class="mask d-flex align-items-center h-120">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-lg-10">
            <div class="card" style="border-radius: 1rem;">
              <div class="card-body p-5">

                <h1 class="mb-5 text-center"> Form</h1>

             
                  <!-- 2 column grid layout with text inputs for the first and last names -->
                  <div class="row">
                    <div class="form-outline mb-4">
                      <div class="form-outline">
                            <asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                       
                        <label class="form-label" for="form6Example1">Full name</label>
                      </div>
                    </div>
                   
                  </div>

                  <!-- Text input -->
                  <div class="form-outline mb-4">
                      <asp:TextBox ID="TextBox2" runat="server"  class="form-control"></asp:TextBox>
                   
                    <label class="form-label" for="form6Example3">Age</label>
                  </div>
                       <div class="form-outline mb-4">
                     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                  </div>
                       <div class="form-outline mb-4">
                      <asp:FileUpload ID="FileUpload1" runat="server" />
                  </div>
                  <!-- Text input -->
               
                      <div class="form-outline mb-4">
                      
                          <asp:TextBox  class="form-control"  ID="TextBox4" runat="server"></asp:TextBox>
                    <label class="form-label" for="form6Example4"> Phone</label>
                  </div>

                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                  <!-- Submit button -->
                     <asp:Button ID="Button1" runat="server" class="btn btn-secondary btn-rounded btn-block" Text="Button" OnClick="Button1_Click" />
                 
                

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


        <div>
           <%--  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
                  <%-- <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                   <%--<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>--%>
                  <%-- <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>--%>
         <%--   <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>--%>
           <%-- <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />--%>
        </div>
        <%--<asp:FileUpload ID="FileUpload1" runat="server" />--%>
    </form>
</body>
</html>
