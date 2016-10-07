<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlanYourTravel.aspx.cs" Inherits="PlanYourTravel" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 50%;
            height: 75px;
        }
        .auto-style5 {
            margin-left: 176px;
        }
        .auto-style6 {
            margin-left: 136px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('Images/Home_Page.gif'); text-align: center;">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Hotel Booking Detials"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="grdvhotelbooking" runat="server" BackImageUrl="~/Images/Table_Background.gif" CssClass="auto-style6" Width="572px">
        </asp:GridView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Travel Detials"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="grdvtraveldetails" runat="server" AutoGenerateColumns="False" CssClass="auto-style5" DataKeyNames="TravelId" DataSourceID="SqlDataSource1" BackImageUrl="~/Images/Table_Background.gif">
            <Columns>
                <asp:BoundField DataField="TravelId" HeaderText="TravelId" ReadOnly="True" SortExpression="TravelId" />
                <asp:BoundField DataField="TravelType" HeaderText="TravelType" SortExpression="TravelType" />
                <asp:BoundField DataField="VehicleType" HeaderText="VehicleType" SortExpression="VehicleType" />
                <asp:BoundField DataField="RentPerDayPerTravel" HeaderText="RentPerDayPerTravel" SortExpression="RentPerDayPerTravel" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HappyHolidaysConn %>" SelectCommand="SELECT * FROM [Holidays_Travel]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Plan Your Travel Here.."></asp:Label>
        <br />
        <table align="center" border="1" class="auto-style4" style="border-width: medium; border-color: #FFFFFF; background-image: url('Images/Table_Background.gif')">
            <tr>
                <td>
                    <asp:Label ID="lblTravelId0" runat="server" Font-Bold="False" Text="Travel Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTravelId" runat="server" OnTextChanged="txtTravelId_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTravelDurationInDays" runat="server" Font-Bold="False" Text="Travel Duration(In Days)"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTravelDurationInDays" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSaveConfirm" runat="server" Text="Save&amp;Confirm" OnClick="btnSaveConfirm_Click" />
                    <ajaxToolkit:ConfirmButtonExtender ID="btnSaveConfirm_ConfirmButtonExtender" runat="server" BehaviorID="btnSaveConfirm_ConfirmButtonExtender" ConfirmText="Are You Sure you Want to conform  ?" TargetControlID="btnSaveConfirm">
                    </ajaxToolkit:ConfirmButtonExtender>
                </td>
                <td>
                    <asp:Button ID="btnReset" runat="server" Text="Reset" />
                </td>
            </tr>
        </table>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#660033" NavigateUrl="~/MemberHomePage.aspx">Go Back To Home Page</asp:HyperLink>
        <br />
    
    </div>
    </form>
</body>
</html>
