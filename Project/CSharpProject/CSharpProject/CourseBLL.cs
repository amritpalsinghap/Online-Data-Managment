using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharpProject
{
    public class CourseBLL
    {
        public int CourseID { get; set; }
        public int ProgramID { get; set; }
        public string CourseName { get; set; }
        public int Credits { get; set; }
        public int TimeTableID { get; set; }
        private CourseDAL courseDAL;
        public CourseBLL()
        {
            courseDAL = new CourseDAL();
        }

        public List<CourseBLL> GetCoursesInfo()
        {
            return courseDAL.GetCoursesInfo();
        }

        public List<CourseBLL> GetCoursesByProfessorID(int professorID)
        {
            return courseDAL.GetCoursesByProfessorID(professorID);
        }
        public List<CourseBLL> GetCoursesByStudentID(int StudentID)
        {
            return courseDAL.GetCoursesByStudentID(StudentID);

        }


    }
}