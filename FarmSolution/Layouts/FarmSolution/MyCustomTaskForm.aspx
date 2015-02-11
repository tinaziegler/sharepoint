<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Import Namespace="Microsoft.SharePoint.ApplicationPages" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyCustomTaskForm.aspx.cs" Inherits="FarmSolution.Layouts.FarmSolution.MyCustomTaskForm" DynamicMasterPageFile="~masterurl/default.master" %>

<asp:Content ID="PageHead" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <style type="text/css">
        .taskInfo {
            width: 500px;
            border: black 2px solid;
            border-collapse: collapse;
        }

        .taskInfo > tbody > tr > td {
            border: black 1px solid;
        }

        .taskInfo td.buttons {
            border-bottom-width: 2px;
        }

        .header {
            color: white;
            background-color: #0071C6;
            font-size: 20px;
            text-align: center;
        }

        .buttons table {
            display: inline;
            vertical-align: bottom;
            width: 20px;
        }

        .field {
            width: 100px;
            background-color: #DDDDDD;
        }

        .fieldVal {
            width: 150px;
        }

        input.approve {
            background-color: #D0EED0;
        }

        input.reject {            
            background-color: #F0D0D0
        }
    </style>
</asp:Content>

<asp:Content ID="Main" ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <table class="taskInfo">
        <tr>
            <td class="header" colspan="4">
                <SharePoint:FieldValue ID="FieldValue1" runat="server" FieldName="Task Name" ControlMode="Display" />
            </td>
        </tr>
        <tr>
            <td class="field">Requested by</td>
            <td class="fieldVal">
                <SharePoint:FieldValue ID="FF_CreatedBy" runat="server" FieldName="Created By" ControlMode="Display" />
            </td>
            <td class="field">Due date</td>
            <td class="fieldVal">
                <SharePoint:FieldValue ID="FF_DueDate" runat="server" FieldName="Due Date" ControlMode="Display" />
            </td>
        </tr>
        <tr>
            <td class="field">Task details</td>
            <td class="longFieldVal" colspan="3">
                <SharePoint:FieldValue ID="FF_Body" runat="server" FieldName="Body" ControlMode="Display" />
            </td>
        </tr>
        <tr>
            <td class="buttons" colspan="4">
                        <asp:Button runat="server" ID="ApproveButton" Text="Approve" CssClass="approve" OnClick="ApproveButton_Clicked"/>
                        <asp:Button runat="server" ID="RejectButton" Text="Reject" CssClass="reject" OnClick="RejectButton_Clicked"/>
                        <SharePoint:GoBackButton runat="server" ID="GoBackButtonn" />
            </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="PageTitle" ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
<SharePoint:FieldValue ID="FF_TaskName1" runat="server" FieldName="Task Name" ControlMode="Display" />
</asp:Content>

<asp:Content ID="PageTitleInTitleArea" ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server" >
<SharePoint:FieldValue ID="FF_TaskName2" runat="server" FieldName="Task Name" ControlMode="Display" />
</asp:Content>
