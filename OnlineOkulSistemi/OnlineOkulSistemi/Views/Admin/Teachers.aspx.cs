using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineOkulSistemi.Views.Admin
{
    public partial class Teachers : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowTeachers();
        }

        private void ShowTeachers()
        {
            string Query = "select * from OgretmenTbl";
            TeachersList.DataSource = Con.GetData(Query);
            TeachersList.DataBind();
        }
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            try
            {
                if (TeacherNameTb.Value=="" || TeacherEmailTb.Value=="" || TeacherSalaryTb.Value=="" || TeacherPasswordTb.Value=="")
                {
                    ErrorMessage.InnerText = "Eksik veri girdiniz!!!";
                }
                else
                {
                    string Name = TeacherNameTb.Value;
                    string Email = TeacherEmailTb.Value;
                    string Salary = TeacherSalaryTb.Value;
                    string Password = TeacherPasswordTb.Value;
                    string Query = "insert into OgretmenTbl values('{0}','{1}','{2}','{3}','{4}')";
                    Query = string.Format(Query, Name, Email,TeacherBirthTb.Value.ToString().Substring(0,10), Salary, Password);
                    Con.SetData(Query);
                    ShowTeachers();
                    ErrorMessage.InnerText = "Öğretmen Kaydı Eklendi...";
                    TeacherNameTb.Value = "";
                    TeacherEmailTb.Value = "";
                    TeacherBirthTb.Value = "";
                    TeacherSalaryTb.Value = "";
                    TeacherPasswordTb.Value = "";



                }
            }
            catch (Exception Ex)
            {
                ErrorMessage.InnerText = Ex.Message;
            }
        }
        int key = 0;
        protected void TeachersList_SelectedIndexChanged(object sender, EventArgs e)
        {
            // TeacherNameTb.Value = TeachersList.SelectedRow.Cells[1].Text;
            TeacherNameTb.Value = TeachersList.SelectedRow.Cells[2].Text;
            TeacherEmailTb.Value = TeachersList.SelectedRow.Cells[3].Text;
            TeacherBirthTb.Value = TeachersList.SelectedRow.Cells[4].Text;
            TeacherSalaryTb.Value = TeachersList.SelectedRow.Cells[5].Text;
            TeacherPasswordTb.Value = TeachersList.SelectedRow.Cells[6].Text;
            if (TeacherNameTb.Value=="")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(TeachersList.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (TeacherNameTb.Value == "" || TeacherEmailTb.Value == "" || TeacherSalaryTb.Value == "" || TeacherPasswordTb.Value == "")
                {
                    ErrorMessage.InnerText = "Eksik veri girdiniz!!!";
                }
                else
                {
                    string Name = TeacherNameTb.Value;
                    string Email = TeacherEmailTb.Value;
                    string Salary = TeacherSalaryTb.Value;
                    string Password = TeacherPasswordTb.Value;
                    string Query = "update  OgretmenTbl set OgretmenAdi= '{0}',OgretmenEMail='{1}',OgretmenDogumTarihi='{2}',OgretmenMaas='{3}',OgretmenSifre='{4}' where OgretmenId={5}";
                    Query = string.Format(Query, Name, Email, TeacherBirthTb.Value.ToString().Substring(0, 10), Salary, Password,key);
                    Con.SetData(Query);
                    ShowTeachers();
                    ErrorMessage.InnerText = "Öğretmen Kaydı Güncellendi...";
                    TeacherNameTb.Value = "";
                    TeacherEmailTb.Value = "";
                    TeacherBirthTb.Value = "";
                    TeacherSalaryTb.Value = "";
                    TeacherPasswordTb.Value = "";



                }
            }
            catch (Exception Ex)
            {
                ErrorMessage.InnerText = Ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (TeacherNameTb.Value == "" || TeacherEmailTb.Value == "" || TeacherSalaryTb.Value == "" || TeacherPasswordTb.Value == "")
                {
                    ErrorMessage.InnerText = "Eksik veri girdiniz!!!";
                }
                else
                {
                    string Name = TeacherNameTb.Value;
                    string Email = TeacherEmailTb.Value;
                    string Salary = TeacherSalaryTb.Value;
                    string Password = TeacherPasswordTb.Value;
                    string Query = "delete from  OgretmenTbl  where OgretmenId={0}";
                    Query = string.Format(Query, TeacherNameTb.Value = TeachersList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowTeachers();
                    ErrorMessage.InnerText = "Öğretmen Kaydı Silindi...";
                    TeacherNameTb.Value = "";
                    TeacherEmailTb.Value = "";
                    TeacherBirthTb.Value = "";
                    TeacherSalaryTb.Value = "";
                    TeacherPasswordTb.Value = "";



                }
            }
            catch (Exception Ex)
            {
                ErrorMessage.InnerText = Ex.Message;
            }
        }
    }
  
}

