using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSharpProject
{
    public partial class studentProfile : System.Web.UI.Page
    {
        private StudentBLL stud;


        public studentProfile()
        {




        }
        protected void Page_Load(object sender, EventArgs e)
        {
            stud = (StudentBLL)Session["stdobj"];

            lblsfirstName.Text = stud.FirstName;
            lblslastName.Text = stud.LastName;
            lblsCity.Text = stud.City;
            lblsEmail.Text = stud.Email;
            lblsPhone.Text = stud.Phone;
            lblsPostal.Text = stud.PostalCode;
            lblsStreet.Text = stud.Street;
            lblsProvince.Text = stud.Prov;

        }

        protected void btnAssignTimeTable_Click(object sender, EventArgs e)
        {

        }

        protected void btnViewMarks_Click(object sender, EventArgs e)
        {
            Server.Transfer("StudentMarks.aspx", true);
        }
    }
}