<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="OutlookAccountGenerator.List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
       <div class="container">
                   <asp:Button id="btnGetExcel"  class="waves-effect waves-light btn" runat="server" Text="Get Excel File" OnClick="btnGetExcel_Click"></asp:Button>
        <asp:Table ID="tableAccount" class="striped" runat="server">
            <asp:TableHeaderRow id="Table1HeaderRow" 
            BackColor="LightBlue"
            runat="server">
            <asp:TableHeaderCell 
                Scope="Column" 
                Text="Index" />
            <asp:TableHeaderCell  
                Scope="Column" 
                Text="Account" />
            <asp:TableHeaderCell 
                Scope="Column" 
                Text="Password" />
            <asp:TableHeaderCell 
                Scope="Column" 
                Text="Applicant" />
        </asp:TableHeaderRow>              
        </asp:Table>
           </div>                 
      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>
