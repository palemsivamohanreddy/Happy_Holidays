<%@ Page Title="" Language="C#" MasterPageFile="~/Happy_holidays.master" AutoEventWireup="true" CodeFile="Plan_Your_Travel_make_Payment.aspx.cs" Inherits="Plan_Your_Travel_MAke_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style3" align="center">
        <tr>
            <td class="auto-style4" style="background-color: #C0C0C0">
                General Details</td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="dtvgenral" runat="server" Height="50px" Width="994px">
                </asp:DetailsView>
                <br />
                <br />
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style4" style="background-color: #C0C0C0">Hotel Billing Details</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DetailsView ID="dtvhotel" runat="server" Height="50px" Width="1026px">
                            </asp:DetailsView>
                            <br />
                            <asp:DetailsView ID="dtvtravel" runat="server" Height="50px" Width="1026px">
                            </asp:DetailsView>
                            <br />
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" />
                           
                            </asp:Content>