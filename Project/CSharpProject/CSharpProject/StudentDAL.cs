using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CSharpProject.CollegeDataSetTableAdapters;
namespace CSharpProject
{

    public class StudentDAL
    {
        private StudentTableAdapter studentadp;
        private CollegeDataSet.StudentDataTable studenttbl;

        private List<StudentBLL> studentList;
        public StudentDAL()
        {
            studenttbl = new CollegeDataSet.StudentDataTable();
            studentadp = new StudentTableAdapter();
        }

        public StudentBLL GetStudent(string userName, string password)
        {
            int numOfStudent = studentadp.FillStudentByUserNameAndPassword(studenttbl, userName, password);
                StudentBLL studentBLL = null;
            if (numOfStudent == 1)
            {
                var row = studenttbl[0];
                studentBLL = new StudentBLL();
                studentBLL.UserName = row.UserName;
                studentBLL.Password = row.Password;
                studentBLL.FirstName = row.FirstName;
                studentBLL.LastName = row.LastName;
                studentBLL.Id = row.StudentID;

                studentBLL.Street = row.Street;
                studentBLL.City = row.City;
                studentBLL.Email = row.Email;
                studentBLL.PostalCode = row.PostalCode;
                studentBLL.Prov = row.Province;
                studentBLL.Phone = row.Phone;
                studentBLL.ProgramID = row.ProgramID;
            }
            return studentBLL;
        }

        public List<StudentBLL> GetStudents(int courseID)
        {
            studentadp.FillStudentInfoByCourseID(studenttbl, courseID);
            studentList = null;
            if (studenttbl.Count > 0)
            {
                foreach (var row in studenttbl)
                {


                    StudentBLL studentBLL = new StudentBLL();
                    studentBLL.UserName = row.UserName;
                    studentBLL.Password = row.Password;
                    studentBLL.FirstName = row.FirstName;
                    studentBLL.LastName = row.LastName;
                    studentBLL.Id = row.StudentID;

                    studentBLL.Street = row.Street;
                    studentBLL.City = row.City;
                    studentBLL.Email = row.Email;
                    studentBLL.PostalCode = row.PostalCode;
                    studentBLL.Prov = row.Province;
                    studentBLL.Phone = row.Phone;
                    studentBLL.ProgramID = row.ProgramID;
                    studentList.Add(studentBLL);
                }
            }
            return studentList;
        }
        public bool UpdateStudentInfo(StudentBLL std)
        {
            int numOfRowEffected = studentadp.Update(std.FirstName, std.LastName, std.Email, std.Phone, std.Street, std.City, std.Prov, std.PostalCode, std.Password, std.ProgramID, std.UserName, std.Id);
            return numOfRowEffected == 1;
        }
        public bool CheckStudent(string username, string password)
        {
            int? numOfRowEffected = studentadp.CheckStudent(username, password);
            return numOfRowEffected == 1;
        }
    }
}