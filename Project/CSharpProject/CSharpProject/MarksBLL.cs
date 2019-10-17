using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharpProject
{
    public class MarksBLL
    {
        public int StudentID { get; set; }
        public int CourseID { get; set; }
        public int Marks { get; set; }
        private MarksDAL marksDAL;
        public MarksBLL()
        {
            marksDAL = new MarksDAL();
        }

        public List<MarksBLL> GetMarksByStudentID(int studentID)
        {
            return marksDAL.GetMarksByStudentID(studentID);
        }
        public bool UpdateStudentMarks(MarksBLL marks)
        {
            return marksDAL.UpdateStudentMarks(marks);
        }
        public bool InsertStudentMarks(MarksBLL marks)
        {
            return marksDAL.InsertStudentMarks(marks);
        }
    }


}