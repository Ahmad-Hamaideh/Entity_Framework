using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Entity
{
    public partial class lol : System.Web.UI.Page
    {
        EntityEntities cc = new EntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            var query = from c in cc.infoes
                        join o in cc.cities on c.city equals o.id
                        where (c.custoumer_Name.Contains(TextBox1.Text))
                        select new { c.custoumer_id, c.custoumer_Name, c.Age, o.ciry, c.phone, c.photo };

            GridView1.DataSource = query.ToList();
            GridView1.DataBind();


            //GridView1.DataSource = cc.infoes.ToList();
            //GridView1.DataBind();

            Label1.Text = "⦁\tNumber of customers :" + "   "+ cc.infoes.Select(x => x.custoumer_id).Count().ToString();
            Label2.Text = "⦁\tAvg of age \r\n  : " + "   " + cc.infoes.Select(x => x.Age).Average().ToString();
            Label3.Text = "⦁\tMax Age  :" + "   " + cc.infoes.Select(x => x.Age).Max().ToString();
        }
        public Image Image { get; set; }
        protected void Button1_Click(object sender, EventArgs e)
        {
            city w = new city();
            info q = new info();
            //int ii = Convert.ToInt32(TextBox2.Text);
            var query = from c in cc.infoes
                        join o in cc.cities on c.city equals o.id
                        where (c.custoumer_Name.Contains(TextBox1.Text))
                        select new {c.custoumer_id , c.custoumer_Name, c.Age, o.ciry, c.phone, c.photo };

            GridView1.DataSource = query.ToList();
            GridView1.DataBind();

            //GridView1.DataSource = cc.infoes. Where(x => x.custoumer_Name .Contains(TextBox1.Text)).ToList();
            //GridView1.DataBind(); 
        }

        protected void updet_Click(object sender, EventArgs e)
        {
           
        
        
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        
    }
}