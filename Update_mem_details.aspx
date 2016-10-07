<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Happy_holidays.master" CodeFile="Update_mem_details.aspx.cs" Inherits="Default5" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="new" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lblmemberid" runat="server" Text="Membership Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddl_membership_id" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="MembershipType" DataValueField="MembershipType" OnSelectedIndexChanged="ddl_membership_id_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HappyHolidaysConn %>" SelectCommand="SELECT * FROM [Holidays_Membership]"></asp:SqlDataSource>
                    <br />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
        <table align="center" class="auto-style2">
            <tr>
                <td>
                    <asp:Label ID="lblmembertype" runat="server" Text="Membership Type"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbl_mem_type" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbldicount" runat="server" Text="Discount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_discount" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid data" ControlToValidate="txt_discount" ValidationExpression="^[1-9][0-9]*(\.[0-9]+)?|0+\.[0-9]*[1-9][0-9]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblfees" runat="server" Text="Processing fees"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtprocess_fees" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid data" ValidationExpression="^[1-9][0-9]*(\.[0-9]+)?|0+\.[0-9]*[1-9][0-9]*$" ControlToValidate="txtprocess_fees"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblduration" runat="server" Text="Membership Duration"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmembership_duration" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtmembership_duration" ErrorMessage="Invalid data" ValidationExpression="^[1-9][0-9]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblpeopleallow" runat="server" Text="Maximum People Allowed"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmaxi_pleallowed" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid data" ValidationExpression="^[1-9][0-9]+$" ControlToValidate="txtmaxi_pleallowed"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnupdate_mem_details" runat="server" Text="Update membership Details" OnClick="btnupdate_mem_details_Click" />
                    <ajaxToolkit:ConfirmButtonExtender ID="btnupdate_mem_details_ConfirmButtonExtender" runat="server" BehaviorID="btnupdate_mem_details_ConfirmButtonExtender" ConfirmText="Are You Sure you Want to Update   ?" TargetControlID="btnupdate_mem_details">
                    </ajaxToolkit:ConfirmButtonExtender>
                </td>
                <td>
                    <asp:Label ID="lbltext" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <p>
&nbsp;&nbsp;&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlhome" runat="server" NavigateUrl="~/Admin_HomePage.aspx">Go Back to Home Page</asp:HyperLink>
        </p>
    </asp:Content>