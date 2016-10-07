<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Happy_holidays.master" CodeFile="Update_hotel_details.aspx.cs" Inherits="Default3" %>


    <%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>


    <asp:Content ID="newpage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table align="center" class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lblcity" runat="server" Text="City"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddl_city" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CityName" DataValueField="CityName" OnSelectedIndexChanged="ddl_city_SelectedIndexChanged" style="height: 22px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HappyHolidaysConn %>"  SelectCommand="SELECT * FROM [Holidays_Hotel]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblhotel" runat="server" Text="Hotel Name"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddl_hotelname" runat="server" AutoPostBack="True" Width="80px" DataSourceID="SqlDataSource1" DataTextField="HotelName" DataValueField="HotelName">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    
    </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table align="center" class="auto-style2">
                <tr>
                    <td>
                        <asp:Label ID="lblhotelid" runat="server" Text="Hotel Id"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblhotel_id" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblcityname" runat="server" Text="City Name"></asp:Label>
                    </td>
                    <td class="auto-style1">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txt_cityname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblstarrating" runat="server" Text="Star Rating"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="opt_select" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1">one</asp:ListItem>
                            <asp:ListItem Value="2">two</asp:ListItem>
                            <asp:ListItem Value="3">three</asp:ListItem>
                            <asp:ListItem Value="4">four</asp:ListItem>
                            <asp:ListItem Value="5">five</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblrent" runat="server" Text="Rent"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_rent1" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_rent1" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[1-9][0-9]*(\.[0-9]+)?|0+\.[0-9]*[1-9][0-9]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Do You Wish To Diasscoaite With this Hotel?<br />
                    
                    <td>
                        <asp:CheckBox ID="chk_di" runat="server" OnCheckedChanged="chk_di_CheckedChanged" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btn_update_details" runat="server" Text="Update Details" OnClick="btn_update_details_Click1" />
                        <ajaxToolkit:ConfirmButtonExtender ID="btn_update_details_ConfirmButtonExtender" runat="server" BehaviorID="btn_update_details_ConfirmButtonExtender" ConfirmText="Are You Sure you Want to Update Details   ?" TargetControlID="btn_update_details">
                        </ajaxToolkit:ConfirmButtonExtender>
                    </td>
                    <td>
                        <asp:Label ID="lbltext" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlhome" runat="server" NavigateUrl="~/Admin_HomePage.aspx">Go Back To Home Page</asp:HyperLink>
            &nbsp;</p>
        </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</asp:Content>
