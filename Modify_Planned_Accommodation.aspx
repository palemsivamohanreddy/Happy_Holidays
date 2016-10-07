<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Happy_holidays.master" CodeFile="Modify_Planned_Accommodation.aspx.cs" Inherits="Modify_Planned_Accommodation" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="modify" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Modify The Hotel Booking Details.... <asp:Label ID="Label1" runat="server"></asp:Label>
    </h1>
        <br />
        <br />
        <table align="center" class="auto-style1">
            <tr>
                <td>
                    <table align="center" class="auto-style4">
                        <tr>
                            <td>
                                <asp:Label ID="lblhid" runat="server" Text="HotelBooking Id"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlBookingId" runat="server" OnSelectedIndexChanged="ddlBookingId_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlBookingId" ErrorMessage="Please Select hotelBooking Id" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="grdvhoteldetails" align="center" runat="server">
    </asp:GridView>
        <br />
        <br />
        <br />
        <table align="center" class="auto-style7">
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="lblnoofpeople" runat="server" Text="NumberOfPeople"></asp:Label>
                    <br />
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtnumberofpeople" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtnumberofpeople" ErrorMessage="invalid data" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnumberofpeople" ErrorMessage="Please enter the number of people" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblrooms" runat="server" Text="NumberOfRooms"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txtnumberofrooms" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtnumberofrooms" ErrorMessage="invalid data" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtnumberofrooms" ErrorMessage="Please enter number of rooms" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblduration" runat="server" Text="Duration"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txtduration" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtduration" ErrorMessage="invalid data" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtduration" ErrorMessage="please enter the duration of stay" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnedithotelbooking" runat="server" Text="EditHotelBooking" OnClick="btnedithotelbooking_Click" />
                    <ajaxToolkit:ConfirmButtonExtender ID="btnedithotelbooking_ConfirmButtonExtender" runat="server" BehaviorID="btnedithotelbooking_ConfirmButtonExtender" ConfirmText="Are You Sure you Want to continue   ?" TargetControlID="btnedithotelbooking" />
                </td>
                <td>
                    <asp:Button ID="btnreset" runat="server" Text="Reset" OnClick="btnreset_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Lbldisplay" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="hlhomepage" runat="server" NavigateUrl="~/MemberHomePage.aspx">Go Back To HomePage</asp:HyperLink>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:ScriptManager ID="ScriptManager2" runat="server">
    </asp:ScriptManager>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
   </asp:Content>