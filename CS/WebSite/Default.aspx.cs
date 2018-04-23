using System;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page {
    protected void ASPxGridView1_RowModification(object sender, EventArgs e) {
        throw new MyException("Data modifications are not allowed in the online example. If you need to test the data editing functionality, please download the example on your machine and run it locally.");
    }
    protected void ASPxGridView1_CustomErrorText(object sender, ASPxGridViewCustomErrorTextEventArgs e) {
        if (e.Exception is MyException)
            e.ErrorText = e.Exception.Message;
    }
}