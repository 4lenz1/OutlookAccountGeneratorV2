 <!DOCTYPE html>
  <html>
    <head>
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

              <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <title>Outlook Account Generator</title>
    </head>
    <body>
        <form id="form1" runat="server" action="List.aspx">
        <div class="row container">
      <div class="row">
        <div class="input-field col s6">
          <input required id="Applicant" type="text" name="applicant" class="validate">
          <label for="applicant">Applicant</label>
        </div>
        <div class="input-field col s6">
          <input required id="Amount" name="amount" type="text" class="validate">
          <label for="amount">Amount</label>
        </div>
          <input required id="holdDate" type="date" name="holdDate">
          <%--<asp:Calendar ID="calendar" runat="server"></asp:Calendar>--%>
        <!-- Switch -->
  <label class="switch">
    <label>
      Fixed Password
 <input type="checkbox"  name='checkRandomPassword' ID="checkRandomPassword" runat="server" value="1"/>
      <span class="lever"></span>
      Random Password
    </label>
  </label>
         
      </div>
                        
        <button ID="btnGenerate"  value="Submit" type="submit" class="waves-effect waves-light btn">Generate</button>
            <div style="visibility:hidden"  ID="progressbar" class="progress">
      <div class="indeterminate"></div>
  </div>
  </div>

      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>

        </form>
        <%--<script>
            function showProgressBar() {
                document.getElementById('progressbar').style.visibility = 'trueinherit';
            }
        </script>--%>
    </body>
  </html>