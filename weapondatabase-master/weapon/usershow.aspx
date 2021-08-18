<%@ Page Title="" Language="C#" MasterPageFile="~/dis.Master" AutoEventWireup="true" CodeBehind="usershow.aspx.cs" Inherits="weapon.usershow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    
     <div class="row small-spacing">
            <div class="col-lg-12 col-xs-12">
                <div class="box-content card white">
                    <h4 class="box-title">Weapons</h4>
                    <br />
                    <table class="table">
                        <tr>
                            <td><label for="firstname" style="margin-top:10px">Weapon Name</label></td>
                            <td><asp:TextBox ID="weaponname" runat="server" class="form-control"  placeholder="Enter Weapon name"></asp:TextBox></td>
                            <td><asp:Button ID="b1" runat="server" Text="Search" class="btn btn-primary btn-sm waves-effect waves-light" style="margin-top:10px" OnClick="b1_Click" /></td>

                        </tr>
                    </table>
                    <asp:Repeater ID="r1" runat="server">
                        <HeaderTemplate>
                            <table class="table table-bordered">
                                <tr>
                                    <th>weaponname</th>
                                    <th>bullet</th>
                                    <th>scope</th>
                                    <th>weapontype</th>
                                    <th>rateoffire</th>
                                    <th>reloadduration</th>
                                     
                               
                                </tr>
                        </HeaderTemplate>
                        
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("weaponname") %></td>
                                <td><%#Eval("bullet") %></td>
                                <td><%#Eval("scope") %></td>
                                <td><%#Eval("weapontype") %></td>
                                <td><%#Eval("rateoffire") %></td>
                                <td><%#Eval("reloadduration") %></td>
                               
                             


                            </tr>
                        </ItemTemplate>
                         
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                                                        

                    </div>
                </div>
        </div>



</asp:Content>


