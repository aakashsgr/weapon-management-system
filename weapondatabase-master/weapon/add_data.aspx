<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="add_data.aspx.cs" Inherits="weapon.add_data" %>



<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
<div class="row small-spacing">
            <div class="col-lg-12 col-xs-12">
                <div class="box-content card white">
                    <h4 class="box-title">Add New Weapon</h4>

                    <div class="card-content">
                       
                            <div class="form-group">
                                <label for="firstname">Weapon Name</label>
                               
                                <asp:TextBox ID="weaponname" runat="server" class="form-control"  placeholder="Enter weapon Name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="lastname">Bullet</label>
                                
                            </div>
                        <div>
            <asp:DropDownList ID="DropDownlist1" runat="server">  
             <asp:ListItem Value="">Please Select</asp:ListItem>  
            <asp:ListItem>9mm</asp:ListItem>  
            <asp:ListItem>7.62</asp:ListItem>  
            <asp:ListItem>5.56</asp:ListItem>  
            <asp:ListItem>-45 ACP</asp:ListItem>  
            <asp:ListItem>-300 Magnum</asp:ListItem>   
            <asp:ListItem>12 Guage</asp:ListItem>
            <asp:ListItem>Bolt</asp:ListItem>
        </asp:DropDownList>  
          

                            </div>
                             <div class="form-group">
                                <label for="lastname">Scope</label>
                               
                                <asp:TextBox ID="scope" runat="server" class="form-control"  placeholder="type of scope"></asp:TextBox>

                            </div>
                             <div class="form-group">
                                <label for="lastname">Weapon Type</label>
                               
                                <asp:TextBox ID="weapontype" runat="server" class="form-control"  placeholder="enter type of weapon"></asp:TextBox>

                            </div>
                             <div class="form-group">
                                <label for="lastname">Rate of fire</label>
                               
                                <asp:TextBox ID="manufacture" runat="server" class="form-control"  placeholder="no of sec to fire"></asp:TextBox>

                            </div>
                             <div class="form-group">
                                <label for="lastname">Reload duration</label>
                               
                                <asp:TextBox ID="year" runat="server" class="form-control"  placeholder="no of sec to reload the gun"></asp:TextBox>
                                 
                                
                            </div>
                                <asp:Button ID="b1" runat="server" Text="Submit" class="btn btn-primary btn-sm waves-effect waves-light" OnClick="b1_Click" />
                                                                
                        
                        
                    </div>

                </div>

            </div>

  </div>




</asp:Content>
