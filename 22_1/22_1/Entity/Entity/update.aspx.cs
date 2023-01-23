using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Entity
{
    public partial class update : System.Web.UI.Page
    {
        EntityEntities db = new EntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                var aa = db.cities.ToList();
                DropDownList1.DataSource = aa;
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataTextField = "ciry";
                DropDownList1.DataBind();
            }

            

            if (Request.QueryString["id"] == null ) {
                Response.Redirect("lol.aspx");
            }
            else {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                var req = db.infoes.Find(id);
            TextBox1.Text = req.custoumer_Name;
            TextBox2.Text = req.Age.ToString();
            TextBox4.Text = req.phone.ToString();
            Image1.ImageUrl = req.photo;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);

            Response.Write(id);

            info info =  db.infoes.Find(id);
        
            if (FileUpload1.HasFile) {
                FileUpload1.SaveAs(Server.MapPath("~/IMG/") + FileUpload1.FileName);
                string img = FileUpload1.FileName;
                info.photo = "~/IMG/" + img;
            }

            info.custoumer_Name = TextBox1.Text;
            info.city = Convert.ToInt32(DropDownList1.SelectedValue);
            info.Age = Convert.ToInt32( TextBox2.Text);
            info.phone = Convert.ToInt32(TextBox4.Text);
            db.infoes.AddOrUpdate(info);
            db.SaveChanges();

           

            Response.Redirect("lol.aspx");
        }
    }
}