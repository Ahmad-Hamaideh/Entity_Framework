using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Entity
{


    public partial class delet : System.Web.UI.Page
    {
        EntityEntities db = new EntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            var req = db.infoes.Find(id);
            Label1.Text = req.custoumer_Name;
            Label2.Text =  req.Age.ToString();
            Label3.Text =  req.phone.ToString();
            Image1.ImageUrl= req.photo.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            info info = db.infoes.Find(id);
            db.infoes.Remove(info); 
            db.SaveChanges();
            Response.Redirect("lol.aspx");
        }
    }
}