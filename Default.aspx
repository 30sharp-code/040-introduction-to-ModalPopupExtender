<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ModalPopupExtender -- 30sharp.com</title>
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
    document.bgColor=SelectedColorName;
}
    
</script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <br />
       <div>
            <asp:LinkButton ID="LinkButton1" runat="server">Click Here For Change Color</asp:LinkButton><br />
            <br />
            <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" Style="display: none"
                Width="233px" Direction="RightToLeft">
                <p>
                    آیا مایل هستید :</p>
                <input id="RadioA" name="Radio" onclick="SelectedColorName = 'Yellow';" type="radio"  />
                <label for="RadioA" class="YellowColor" >
                    رنگ پس زمینه زرد شود.</label><br />
                <input id="RadioB" name="Radio" onclick="SelectedColorName = 'Red';" type="radio" />
                <label class="RedColor" for="RadioB" >
                    رنگ پس زمینه قرمز شود.</label><br />
                
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
             OkControlID="btnOk"
             OnOkScript="onOk()"
             CancelControlID="btnCancel"
            />
        </div>
    </form>
</body>
</html>
