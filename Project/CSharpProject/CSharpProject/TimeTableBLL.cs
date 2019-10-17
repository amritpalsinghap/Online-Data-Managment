using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharpProject
{
    public class TimeTableBLL
    {
        private TimeTableDAL timetableDAL;
        public TimeTableBLL()
        {
            timetableDAL = new TimeTableDAL();
        }

        public int TimeTableID { get; set; }
        public int CourseID { get; set; }
        public string Day { get; set; }
        public string StartTime { get; set; }
        public string EndTime { get; set; }
        public string RoomNumber { get; set; }


        public List<TimeTableBLL> GetTimeTableByStudentID(int studentID)
        {
            return timetableDAL.GetTimeTableByStudentID(studentID);
        }
        public List<TimeTableBLL> GetTimeTableByProfessorID(int professorID)
        {
            return timetableDAL.GetTimeTableByProfessorID(professorID);
        }
    }
}