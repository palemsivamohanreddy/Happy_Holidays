<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Happy_holidays.master" CodeFile="View_hotelbook_report2.aspx.cs" Inherits="Default8" %>

<asp:Content ID="new" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center"> Hotel Booking Details </h1>
    &nbsp;<asp:DetailsView ID="dtvdetails" runat="server" Height="50px" style="text-align: center; margin-left: 196px;" Width="430px" AutoGenerateRows="False" DataSourceID="SqlDataSource1" OnPageIndexChanging="DetailsView1_PageIndexChanging">
            <Fields>
                <asp:BoundField DataField="DateOfBooking" HeaderText="DateOfBooking" SortExpression="DateOfBooking" />
                <asp:BoundField DataField="DateOfStay" HeaderText="DateOfStay" SortExpression="DateOfStay" />
                <asp:BoundField DataField="PeopleAccompanied" HeaderText="PeopleAccompanied" SortExpression="PeopleAccompanied" />
                <asp:BoundField DataField="NoofRooms" HeaderText="NoofRooms" SortExpression="NoofRooms" />
                <asp:BoundField DataField="HoteStayDuration" HeaderText="HoteStayDuration" SortExpression="HoteStayDuration" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HappyHolidaysConn %>" SelectCommand="SELECT [DateOfBooking], [DateOfStay], [PeopleAccompanied], [NoofRooms], [HoteStayDuration] FROM [Holidays_HotelBooking]"></asp:SqlDataSource>
        <br />
&nbsp;</div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="hlback" runat="server" NavigateUrl="~/Viewhotel_book_report.aspx">Back</asp:HyperLink>
    
    </asp:Content>
