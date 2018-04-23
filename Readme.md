# ASPxGridView - How to emulate custom and action buttons with tooltips


<p>While this functionality is not available out of the box, it is possible to emulate command buttons with HTML element and assign tooltips using default HTML approach (attribute <strong>title</strong>).<br><br>In this example, we created a Data Item Template inside the command column:</p>


```aspx
<dx:GridViewDataTextColumn Name="Command" Caption="#" VisibleIndex="0">
    <DataItemTemplate>
        <a href = "javascript:grid.AddNewRow();" title="Add new row">New</a>
        <a href = "javascript:grid.StartEditRow('<%#Container.VisibleIndex%>');" title="Start edit row '<%#Container.VisibleIndex%>'">Edit</a>
        <a href = "javascript:grid.DeleteRow('<%#Container.VisibleIndex%>');" title="Delete row '<%#Container.VisibleIndex%>'">Delete</a>
        <a href = "javascript: alert ('This is the custom button');" title="Custom action">Custom action</a>
    </DataItemTemplate>
</dx:GridViewDataTextColumn>
```



<br/>


