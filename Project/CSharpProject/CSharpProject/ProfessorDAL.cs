using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CSharpProject.CollegeDataSetTableAdapters;

namespace CSharpProject
{
    public class ProfessorDAL
    {
        private CollegeDataSetTableAdapters.ProfessorTableAdapter profadp;
        private CollegeDataSet.ProfessorDataTable proftbl;
        
        public ProfessorDAL()

        {
            profadp = new ProfessorTableAdapter();
            proftbl = new CollegeDataSet.ProfessorDataTable();
            
        }

        public ProfessorBLL GetProfessor(string username, string password)
        {
            int numberOfRow = profadp.FillProfessorByUserNameAndPassword(proftbl,username, password);
            ProfessorBLL professorBLL = null ;


            if (numberOfRow == 1)
            {
                var row = proftbl[0];
                professorBLL = new ProfessorBLL();
                professorBLL.UserName = row.UserName;
                professorBLL.Password = row.Password;
                professorBLL.FirstName = row.FirstName;
                professorBLL.LastName = row.LastName;
                professorBLL.Id = row.ProfessorID;
             
                professorBLL.Street = row.Street;
                professorBLL.City = row.City;
                professorBLL.Email = row.Email;
                professorBLL.PostalCode = row.PostalCode;
                professorBLL.Prov = row.Province;
                professorBLL.Phone = row.Phone;
                 
            }
            return professorBLL;
        }

        public bool UpdateProfessorInfo(ProfessorBLL prof)
        {
            int numOfRowEffected = profadp.Update(prof.FirstName, prof.LastName, prof.Email, prof.Phone, prof.Street, prof.City, prof.Prov, prof.PostalCode, prof.UserName, prof.Password, prof.Id);
            return numOfRowEffected == 1;
        }
        public bool CheckProfessor(string username, string password)
        {
            int? numOfRowEffected = profadp.CheckProfessor(username, password);
            return numOfRowEffected == 1;
        }
    }
}