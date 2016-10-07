<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Happy_holidays.master" CodeFile="MemberRegistaration.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="newpage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Member Resistration</h1> <br />
    
        <table align="center" class="auto-style1" style="background-image: url('Images/Table_Background.gif')"  >
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="User Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter UserName" ForeColor="Red" ControlToValidate="txtusername"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                    <ajaxToolkit:PasswordStrength ID="txtpassword_PasswordStrength" runat="server" BehaviorID="txtpassword_PasswordStrength" TargetControlID="txtpassword">
                    </ajaxToolkit:PasswordStrength>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpassword" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Confirm Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcpassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtcpassword" ErrorMessage="password is not same"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Member Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtname" ErrorMessage="Enter name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Address :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtadress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtadress" ErrorMessage="Enter adress"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Phone :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtphone" ErrorMessage="Enter phone "></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Mail :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter email"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
    
        <asp:GridView ID="Grdv_Rmr" runat="server" Width="1021px" BackImageUrl="~/Images/Table_Background.gif" AutoGenerateColumns="False" DataKeyNames="MembershipId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="MembershipId" HeaderText="MembershipId" ReadOnly="True" SortExpression="MembershipId" />
                <asp:BoundField DataField="MembershipType" HeaderText="MembershipType" SortExpression="MembershipType" />
                <asp:BoundField DataField="HotelDiscountPercentage" HeaderText="HotelDiscountPercentage" SortExpression="HotelDiscountPercentage" />
                <asp:BoundField DataField="MembershipFees" HeaderText="MembershipFees" SortExpression="MembershipFees" />
                <asp:BoundField DataField="MembershipDuration" HeaderText="MembershipDuration" SortExpression="MembershipDuration" />
                <asp:BoundField DataField="MaxPeopleAllowed" HeaderText="MaxPeopleAllowed" SortExpression="MaxPeopleAllowed" />
            </Columns>
        </asp:GridView>
    
    </div>
        <table align="center" class="auto-style2" style="background-image: url('Images/Table_Background.gif')" >
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label38" runat="server" Text="MemberShip Type Id"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlMembershipType" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem Value="111">Premier</asp:ListItem>
                        <asp:ListItem Value="112">Life time</asp:ListItem>
                        <asp:ListItem Value="113">standard</asp:ListItem>
                        <asp:ListItem Value="114">lite</asp:ListItem>
                        <asp:ListItem Value="115">regular</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please select the Membership type" ForeColor="Red" ControlToValidate="ddlMembershipType"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnregister" runat="server" Text="Register" OnClick="Button1_Click" />
                    <ajaxToolkit:ConfirmButtonExtender ID="btnregister_ConfirmButtonExtender" runat="server" BehaviorID="btnregister_ConfirmButtonExtender" ConfirmText="Are You Sure you Want to Register   ?" TargetControlID="btnregister" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HappyHolidaysConn %>" SelectCommand="SELECT * FROM [Holidays_Membership]"></asp:SqlDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0066CC">Go Back to Home Page</asp:HyperLink>
    </asp:Content>