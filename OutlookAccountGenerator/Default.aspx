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

        <style>
            .element{
                background-color: #2d2d30;
            }
            .page-footer{
                background-color:#2d2d30 !important; 
            }
            .content{
                background-color:#1e1e1e;
            }
            .switch label input[type=checkbox]:checked+.lever:after {
    background-color: #ca5100;
    left: 24px;
}
            .switch label input[type=checkbox]:checked+.lever {
    background-color: #e45b00;
}
            .vs-btn-theme{
                background-color:#ca5100;
               
            }
                .waves-effect .waves-light {
     /* The alpha value allows the text and background color
     of the button to still show through. */
      background-color: #2d2d30;
    }
    .btn:hover, .btn-large:hover {
    background-color: #ff6600   ;
}
    .picker__date-display {
    background-color: #e45b00;
}
    .picker__weekday-display{
            background-color: #e45b00;
    }
    .picker__close, .picker__today {
    color: #e45b00;
}
    .picker__box{
                        background-color:#1e1e1e;
    }
    .picker__day--selected, .picker__day--selected:hover, .picker--focused .picker__day--selected {
    background-color: #e45b00;
    color: #ffffff;
}
    .picker__nav--prev:hover, .picker__nav--next:hover {
    background: #ff6600;
}

    input:not([type]).valid, input:not([type]):focus.valid, input[type=text].valid, input[type=text]:focus.valid, input[type=password].valid, input[type=password]:focus.valid, input[type=email].valid, input[type=email]:focus.valid, input[type=url].valid, input[type=url]:focus.valid, input[type=time].valid, input[type=time]:focus.valid, input[type=date].valid, input[type=date]:focus.valid, input[type=datetime].valid, input[type=datetime]:focus.valid, input[type=datetime-local].valid, input[type=datetime-local]:focus.valid, input[type=tel].valid, input[type=tel]:focus.valid, input[type=number].valid, input[type=number]:focus.valid, input[type=search].valid, input[type=search]:focus.valid, textarea.materialize-textarea.valid, textarea.materialize-textarea:focus.valid {
    border-bottom: 1px solid #ff6600;
    box-shadow: 0 1px 0 0 #ff6600;
}
input:not([type]), input[type=text], input[type=password], input[type=email], input[type=url], input[type=time], input[type=date], input[type=datetime], input[type=datetime-local], input[type=tel], input[type=number], input[type=search], textarea.materialize-textarea {
    background-color: transparent;
    border: none;
    border-bottom: 1px solid #9e9e9e;
    border-radius: 0;
    outline: none;
    height: 3rem;
    width: 100%;
    font-size: 1rem;
    margin: 0 0 20px 0;
    padding: 0;
    box-shadow: none;
    box-sizing: content-box;
    transition: all 0.3s;
    color:#ff6600;
}
input[type=text]:focus:not([readonly]){
    border-bottom: #ff6600;
}
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
          <input required id="holdDate" type="date" name="holdDate" class="datepicker">
          <label for="holdDate">Date</label>
          
          <%--<asp:Calendar ID="calendar" runat="server"></asp:Calendar>--%>
        <!-- Switch -->
  <label class="switch">
    <label>
      Fixed Password
 <input class="vs-btn-theme" type="checkbox"  name='checkRandomPassword' ID="checkRandomPassword" runat="server" value="1"/>
      <span class="lever"></span>
      Random Password
    </label>
  </label>
         
      </div>
                        
        <button ID="btnGenerate"  value="Submit" type="submit" class="vs-btn-theme  waves-effect waves-orange btn">Generate</button>
            <div style="visibility:hidden"  ID="progressbar" class="progress">
      <div class="indeterminate"></div>
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
                <h5 class="white-text">Footer Content</h5>
                <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright element">
            <div class="container">
            © 2014 Copyright Text
            <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
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