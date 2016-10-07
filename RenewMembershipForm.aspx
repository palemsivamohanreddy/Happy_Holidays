<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Happy_holidays.master" CodeFile="RenewMembershipForm.aspx.cs" Inherits="_Default" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>


<asp:Content ID="newpage3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="Grdv" runat="server" align="center"  AutoGenerateColumns="False" CssClass="auto-style4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1033px" DataKeyNames="MembershipId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="MembershipId" HeaderText="MembershipId" ReadOnly="True" SortExpression="MembershipId" />
                <asp:BoundField DataField="MembershipType" HeaderText="MembershipType" SortExpression="MembershipType" />
                <asp:BoundField DataField="HotelDiscountPercentage" HeaderText="HotelDiscountPercentage" SortExpression="HotelDiscountPercentage" />
                <asp:BoundField DataField="MembershipFees" HeaderText="MembershipFees" SortExpression="MembershipFees" />
                <asp:BoundField DataField="MembershipDuration" HeaderText="MembershipDuration" SortExpression="MembershipDuration" />
                <asp:BoundField DataField="MaxPeopleAllowed" HeaderText="MaxPeopleAllowed" SortExpression="MaxPeopleAllowed" />
            </Columns>
        </asp:GridView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;
        <table align="center" class="auto-style3">
            <tr>
                <td>
                    <asp:Label ID="LblMType" runat="server" Text="Membership Type"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DDLMtype" runat="server" Height="22px" Width="81px">
                        <asp:ListItem>Chose a Membership type</asp:ListItem>
                        <asp:ListItem Value="111">Premier</asp:ListItem>
                        <asp:ListItem Value="112">Lite</asp:ListItem>
                        <asp:ListItem Value="113">Regular</asp:ListItem>
                        <asp:ListItem Value="114">Standard</asp:ListItem>
                        <asp:ListItem Value="115">Life-Time</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
&nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnRenew" runat="server" Text="Renew" OnClick="BtnRenew_Click" />
        <ajaxToolkit:ConfirmButtonExtender ID="BtnRenew_ConfirmButtonExtender" runat="server" BehaviorID="BtnRenew_ConfirmButtonExtender" ConfirmText="Are You Sure you Want to Renew   ?" TargetControlID="BtnRenew">
        </ajaxToolkit:ConfirmButtonExtender>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HappyHolidaysConn %>" SelectCommand="SELECT * FROM [Holidays_Membership]"></asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HylHmpg" runat="server">Go Back To Home Page</asp:HyperLink>
        <br />

    </asp:Content>
    
   