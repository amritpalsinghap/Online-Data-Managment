using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSharpProject
{
    public partial class professorProfile : System.Web.UI.Page
    {
        private ProfessorBLL prof;

        public professorProfile()
        {
            
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            prof = (ProfessorBLL)Session["profobj"];
            lblfirstName.Text = prof.FirstName;
            lbllastName.Text = prof.LastName;
            lblCity.Text = prof.City;
            lblEmail.Text = prof.Email;
            lblPhone.Text = prof.Phone;
            lblPostal.Text = prof.PostalCode;
            lblStreet.Text = prof.Street;
            lblProvince.Text = prof.Prov;

        }
    }
}