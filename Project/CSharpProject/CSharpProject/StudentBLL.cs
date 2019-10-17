using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharpProject
{
    public class StudentBLL : PersonBLL
    {
        private StudentDAL studentDAL;
        private CourseBLL courseBLL;
        private TimeTableBLL timeTable;

        public int ProgramID { get; set; }

        public StudentBLL()
        {
            studentDAL = new StudentDAL();
        }
        public StudentBLL GetStudent(string userName, string password)
        {
            StudentBLL ret = studentDAL.GetStudent(userName, password);
            return ret;
        }
        public bool UpdateStudentInfo(StudentBLL std)
        {
            return studentDAL.UpdateStudentInfo(std);
        }
        public List<CourseBLL> GetCourses()
        {
            courseBLL = new CourseBLL();
            return courseBLL.GetCoursesByStudentID(this.Id);
        }
        public List<StudentBLL> GetStudents(int courseID)
        {
            return studentDAL.GetStudents(courseID);
        }
        public List<TimeTableBLL> GetTimeTableByStudentID(int studentID)
        {
            timeTable = new TimeTableBLL();
            return timeTable.GetTimeTableByStudentID(studentID);
        }
        public bool CheckStudent(string username, string password)
        {
            return studentDAL.CheckStudent(username, password);
        }
    }
}