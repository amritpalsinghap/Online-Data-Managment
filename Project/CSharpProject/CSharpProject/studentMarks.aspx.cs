using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSharpProject
{
    public partial class studentMarks : System.Web.UI.Page
    {
        private StudentBLL studbll;
        private MarksBLL markbll = null;
        private List<MarksBLL> markbllList = null;

        int StudentId;

        public studentMarks()
        {
            studbll = new StudentBLL();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            StudentId = (int)Session["stdid"];

            markbll = new MarksBLL();
            markbllList= markbll.GetMarksByStudentID(StudentId);
            if (markbllList != null)
            {
                gridMarks.DataSource = markbllList;
                gridMarks.DataBind();
            }


        }
    }
}