using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace OnlineOkulSistemi.Views.Admin
{
    
    public partial class Departments : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowDepartments();
        }
        private void ShowDepartments()
        {
            string Query = "select * from DepartmentTbl";
            DepartmentsList.DataSource = Con.GetData(Query);
            DepartmentsList.DataBind();
        }
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (DepartmentName.Value == "" || DepartmentRemark.Value == "")
                {
                    ErrorMessage.InnerText = "Eksik veri girdiniz!!!";
                }
                else
                {
                    string Department = DepartmentName.Value;
                    string Remark = DepartmentRemark.Value;
                    string Query = "Insert Into DepartmentTbl values('{0}','{1}')";
                    Query = string.Format(Query,Department,Remark);
                    Con.SetData(Query);
                    ShowDepartments();
                    ErrorMessage.InnerText = "Bölüm Kaydı Eklendi...";
                    DepartmentName.Value = "";
                    DepartmentRemark.Value = "";



                }
            }
            catch (Exception Ex)
            {
                ErrorMessage.InnerText = Ex.Message;
            }
        }
        int key = 0;
        protected void DepartmentsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            // TeacherNameTb.Value = TeachersList.SelectedRow.Cells[1].Text;
            DepartmentName.Value = DepartmentsList.SelectedRow.Cells[2].Text;
            DepartmentRemark.Value = DepartmentsList.SelectedRow.Cells[3].Text;
            if (DepartmentName.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(DepartmentsList.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (DepartmentName.Value == "" || DepartmentRemark.Value == "")
                {
                    ErrorMessage.InnerText = "Eksik veri girdiniz!!!";
                }
                else
                {
                    string Department = DepartmentName.Value;
                    string Remark = DepartmentRemark.Value;
                    string Query = "update  DepartmentTbl set DepName='{0}',DepRemark='{1}' where DepId='{2}'";
                    Query = string.Format(Query, Department, Remark, DepartmentsList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowDepartments();
                    ErrorMessage.InnerText = "Bölüm Kaydı Güncellendi...";
                    DepartmentName.Value = "";
                    DepartmentRemark.Value = "";



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
                if (DepartmentName.Value == "" || DepartmentRemark.Value == "")
                {
                    ErrorMessage.InnerText = "Eksik veri girdiniz!!!";
                }
                else
                {
                    string Department = DepartmentName.Value;
                    string Remark = DepartmentRemark.Value;
                    string Query = "delete from  DepartmentTbl where DepId='{0}'";
                    Query = string.Format(Query,DepartmentsList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowDepartments();
                    ErrorMessage.InnerText = "Bölüm Kaydı silindi...";
                    DepartmentName.Value = "";
                    DepartmentRemark.Value = "";



                }
            }
            catch (Exception Ex)
            {
                ErrorMessage.InnerText = Ex.Message;
            }
        }
    }
}