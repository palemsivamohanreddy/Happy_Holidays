<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Happy_holidays.master" CodeFile="Discount_Details.aspx.cs" Inherits="Discount_Details" %>

<asp:Content ID="discount" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="grdv_discount_details" runat="server" AutoGenerateColumns="False" DataKeyNames="SeasonId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="SeasonId" HeaderText="SeasonId" ReadOnly="True" SortExpression="SeasonId" />
                <asp:BoundField DataField="SeasonType" HeaderText="SeasonType" SortExpression="SeasonType" />
                <asp:BoundField DataField="StartingMonth" HeaderText="StartingMonth" SortExpression="StartingMonth" />
                <asp:BoundField DataField="EndMonth" HeaderText="EndMonth" SortExpression="EndMonth" />
                <asp:BoundField DataField="ChargePercent" HeaderText="ChargePercent" SortExpression="ChargePercent" />
            </Columns>
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HappyHolidaysConn %>" SelectCommand="SELECT * FROM [Holidays_Season]"></asp:SqlDataSource>
    
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PlanYourAccomodation.aspx">Go back to Prvious Page</asp:HyperLink>
        <br />

    
   </asp:Content>