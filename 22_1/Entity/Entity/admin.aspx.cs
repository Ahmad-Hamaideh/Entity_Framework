using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Entity
{
    public partial class admin : System.Web.UI.Page
    {
        EntityEntities db = new EntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            


            // city custq = new city();
            //custq.ciry = Convert.ToString(DropDownList1.SelectedItem);
            if (!IsPostBack) { 

            var aa = db.cities.ToList();
            DropDownList1.DataSource = aa;
            DropDownList1.DataValueField = "Id";
            DropDownList1.DataTextField = "ciry";
            DropDownList1.DataBind();
            }

        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                info cust = new info();



                FileUpload1.SaveAs(Server.MapPath("~/IMG/") + FileUpload1.FileName);
                string img = FileUpload1.FileName;
                cust.photo = "~/IMG/" + img;
                if (!IsPostBack)
                {
                    city custq = new city();
                    var x = from c in custq.ciry select c;
                    DropDownList1.DataSource = x.ToList();
                    DropDownList1.DataTextField = "city";
                    DropDownList1.DataValueField = "id";
                    DropDownList1.DataBind();

                }



               

                cust.custoumer_Name = TextBox1.Text;
                cust.Age = Convert.ToInt32(TextBox2.Text);
                cust.phone = Convert.ToInt32(TextBox4.Text);
                cust. photo= "~/IMG/" + img ;
                cust.city = Convert.ToInt32(DropDownList1.SelectedValue);
                db.infoes.Add(cust);
                db.SaveChanges();



                Label1.Text = "perfctooooooooooooo";
                Response.Redirect("lol.aspx");
            }
            catch (DbEntityValidationException aa )
            {
                foreach (var eve in aa.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
        }
    }
}