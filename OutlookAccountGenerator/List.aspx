<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="OutlookAccountGenerator.List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
      <!--Import Google Icon Font-->
    <link href="Scripts/style.css" rel="stylesheet" />
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>



        body{
/*color for full background */
            background-color:#1e1e1e;
        }
        #tableAccount{
/*color for font */
            color:#9e9e9e;
        }
    </style>
</head>
<body>
        <nav class="element">
        <div class="nav-wrapper">
            <a href="#" class="brand-logo">Outlook Account Generator </a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="fallenzone.io">HOME</a></li>
            </ul>
        </div>
    </nav>
    <div>
         </div>

        <form  id="formAccount" runat="server" class="  content">
            <asp:Button style="width:100%; border-radius:0;" id="btnGetExcel"  class="sticky vs-btn-theme  waves-effect waves-orange btn" runat="server" Text="Get Excel File" OnClick="btnGetExcel_Click"></asp:Button>
    
       <div class="container">
                   
        <asp:Table ID="tableAccount" class=" responsive-table" runat="server">
            <asp:TableHeaderRow id="Table1HeaderRow" 
            BackColor="#1e1e1e"
            
            runat="server">
            <asp:TableHeaderCell 
                Scope="Column" 
                Text="Index"
                ForeColor ="white"/>
            <asp:TableHeaderCell  
                Scope="Column" 
                Text="Account"
                ForeColor ="white"/>
            <asp:TableHeaderCell 
                Scope="Column" 
                Text="Password"
                ForeColor ="white"/>
            <asp:TableHeaderCell 
                Scope="Column" 
                Text="Applicant"
                ForeColor ="white"/>
        </asp:TableHeaderRow>              
        </asp:Table>
               </div>
           <%--</div>--%> 
         </form>                
     <footer class="page-footer element">
        <div class="container element">
            <div class="row">
                <div class="col l6 s12">
                    <h5 class="white-text">Think More, Work Less</h5>
                    <p class="grey-text text-lighten-4">Don't Enjoy Your Work Forever.</p>
                </div>
                <div class="col l4 offset-l2 s12">
                    <h5 class="white-text">Links</h5>
                    <ul>
                        <li><a class="grey-text text-lighten-3" href="#!">Outlook Register</a>
                        </li>
                        <li><a class="grey-text text-lighten-3" href="#!">Outlook Account Generator</a>
                        </li>
                        <li><a class="grey-text text-lighten-3" href="#!">Azure Pass Register</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-copyright element">
            <div class="container s12 m12 l12 ">
                fallenzone.io
            </div>
        </div>
    </footer>
      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>
