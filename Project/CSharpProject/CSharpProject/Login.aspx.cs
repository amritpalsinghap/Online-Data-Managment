using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace CSharpProject
{
    public partial class Login : System.Web.UI.Page
    {
        private ProfessorBLL checkprof;
        private ProfessorBLL prof;
       private StudentBLL checkstd;
        private StudentBLL std;
       

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            string username = usernametxtbx.Text.Trim();
            // encrypt the password
            string password = passwordtxtbx.Text.Trim();

            if (checkprof.CheckProfessor(username, password))
            {
                Session["profid"] = null;
                
                   
                    ProfessorBLL  retprof = new ProfessorBLL();

                   prof = retprof.GetProfessor(username, password);
                   
                    Session["profobj"] = prof;
                    Session["profid"] = prof.Id ;
                    Server.Transfer("professorProfile.aspx", true);
                

            }
            else if (checkstd.CheckStudent(username, password))
            {

                Session["stdid"] = null;
                    StudentBLL retstd = new StudentBLL();
                std = retstd.GetStudent(username,password);
                     
                    Session["stdobj"] = std;
                    Session["stdid"] = std.Id;
                    Server.Transfer("studentProfile.aspx", true);
                
            }
            else
            {
                lblMessage.Text = "Login failed. Please try again.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}