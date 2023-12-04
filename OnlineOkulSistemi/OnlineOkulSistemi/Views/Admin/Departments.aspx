<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="OnlineOkulSistemi.Views.Admin.Departments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="row">
    <div class="col bg-warning">
        <h5 class="text-center">Departments List</h5>
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
                <label>Department Name</label><br />
                <input type="text" runat="server" id="DepartmentName" class="form-control"/>
                        

            </div>

          </div>

                 <div class="col">
                     <div class="mb-2">
                 <label>Remarks</label><br />
                <input type="text" runat="server" id="DepartmentRemark" class="form-control"/>

            </div>

          </div>
           <div class="row mt-2">

           </div>
           
            <div class="row mt-5">
                <label id="ErrorMessage" runat="server" class="text-center text-danger"></label>
                <div class="col d-grid">
                    <asp:Button Text="Güncelle" runat="server" ID="EditBtn" class="btn btn-warning btn-block" OnClick="EditBtn_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Kaydet" runat="server" ID="SaveBtn" class="btn-primary btn-block" BackColor="Green" OnClick="SaveBtn_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Sil" runat="server" ID="DeleteBtn" class="btn-danger btn-block" BackColor="Red" OnClick="DeleteBtn_Click"/>
                </div>
            </div>
          </div>
   </div>
        <div class="col-7">
          <div class="row">
              <div class="col"><h5 class="text-center text-danger">Departments List</h5></div>
          </div>
            <asp:GridView runat="server" ID="DepartmentsList" class="table" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="DepartmentsList_SelectedIndexChanged">
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
