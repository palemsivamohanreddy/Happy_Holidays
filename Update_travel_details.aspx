<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Happy_holidays.master" CodeFile="Update_travel_details.aspx.cs" Inherits="Default4" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="new" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table align="center" class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lbltravelid" runat="server" Text="TravelId"></asp:Label>
&nbsp;
                    <asp:DropDownList ID="ddl_travel_id" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="TravelId" DataValueField="TravelId" OnSelectedIndexChanged="ddl_travel_id_SelectedIndexChanged" Height="16px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HappyHolidaysConn %>" SelectCommand="SELECT [TravelId] FROM [Holidays_Travel]"></asp:SqlDataSource>
 </td>
            </tr>
        </table>
    
    </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table align="center" class="auto-style2">
                <tr>
                    <td>
                        <asp:Label ID="lbltraveltype" runat="server" Text="Travel Type"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl_traveltype" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblvehicaltype" runat="server" Text="Vechile Type"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl_vechiletype" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblrent" runat="server" Text="Rent"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_rent2" runat="server"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="please enter positive values" ValidationExpression="^[1-9][0-9]*(\.[0-9]+)?|0+\.[0-9]*[1-9][0-9]*$" ControlToValidate="txt_rent2"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbldisplay" runat="server" Text="Do You Wish to Disassociate with this travels?"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chk_disacc" runat="server"  />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btn_update_travel" runat="server" Text="Update Travel" OnClick="btn_update_travel_Click" style="height: 26px" />
                        <ajaxToolkit:ConfirmButtonExtender ID="btn_update_travel_ConfirmButtonExtender" runat="server" BehaviorID="btn_update_travel_ConfirmButtonExtender" ConfirmText="Are You Sure you Want to Update   ?" TargetControlID="btn_update_travel">
                        </ajaxToolkit:ConfirmButtonExtender>
                    </td>
                    <td>
                        <asp:Label ID="lbltext" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </p>
&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0066FF" NavigateUrl="~/Admin_HomePage.aspx">Go back home page</asp:HyperLink>
    
    </asp:Content>