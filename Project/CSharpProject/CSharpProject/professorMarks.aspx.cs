using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSharpProject
{
    public partial class professorMarks : System.Web.UI.Page
    {
        private ProfessorBLL profbll;
        private List<CourseBLL> listCourse = null;
        private List<StudentBLL> listStudent = null;
        private MarksBLL markbll;
        int selectedCourseId;
        int profid;
        int selectedStudentId;


        public professorMarks()
        {
            profbll = new ProfessorBLL();
            markbll = new MarksBLL();


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            profid = (int)Session["profid"];

            listCourse = profbll.GetCoursesByProfessorID(profid);
            if (listCourse != null)
            {
                dropCoursep.DataSource = listCourse;
                dropCoursep.DataTextField = "CourseId";
                dropCoursep.DataValueField = "CourseId";
                dropCoursep.DataBind();
            }

        }



        protected void dropSelectStudentp_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnUpdateMark.Enabled = true;
            selectedStudentId = int.Parse(dropSelectStudentp.SelectedItem.Text);

        }

        protected void dropCoursep_SelectedIndexChanged(object sender, EventArgs e)
        {
            dropSelectStudentp.Enabled = true;

            selectedCourseId = int.Parse(dropCoursep.SelectedItem.Text);
            listStudent = profbll.GetStudents(selectedCourseId);
            if (listStudent != null)
            {
                dropSelectStudentp.DataSource = listStudent;
                dropSelectStudentp.DataTextField = "FirstName";
                dropSelectStudentp.DataValueField = "StudentId";
                dropSelectStudentp.DataBind();
            }
        }

        protected void btnUpdateMark_Click(object sender, EventArgs e)
        {
            MarksBLL updateMarks = new MarksBLL();
            updateMarks.StudentID = selectedStudentId;

            updateMarks.CourseID = selectedCourseId;
            updateMarks.Marks = int.Parse(textMark.Text);
            markbll.UpdateStudentMarks(updateMarks);
        }
    }
}