using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSharpProject
{
    public class ProgramBLL
    {
        public int ProgramID { get; set; }
        public string PrgramName { get; set; }
        public int AvailableSeats { get; set; }
        public int Semesters { get; set; }
        private ProgramDAL programDAL;
        public ProgramBLL()
        {
            programDAL = new ProgramDAL();

        }
        public ProgramBLL GetProgramInfoByStudentID(int studentID)
        {
            return programDAL.GetProgramInfoByStudentID(studentID);
        }

    }
}