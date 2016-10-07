<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Happy_holidays.master" CodeFile="Viewhotel_book_report.aspx.cs" Inherits="Default7" %>

<asp:Content ID="new" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center">Hotel Booking Report </h1>
<table align="center" class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lblfromdate" runat="server" Text="From Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_fromdate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="PLEASE INSERT DATE" ControlToValidate="txt_fromdate"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbltodate" runat="server" Text="To Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_todate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter date" ControlToValidate="txt_todate"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn_getdetails" runat="server" Text="Get details" OnClick="btn_getdetails_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <p>
            &nbsp;</p>
        <asp:GridView ID="grdv_report" runat="server" Height="217px" style="margin-left: 269px" Width="491px" OnSelectedIndexChanged="grdv_report_SelectedIndexChanged">
            <Columns>
                <asp:HyperLinkField HeaderText="Details" NavigateUrl="~/View_hotelbook_report2.aspx" Text="details" />
            </Columns>
        </asp:GridView>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="hlhome" runat="server" NavigateUrl="~/Admin_HomePage.aspx">Go Back To Home Page</asp:HyperLink>
    </asp:Content>
