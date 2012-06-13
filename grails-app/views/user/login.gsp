<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Login - rapidcommittee</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      
    </style>
    
    <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">
    
    <style type="text/css">
    body {
        padding-top: 60px;
        padding-bottom: 40px;
        background-color: #ccc;
      }
      .container {
        width: 600px;
        border-radius: 15px;
        -webkit-border-radius: 15px;
        -moz-border-radius: 15px;
        -moz-box-shadow: 0 0 3px 3px #bbb;
        -webkit-box-shadow: 0 0 3px 3px #bbb;
        box-shadow: 0 0 3px 3px #bbb;
        margin-bottom: 100px;
        margin-top: 50px;
        background-color: white;
        padding: 25px;
      }
      h1 {
        margin-bottom: 15px;
      }
      form, .form-actions {
        margin-bottom: 0px;
      }
    </style>
    
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">rapidcommittee</a>
          <div class="nav-collapse">
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container">
      <h1>Login</h1>
      
      <g:if test="${flash.message}">
        <div class="alert">${flash.message}</div>
      </g:if>

      <form class="form-horizontal" action="authenticate" method="post">
        <fieldset>
        
          <div class="control-group">
            <label class="control-label" for="email">Email</label>
            <div class="controls">
              <input type="email" class="input-xlarge" id="email" name="email">
            </div>
          </div>
          
          <div class="control-group">
            <label class="control-label" for="email">Password</label>
            <div class="controls">
              <input type="password" class="input-xlarge" id="password" name="password">
              <!-- <p class="help-block">In addition to freeform text, any HTML5 text-based input appears like so.</p> -->
            </div>
          </div>
          
          <div class="form-actions">
            <button type="submit" class="btn btn-primary">Login</button>
          </div>
        </fieldset>
      </form>
    </div><!--/.fluid-container-->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://twitter.github.com/bootstrap/assets/js/jquery.js"></script>
    <script src="http://twitter.github.com/bootstrap/assets/js/bootstrap-transition.js"></script>
    <script src="http://twitter.github.com/bootstrap/assets/js/bootstrap-alert.js"></script>
    <script src="http://twitter.github.com/bootstrap/assets/js/bootstrap-modal.js"></script>
    <script src="http://twitter.github.com/bootstrap/assets/js/bootstrap-dropdown.js"></script>
    <script src="http://twitter.github.com/bootstrap/assets/js/bootstrap-scrollspy.js"></script>
    <script src="http://twitter.github.com/bootstrap/assets/js/bootstrap-tab.js"></script>
    <script src="http://twitter.github.com/bootstrap/assets/js/bootstrap-tooltip.js"></script>
    <script src="http://twitter.github.com/bootstrap/assets/js/bootstrap-popover.js"></script>
    <script src="http://twitter.github.com/bootstrap/assets/js/bootstrap-button.js"></script>
    <script src="http://twitter.github.com/bootstrap/assets/js/bootstrap-collapse.js"></script>
    <script src="http://twitter.github.com/bootstrap/assets/js/bootstrap-carousel.js"></script>
    <script src="http://twitter.github.com/bootstrap/assets/js/bootstrap-typeahead.js"></script>

  </body>
</html>
