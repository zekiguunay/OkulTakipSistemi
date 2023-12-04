using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineOkulSistemi.Views.Admin
{
    public partial class Schedules : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowSchedules();
                GetDepartment();
            }
            
        }
        private void ShowSchedules()
        {
            string Query = "select schedulesId as Id,Department as Dep,Day,[8to9] as first,[9to10] as second,[10to11] as Third,[11to12] as fourth,[12to13] as Fifth from SchedulesTbl";
            ScheduleList.DataSource = Con.GetData(Query);
            ScheduleList.DataBind();
        }

        private void GetDepartment()
        {
            string Query = "select * from DepartmentTbl";
            DepCb.DataTextField = Con.GetData(Query).Columns["DepName"].ToString();
            DepCb.DataValueField = Con.GetData(Query).Columns["DepId"].ToString();
            DepCb.DataSource = Con.GetData(Query);
            DepCb.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {

            try
            {
                if (DepCb.SelectedIndex == -1 || DayCb.SelectedIndex == -1 || SubCb1.SelectedIndex == -1 || SubCb2.SelectedIndex == -1 || SubCb3.SelectedIndex==-1 ||SubCb4.SelectedIndex==-1 || SubCb5.SelectedIndex==-1)
                {
                    ErrorMessage.InnerText = "Eksik veri girdiniz!!!";
                }
                else
                {
                    int Department = Convert.ToInt32(DepCb.SelectedValue.ToString());
                    string Day = DayCb.SelectedItem.ToString();
                    string Sub1 = SubCb1.SelectedItem.ToString();
                    string Sub2 = SubCb2.SelectedItem.ToString();
                    string Sub3 = SubCb3.SelectedItem.ToString();
                    string Sub4 = SubCb4.SelectedItem.ToString();
                    string Sub5 = SubCb5.SelectedItem.ToString();
                    string Query = "insert into SchedulesTbl values({0},'{1}','{2}','{3}','{4}','{5}','{6}')";
                    Query = string.Format(Query, Department, Day, Sub1, Sub2,Sub3,Sub4,Sub5);
                    Con.SetData(Query);
                    ShowSchedules();
                    ErrorMessage.InnerText = "Programlar Eklendi...";
                    DepCb.SelectedIndex = -1;
                    DayCb.SelectedIndex = -1;
                    SubCb1.SelectedIndex = -1;
                    SubCb2.SelectedIndex = -1;
                    SubCb3.SelectedIndex = -1;
                    SubCb4.SelectedIndex = -1;
                    SubCb5.SelectedIndex = -1;



                }
            }
            catch (Exception Ex)
            {
                ErrorMessage.InnerText = Ex.Message;
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (DepCb.SelectedIndex == -1 || DayCb.SelectedIndex == -1 || SubCb1.SelectedIndex == -1 || SubCb2.SelectedIndex == -1 || SubCb3.SelectedIndex == -1 || SubCb4.SelectedIndex == -1 || SubCb5.SelectedIndex == -1)
                {
                    ErrorMessage.InnerText = "Eksik veri girdiniz!!!";
                }
                else
                {
                    int Department = Convert.ToInt32(DepCb.SelectedValue.ToString());
                    string Day = DayCb.SelectedItem.ToString();
                    string Sub1 = SubCb1.SelectedItem.ToString();
                    string Sub2 = SubCb2.SelectedItem.ToString();
                    string Sub3 = SubCb3.SelectedItem.ToString();
                    string Sub4 = SubCb4.SelectedItem.ToString();
                    string Sub5 = SubCb5.SelectedItem.ToString();
                    string Query = "update SchedulesTbl set Department = {0}, Day='{1}', 8to9='{2}', 9to10='{3}', 10to11='{4}', 11to12='{5}', 12to13='{6}' where schedulesId={7}";
                    Query = string.Format(Query, Department, Day, Sub1, Sub2, Sub3, Sub4, Sub5, ScheduleList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowSchedules();
                    ErrorMessage.InnerText = "Programlar Güncellendi...";
                    DepCb.SelectedIndex = -1;
                    DayCb.SelectedIndex = -1;
                    SubCb1.SelectedIndex = -1;
                    SubCb2.SelectedIndex = -1;
                    SubCb3.SelectedIndex = -1;
                    SubCb4.SelectedIndex = -1;
                    SubCb5.SelectedIndex = -1;



                }
            }
            catch (Exception Ex)
            {
                ErrorMessage.InnerText = Ex.Message;
            }
        }
        int key = 0;
        protected void ScheduleList_SelectedIndexChanged(object sender, EventArgs e)
        {
            DepCb.SelectedValue = ScheduleList.SelectedRow.Cells[2].Text;
            DayCb.SelectedItem.Value = ScheduleList.SelectedRow.Cells[3].Text;
            SubCb1.SelectedItem.Value = ScheduleList.SelectedRow.Cells[4].Text;
            SubCb2.SelectedItem.Value = ScheduleList.SelectedRow.Cells[5].Text;
            SubCb3.SelectedItem.Value = ScheduleList.SelectedRow.Cells[6].Text;
            SubCb4.SelectedItem.Value = ScheduleList.SelectedRow.Cells[7].Text;
            SubCb5.SelectedItem.Value = ScheduleList.SelectedRow.Cells[8].Text;
            if (DepCb.SelectedIndex == -1)
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(ScheduleList.SelectedRow.Cells[1].Text);
            }
        }
    }
}