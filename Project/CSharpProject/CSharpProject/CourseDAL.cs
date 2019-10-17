using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CSharpProject.CollegeDataSetTableAdapters;
namespace CSharpProject
{
    public class CourseDAL
    {
        private CourseTableAdapter courseadp;
        private CollegeDataSet.CourseDataTable coursetbl;
        private List<CourseBLL> courseList;

        public CourseDAL()
        {
            courseadp = new CourseTableAdapter();
            coursetbl = new CollegeDataSet.CourseDataTable();
        }
        public List<CourseBLL> GetCoursesInfo()
        {
            courseadp.FillAllCourseInfo(coursetbl);
            courseList = null;

            if (coursetbl.Count > 0)
            {


                foreach (var row in coursetbl)
                {
                    CourseBLL courseBLL = new CourseBLL();
                    courseBLL.CourseID = row.CourseID;
                    courseBLL.CourseName = row.CourseName;
                    courseBLL.Credits = row.Credits;
                    courseBLL.ProgramID = row.ProgramID;

                    courseList.Add(courseBLL);
                }

            }
            return courseList;
        }
        public List<CourseBLL> GetCoursesByProfessorID(int professorID)
        {
            courseadp.FillCoursesByProfessorID(coursetbl, professorID);
            courseList = null;

            if (coursetbl.Count > 0)
            {


                foreach (var row in coursetbl)
                {
                    CourseBLL courseBLL = new CourseBLL();
                    courseBLL.CourseID = row.CourseID;
                    courseBLL.CourseName = row.CourseName;
                    courseBLL.Credits = row.Credits;
                    courseBLL.ProgramID = row.ProgramID;

                    courseList.Add(courseBLL);
                }

            }
            return courseList;
        }
        public List<CourseBLL> GetCoursesByStudentID(int StudentID)
        {
            courseadp.FillCoursesByStudentID(coursetbl, StudentID);
             courseList = null;

            if (coursetbl.Count > 0)
            {


                foreach (var row in coursetbl)
                {
                    CourseBLL courseBLL = new CourseBLL();
                    courseBLL.CourseID = row.CourseID;
                    courseBLL.CourseName = row.CourseName;
                    courseBLL.Credits = row.Credits;
                    courseBLL.ProgramID = row.ProgramID;

                    courseList.Add(courseBLL);
                }

            }
            return courseList;
        }
    }
}