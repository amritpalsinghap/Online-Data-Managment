using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharpProject
{
    public class ProfessorBLL : PersonBLL
    {

     
        private ProfessorDAL professorDAL;
        private CourseBLL courseBLL;
        private TimeTableBLL timeTable;
        private StudentBLL studentBLL;

        public ProfessorBLL()
        {
            professorDAL = new ProfessorDAL();
        }
        public ProfessorBLL GetProfessor(string userName, string password)
        {
            return professorDAL.GetProfessor(userName, password); ;
             

        }
        public bool UpdateProfessorInfo(ProfessorBLL prof)
        {
           return professorDAL.UpdateProfessorInfo(prof);
        }

        public bool CheckProfessor(string username, string password)
        {
            return professorDAL.CheckProfessor(username, password);

        }
        public List<CourseBLL> GetCoursesByProfessorID(int professorID)
        {
            courseBLL = new CourseBLL();
            return courseBLL.GetCoursesByProfessorID(professorID);
        }
        public List<StudentBLL> GetStudents(int courseID)
        {
            studentBLL = new StudentBLL();
            return studentBLL.GetStudents(courseID);
        }
        public List<TimeTableBLL> GetTimeTableByProfessorID(int professorID)
        {
            timeTable = new TimeTableBLL();
            return timeTable.GetTimeTableByProfessorID(professorID);
        }
    }
}