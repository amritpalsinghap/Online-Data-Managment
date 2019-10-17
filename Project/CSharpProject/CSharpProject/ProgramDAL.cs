using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CSharpProject.CollegeDataSetTableAdapters;
namespace CSharpProject
{
    public class ProgramDAL
    {
        private ProgramTableAdapter programadp;
        private CollegeDataSet.ProgramDataTable programtbl;

        public ProgramDAL()
        {
            programadp = new ProgramTableAdapter();
            programtbl = new CollegeDataSet.ProgramDataTable();

        }

        public ProgramBLL GetProgramInfoByStudentID(int studentID)
        {
            int result = programadp.FillProgramInfoByStudentID(programtbl, studentID);
            ProgramBLL programBLL = null;
            if (result == 1)
            {
                programBLL = new ProgramBLL();
                var row = programtbl[0];
                programBLL.ProgramID = row.ProgramID;
                programBLL.PrgramName = row.ProgramName;
                programBLL.AvailableSeats = row.AvailableSeats;
                programBLL.Semesters = row.Semesters;
            }

            return programBLL;
        }
    }
}