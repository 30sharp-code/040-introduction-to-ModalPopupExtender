<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ModalPopup Extender -- 30sharp.com</title>
    <style type="text/css">
.ModalBackColor
{
	background-color:Gray;
	filter:alpha(opacity=70);
	opacity:0.7;
}
.modalPopup {
	background-color:#ffffdd;
	border-width:3px;
	border-style:solid;
	border-color:Gray;
	padding:3px;
	width:250px;
}
    </style>
<script type="text/javascript">
 var SelectedColorName;
function onOk() {
__doPostBack('LinkButton1','');
}

</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Click Here For Redirecting To 30sharp.com</asp:LinkButton><br />
            <br />
<asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" Direction="RightToLeft"
    Style="display: none" Width="233px">
    <p>
        آیا مایل هستید به سایت 30sharp.com انتقال یابید؟</p>
    
    <br />
    <div align="center">
        <asp:Button ID="btnOk" runat="server" Text="OK" />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
    </div>
</asp:Panel>
            <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
              TargetControlID="LinkButton1"
             PopupControlID="Panel1"
             BackgroundCssClass="ModalBackColor"
             DropShadow="true"
             OkControlID="btnOK"
             OnOkScript="onOk()"
             CancelControlID="btnCancel"
            />

        </div>
    
    </div>
     
    </form>
</body>
</html>
