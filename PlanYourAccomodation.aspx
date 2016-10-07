<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlanYourAccomodation.aspx.cs" Inherits="PlanYourAccomodation" %>



<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            height: 70px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            height: 810px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style3" style="background-image: url('images/Home_Page.gif')">
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="lblAccomodationHeading" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#993399" Text="Plan Your Accomodation Here.."></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table align="center" class="auto-style1" style="background-image: url('images/Table_Background.gif')">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblCity" runat="server" Text="Choose the city for the Hotel Booking"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCity" runat="server" DataTextField="CityName" DataValueField="CityName" OnSelectedIndexChanged="ddlCityHotelBooking_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem Text="--Select City--"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlCity" ErrorMessage="hotel booking is mandatory"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblHotel" runat="server" Text="Choose Hotel"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlHotel" runat="server" DataTextField="HotelName" DataValueField="HotelName" AutoPostBack="True">
                        <asp:ListItem Text="--Select Hotel--"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlHotel" ErrorMessage="hotel is mandatary"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblPeople" runat="server" Text="Number of People"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNumberOfPeople" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNumberOfPeople" ErrorMessage="people are mandatory"></asp:RequiredFieldValidator>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNumberOfPeople" ErrorMessage="invalid data" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblRooms" runat="server" Text="Number of rooms"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNumberOfRooms" runat="server" EnableTheming="True"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNumberOfRooms" ErrorMessage="rooms are mandatory"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtNumberOfRooms" ErrorMessage="invalid data" ValidationExpression="^([0-999]*,?)*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblDateOfStay" runat="server" Text="Date Of Stay"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDateOfStay" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtDateOfStay_CalendarExtender" runat="server" BehaviorID="txtDateOfStay_CalendarExtender" EndDate="2016-09-15" StartDate="2016-06-15" TargetControlID="txtDateOfStay" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDateOfStay" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
                    <asp:HyperLink ID="HyperLinkDiscount" runat="server" NavigateUrl="~/Discount_Details.aspx">Discount Details</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblNumberOfDays" runat="server" Text="Number Of Days"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNumberOfDays" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtNumberOfDays" ErrorMessage="no of days is mandatory"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtNumberOfDays" ErrorMessage="invalid data" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="Save &amp; Confirm" OnClick="btnSave_Click" />
                </td>
                <td>
                    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                </td>
            </tr>
        </table>
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" NavigateUrl="~/MemberHomePage.aspx">Go Back To Home Page</asp:HyperLink>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
