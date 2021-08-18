<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="weapon.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="row small-spacing">
            <div class="col-lg-12 col-xs-12">
                <div class="box-content card white">
                    <h4 class="box-title">Update Weapon</h4>

                    <div class="card-content">
                       
                   
                       
                            <div class="form-group">
                                <label for="firstname">Weapon Name</label>
                               
                                <asp:TextBox ID="weaponname" runat="server" class="form-control"  placeholder="Enter Weapon Name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="lastname">bullet</label>
                                
                                <asp:TextBox ID="bullet" runat="server" class="form-control"  placeholder="Enter size of Bullet"></asp:TextBox>

                            </div>
                             <div class="form-group">
                                <label for="lastname">scope</label>
                               
                                <asp:TextBox ID="scope" runat="server" class="form-control"  placeholder="type of Scope"></asp:TextBox>

                            </div>
                             <div class="form-group">
                                <label for="lastname">weapon type</label>
                               
                                <asp:TextBox ID="weapontype" runat="server" class="form-control"  placeholder="Enter type of weapon"></asp:TextBox>

                            </div>
                             <div class="form-group">
                                <label for="lastname">Rate of fire</label>
                               
                                <asp:TextBox ID="manufacture" runat="server" class="form-control"  placeholder="no of sec to fire"></asp:TextBox>

                            </div>
                             <div class="form-group">
                                <label for="lastname">Reload duration</label>
                               
                                <asp:TextBox ID="year" runat="server" class="form-control"  placeholder="no of sec to reload the gun"></asp:TextBox>

                            </div>
                                                                                        
                                <asp:Button ID="b1" runat="server" Text="Update Result" class="btn btn-primary btn-sm waves-effect waves-light" OnClick="b1_Click"  />
                            
                        
                    </div>

                </div>

            </div>

        </div>


</asp:Content>
