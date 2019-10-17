using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CSharpProject.CollegeDataSetTableAdapters;
namespace CSharpProject
{
    public class MarksDAL
    {
        private CollegeDataSet.MarksDataTable markstbl;
        private MarksTableAdapter marksadp;
        private List<MarksBLL> studentMarksList;

        public MarksDAL()
        {
            marksadp = new MarksTableAdapter();
            markstbl = new CollegeDataSet.MarksDataTable();
        }

        public List<MarksBLL> GetMarksByStudentID(int studentID)
        {
            marksadp.FillMarksByStudentID(markstbl, studentID);

            studentMarksList = null;
            if (markstbl.Count > 0)
            {
                studentMarksList = new List<MarksBLL>();
                foreach (var row in markstbl)
                {
                    MarksBLL marks = new MarksBLL();
                    marks.CourseID = row.CourseID;
                    marks.StudentID = row.StudentID;
                    marks.Marks = row.Marks;
                    studentMarksList.Add(marks);
                }


            }
            return studentMarksList;
        }
        public bool UpdateStudentMarks(MarksBLL marks)
        {
            int numOfRowEffected = marksadp.UpdateStudentMarks(marks.Marks, marks.CourseID, marks.StudentID);
            return numOfRowEffected == 1;
        }
        public bool InsertStudentMarks(MarksBLL marks)
        {
            int numOfRowEffected = marksadp.Insert(marks.StudentID, marks.CourseID, marks.Marks);
            return numOfRowEffected == 1;
        }
    }
}