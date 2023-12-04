<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Schedules.aspx.cs" Inherits="OnlineOkulSistemi.Views.Admin.Schedules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="row">
    <div class="col bg-warning">
        <h6 class="text-center">Manage Time Table</h6>
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
                <label>Deparment Name</label><br />
                <asp:DropDownList runat="server" id="DepCb" class="form-control">
                    
                </asp:DropDownList>

            </div>

          </div>

                 <div class="col">
                     <div class="mb-2">
                 <label>Day</label><br />
                <asp:DropDownList runat="server" id="DayCb" class="form-control">
                    <asp:ListItem>Pazartesi</asp:ListItem>
                      <asp:ListItem>Sali</asp:ListItem>
                      <asp:ListItem>Carsamba</asp:ListItem>
                      <asp:ListItem>Persembe</asp:ListItem>
                      <asp:ListItem>Cuma</asp:ListItem>
                </asp:DropDownList>

            </div>

          </div>
                
            <div class="row mt-2">
                <div class="col">
                     <div class="mb-2">
                <label>8AM-9AM</label>
                <asp:DropDownList runat="server" id="SubCb1" class="form-control">
                     <asp:ListItem>Matematik</asp:ListItem>
                      <asp:ListItem>Ingilizce</asp:ListItem>
                      <asp:ListItem>Cografya</asp:ListItem>
                      <asp:ListItem>Tarih</asp:ListItem>
                      <asp:ListItem>Turkce</asp:ListItem>
                    <asp:ListItem>Bilgisayar</asp:ListItem>
                    <asp:ListItem>Edebiyat</asp:ListItem>
                    <asp:ListItem>Beden Egitimi</asp:ListItem>
                </asp:DropDownList>
            </div>
          </div>
                
        </div>
            <div class="row mt-2">
                <div class="col">
                     <div class="mb-2">
                <label>9AM-10AM</label><br />
                <asp:DropDownList runat="server" id="SubCb2" class="form-control">
                    <asp:ListItem>Matematik</asp:ListItem>
                      <asp:ListItem>Ingilizce</asp:ListItem>
                      <asp:ListItem>Cografya</asp:ListItem>
                      <asp:ListItem>Tarih</asp:ListItem>
                      <asp:ListItem>Turkce</asp:ListItem>
                    <asp:ListItem>Bilgisayar</asp:ListItem>
                    <asp:ListItem>Edebiyat</asp:ListItem>
                    <asp:ListItem>Beden Egitimi</asp:ListItem>
                </asp:DropDownList>
              </div>
            </div>
                
          </div>
             <div class="row mt-2">
                <div class="col">
                     <div class="mb-2">
                <label>10AM-11AM</label><br />
                <asp:DropDownList runat="server" id="SubCb3" class="form-control">
                    <asp:ListItem>Matematik</asp:ListItem>
                      <asp:ListItem>Ingilizce</asp:ListItem>
                      <asp:ListItem>Cografya</asp:ListItem>
                      <asp:ListItem>Tarih</asp:ListItem>
                      <asp:ListItem>Turkce</asp:ListItem>
                    <asp:ListItem>Bilgisayar</asp:ListItem>
                    <asp:ListItem>Edebiyat</asp:ListItem>
                    <asp:ListItem>Beden Egitimi</asp:ListItem>
                </asp:DropDownList>
              </div>
            </div>
                
          </div>
             <div class="row mt-2">
                <div class="col">
                     <div class="mb-2">
                <label>11AM-12PM</label><br />
                <asp:DropDownList runat="server" id="SubCb4" class="form-control">
                    <asp:ListItem>Matematik</asp:ListItem>
                      <asp:ListItem>Ingilizce</asp:ListItem>
                      <asp:ListItem>Cografya</asp:ListItem>
                      <asp:ListItem>Tarih</asp:ListItem>
                      <asp:ListItem>Turkce</asp:ListItem>
                    <asp:ListItem>Bilgisayar</asp:ListItem>
                    <asp:ListItem>Edebiyat</asp:ListItem>
                    <asp:ListItem>Beden Egitimi</asp:ListItem>
                </asp:DropDownList>
              </div>
            </div>
                
          </div>
                 <div class="row mt-2">
                <div class="col">
                     <div class="mb-2">
                <label>12AM-1PM</label><br />
                <asp:DropDownList runat="server" id="SubCb5" class="form-control">
                    <asp:ListItem>Matematik</asp:ListItem>
                      <asp:ListItem>Ingilizce</asp:ListItem>
                      <asp:ListItem>Cografya</asp:ListItem>
                      <asp:ListItem>Tarih</asp:ListItem>
                      <asp:ListItem>Turkce</asp:ListItem>
                    <asp:ListItem>Bilgisayar</asp:ListItem>
                    <asp:ListItem>Edebiyat</asp:ListItem>
                    <asp:ListItem>Beden Egitimi</asp:ListItem>
                </asp:DropDownList>
              </div>
            </div>
                
          </div>
           
            <div class="row mt-5">
               <label class="text-center text-danger" id="ErrorMessage" runat="server"></label>
                <div class="col d-grid">
                    <asp:Button Text="Düzenle" runat="server" ID="EditBtn" class="btn btn-warning btn-block" OnClick="EditBtn_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Kaydet" runat="server" ID="SaveBtn" class="btn-primary btn-block" BackColor="Green" OnClick="SaveBtn_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Sil" runat="server" ID="DeleteBtn" class="btn-danger btn-block" BackColor="Red"/>
                </div>
            </div>
          </div>
   </div>
        <div class="col-7">
          <div class="row">
              <div class="col"><h5 class="text-center text-danger">Schedules List</h5></div>
          </div>
            <asp:GridView runat="server" ID="ScheduleList" class="table" AutoGenerateSelectButton="True" OnSelectedIndexChanged="ScheduleList_SelectedIndexChanged"></asp:GridView>
        </div>
        </div>
</asp:Content>
