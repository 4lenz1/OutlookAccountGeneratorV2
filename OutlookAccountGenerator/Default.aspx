<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OutlookAccountGenerator.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="css/materialize.css" rel="stylesheet" />
    <link href="css/materialize.min.css" rel="stylesheet" />
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    <script src="js/materialize.min.js"></script>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Outlook Account Generator</title>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <input id="txtApplicant" type="text" class="col s6  input-field" placeholder="Applicant" /><br />
            <br />
            <input id="txtAmount" type="text" class="input-field col s6" placeholder="Amount" /><br />
            <br />

            <asp:Button ID="btnGenerate" runat="server" Text="Generate" CssClass="waves-effect waves-light btn" OnClick="btnGenerate_Click" />
        </div>
    </form>
     <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>
