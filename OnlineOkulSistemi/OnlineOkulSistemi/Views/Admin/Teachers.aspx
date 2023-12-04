<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Teachers.aspx.cs" Inherits="OnlineOkulSistemi.Views.Admin.Teachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="row">
    <div class="col bg-warning">
        <h6 class="text-center">Öğretmen Yönetimi</h6>
    </div>
    </div>
    <div class="row">
        <div class="col-5">
            <div class="row">
                <div class="col"></div>
                <div class="col">
                    <img src="../../Assets/Images/icons8-teacher-48.png"/>
                </div>
                <div class="col"></div>
            </div>
            <div class="row mt-5">
                <div class="col">
                     <div class="mb-2">
                <label>Öğretmen Adı</label>
                <input type="text" runat="server" id="TeacherNameTb" class="form-control" />
            </div>
          </div>
              
        </div>   
            <div class="row mt-2">
                <div class="col">
                     <div class="mb-2">
                <label>Öğretmen EPosta</label>
                <input type="text" runat="server" id="TeacherEmailTb" class="form-control" />
            </div>
          </div>
              
        </div>   
            <div class="row mt-2">
                <div class="col">
                     <div class="mb-2">
                <label>Öğretmen Doğum Tarihi</label>
                <input type="date" runat="server" id="TeacherBirthTb" class="form-control" />
            </div>
          </div>
                
        </div>
            <div class="row mt-2">
                <div class="col">
                     <div class="mb-2">
                <label>Öğretmen Maaş</label><br />
                <input type="text" id="TeacherSalaryTb" runat="server"  class="form-control" />
              </div>
            </div>
                
          </div>
            <div class="row mt-2">
             <div class="col">
               <div class="mb-2">
                <label>Öğretmen Şifre</label><br/>
                <input type="text" runat="server" id="TeacherPasswordTb" class="form-control" />
                         
            </div>                
          </div>          
          </div>
            <div class="row mt-5">
                <label class="text-center text-danger" id="ErrorMessage" runat="server"></label>
                <div class="col d-grid">
                    <asp:Button Text="Update" runat="server" ID="EditBtn" class="btn btn-warning btn-block" OnClick="EditBtn_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Save" runat="server" class="btn-primary btn-block" BackColor="Green" OnClick="Unnamed2_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Delete" runat="server" ID="DeleteBtn" class="btn-danger btn-block" BackColor="Red" OnClick="DeleteBtn_Click"/>
                </div>
            </div>
          </div>
   
        <div class="col-7">
          <div class="row">
              <div class="col"><h5 class="text-center text-danger">Öğretmenler Listesi</h5></div>
          </div>
            <asp:GridView runat="server" ID="TeachersList" class="table" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="TeachersList_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
        </div>
</asp:Content>
