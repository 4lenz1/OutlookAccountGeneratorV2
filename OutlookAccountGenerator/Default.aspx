 <!DOCTYPE html>
  <html>
    <head>
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
        <!-- custom css -->
        <link href="style.css" rel="stylesheet" />
              <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <title>Outlook Account Generator</title>
        <link href="Scripts/style.css" rel="stylesheet" />
        <style>

        </style>
    </head>
    <body class="content">
        <nav class="element">
    <div class="nav-wrapper">
      <a href="#" class="brand-logo">Outlook Account Generator </a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="fallenzone.io">HOME</a></li>
      </ul>
    </div>
  </nav>
        <form class="content" id="form1" runat="server" action="List.aspx" margin="0" auto="">
        <div class="row container">
      <div class="row">
        <div class="input-field col s12">
          <input required id="Applicant" type="text" name="applicant" class="validate">
          <label for="applicant">Applicant</label>
        </div>
        <div class="input-field col s12">
          <input required id="Amount" name="amount" type="text" class="validate">
          <label for="amount">Amount</label>
        </div>
          <div class="input-field col s12">
          <label for="holdDate">Date</label>
          <input required id="holdDate" type="date" name="holdDate" class="datepicker">
         </div>

  <label class="switch">
    <label>
    Random Password
 <input class="vs-btn-theme" type="checkbox"  name='checkRandomPassword' ID="checkRandomPassword"  runat="server" value="1"/>
      <span class="lever"></span>
    </label>
  </label>
          <div class="input-field col s12">
        <button ID="btnGenerate"  value="Submit" type="submit" class="vs-btn-theme  waves-effect waves-orange btn">Generate</button>
            <div style="visibility:hidden"  ID="progressbar" class="progress">
                </div>
                            </div>
  </div>
  </div>

      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>

        </form>
                <footer class="page-footer element">
          <div class="container element">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">Think More, Work Less</h5>
                <p class="grey-text text-lighten-4">Don't Enjoy Your Work.</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!">Outlook Register</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Outlook Account Generator</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Azure Pass Register</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright element">
            <div class="container ">
            fallenzone.io
            </div>
          </div>
        </footer>
            


        <%--<script>
            function showProgressBar() {
                document.getElementById('progressbar').style.visibility = 'trueinherit';
            }
        </script>--%>

       
        <script>
  $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15, // Creates a dropdown of 15 years to control year
    format: 'yy-dd-mm'
  });

        </script>
    </body>
  </html>