<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="OnlineOkulSistemi.Views.Admin.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">
    <div class="col bg-warning">
        <h6 class="text-center">Manage students</h6>
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
                <label>Student Name</label>
                <input type="text" class="form-control" />
            </div>
          </div>
                 <div class="col">
                     <div class="mb-2">
                <label>Student EMail</label>
                <input type="email" class="form-control" />
            </div>
          </div>
        </div>   
            <div class="row mt-2">
                <div class="col">
                     <div class="mb-2">
                <label>Student Phone</label>
                <input type="text" class="form-control" />
            </div>
          </div>
                 <div class="col">
                     <div class="mb-2">
                <label>Student Adress</label>
                <input type="text" class="form-control" />
            </div>
          </div>
        </div>   
            <div class="row mt-2">
                <div class="col">
                     <div class="mb-2">
                <label>Student Date Of Birth</label>
                <input type="date" class="form-control" />
            </div>
          </div>
                 <div class="col">
                     <div class="mb-2">
                <label>Student Gender</label><br />
                <asp:DropDownList runat="server" class="form-control">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>FeMale</asp:ListItem>
                </asp:DropDownList>
            </div>
          </div>
        </div>
            <div class="row mt-2">
                <div class="col">
                     <div class="mb-2">
                <label>Student Password</label><br />
                <input type="text" class="form-control" />
              </div>
            </div>
                 <div class="col">
               <div class="mb-2">
                <label>Student Department</label>
                <asp:DropDownList runat="server" class="form-control">
                    
                </asp:DropDownList>
            
              </div>    
          </div>
          </div>
            <div class="row mt-2">
             <div class="col">
               <div class="mb-2">
                <label>Student Teacher</label><br/>
                <asp:DropDownList runat="server" class="form-control">
                    
                </asp:DropDownList>
                         
            </div>                
          </div>          
          </div>
            <div class="row mt-5">
                <div class="col d-grid">
                    <asp:Button Text="Edit" runat="server" class="btn btn-warning btn-block" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Update" runat="server" class="btn-primary btn-block" BackColor="Green" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Delete" runat="server" class="btn-danger btn-block" BackColor="Red"/>
                </div>
            </div>
          </div>
   
        <div class="col-7">
          <div class="row">
              <div class="col"><h5 class="text-center text-danger">Students List</h5></div>
          </div>
            <asp:GridView runat="server" class="table"></asp:GridView>
        </div>
        </div>
    
</asp:Content>
