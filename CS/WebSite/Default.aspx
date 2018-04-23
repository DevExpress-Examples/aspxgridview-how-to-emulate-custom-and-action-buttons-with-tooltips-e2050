﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" KeyFieldName="CategoryID" ClientInstanceName="grid"
            OnRowInserting="ASPxGridView1_RowModification" OnRowUpdating="ASPxGridView1_RowModification" OnRowDeleting="ASPxGridView1_RowModification" OnCustomErrorText="ASPxGridView1_CustomErrorText">
            <Columns>
                <dx:GridViewDataTextColumn Name="Command" Caption="#" VisibleIndex="0">
                    <EditFormSettings Visible="False" />
                    <DataItemTemplate>
                        <a href = "javascript:grid.AddNewRow();" title="Add new row">New</a>
                        <a href = "javascript:grid.StartEditRow('<%#Container.VisibleIndex%>');" title="Start edit row '<%#Container.VisibleIndex%>'">Edit</a>
                        <a href = "javascript:grid.DeleteRow('<%#Container.VisibleIndex%>');" title="Delete row '<%#Container.VisibleIndex%>'">Delete</a>
                        <a href = "javascript: alert ('This is the custom button');" title="Custom action">Custom action</a>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT * FROM [Categories]" DeleteCommand="DELETE FROM [Categories] WHERE [CategoryID] = ?"
            InsertCommand="INSERT INTO [Categories] ([CategoryName], [Description]) VALUES (?, ?)"
            UpdateCommand="UPDATE [Categories] SET [CategoryName] = ?, [Description] = ? WHERE [CategoryID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="CategoryID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
