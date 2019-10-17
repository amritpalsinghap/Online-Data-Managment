using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CSharpProject.CollegeDataSetTableAdapters;
namespace CSharpProject
{
    public class TimeTableDAL
    {
        private CollegeDataSet.TimeTableDataTable timetbl;
        private TimeTableTableAdapter timeadp;
        private List<TimeTableBLL> timeTableList;
        public TimeTableDAL()
        {
            timeadp = new TimeTableTableAdapter();
            timetbl = new CollegeDataSet.TimeTableDataTable();
        }

        public List<TimeTableBLL> GetTimeTableByStudentID(int studentID)
        {
            timeadp.FillTimeTableByStdID(timetbl, studentID);
            timeTableList = null;

            if (timetbl.Count > 0)
            {
                TimeTableBLL timetable = new TimeTableBLL();

                foreach (var row in timetbl)
                {
                    timetable.CourseID = row.CourseID;
                    timetable.Day = row.Day;
                    timetable.EndTime = row.EndTime;
                    timetable.RoomNumber = row.RoomNumber;
                    timetable.StartTime = row.StartTime;
                    timetable.TimeTableID = row.TimeTableID;
                    timeTableList.Add(timetable);
                }
            }
            return timeTableList;

        }

        public List<TimeTableBLL> GetTimeTableByProfessorID(int professorID)
        {
            timeadp.FillTimeTableByProfID(timetbl, professorID);
            timeTableList = null;

            if (timetbl.Count > 0)
            {
                TimeTableBLL timetable = new TimeTableBLL();

                foreach (var row in timetbl)
                {
                    timetable.CourseID = row.CourseID;
                    timetable.Day = row.Day;
                    timetable.EndTime = row.EndTime;
                    timetable.RoomNumber = row.RoomNumber;
                    timetable.StartTime = row.StartTime;
                    timetable.TimeTableID = row.TimeTableID;
                    timeTableList.Add(timetable);
                }
            }
            return timeTableList;

        }
    }
}