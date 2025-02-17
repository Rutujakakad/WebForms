using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EmployeeWebForms.Model
{
    public class Employee
    {
        public int Id { get; set; }
        public string EmpName {  get; set; }
        public string Position {  get; set; }
        public decimal Salary {  get; set; }
    }
}