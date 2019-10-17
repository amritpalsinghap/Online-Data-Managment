using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSharpProject
{
    public partial class TimeTable : System.Web.UI.Page
    {
        ProfessorBLL profbll;
        StudentBLL studbll;
        List<TimeTable> ttList;
        int studentID;
        int profid;
        public TimeTable()
        {
            profbll = new ProfessorBLL();
            studbll = new StudentBLL();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            studentID = (int)Session["stdid"];
            profid = (int)Session["profid"];

        }
        public void getTimeTableStudent()
        {
            gridTimeTable.DataSource = studbll.GetTimeTableByStudentID(studentID);
        }

        public void getTimeTableProfessor()
        {
            gridTimeTable.DataSource = profbll.GetCoursesByProfessorID(profid);
        }

    }
}