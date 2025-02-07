<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>OSU Login</title>
    <link rel="stylesheet" type="text/css" href="/idp/css/osu-shib.css">
    <script>
      self.onload = function() {
	self.focus();
	document.login.j_username.focus();
      }
    </script>
</head>
<body>
    <header>
        <a href="http://oregonstate.edu/"><img src="/idp/images/logo.svg" alt="Oregon State University"></a>
    </header>

    <main>

        <form action="/idp/profile/SAML2/Redirect/SSO?execution=e1s1" method="post" name="login">
            
                          <div class="form-element-wrapper">
                <label for="username">USERNAME</label>
                <input id="username" name="j_username" type="text" autofocus
                	value="">
              </div>

              <div class="form-element-wrapper">
                <label for="password">PASSWORD</label>
                <input id="password" name="j_password" type="password" value="">
              </div>

              <aside>
                <ul class="list-help">
                    <li><a href="http://oregonstate.edu/helpdocs/osu-login-help">Need Help?</a></li>
                    <li><a href="https://status.is.oregonstate.edu/">Service status</a></li>
                </ul>
                <div class="form-element-wrapper">
                  <label for="donotcache" class="btn">
                    <input type="checkbox" id="donotcache" name="donotcache" value="1"> This is a public kiosk                  </label>
                </div>
              </aside>
            
                          <div class="form-element-wrapper">
                <button type="submit" name="_eventId_proceed"
                    onClick="this.childNodes[0].nodeValue='Logging in, please wait...'"
                    >Login</button>
              </div>
            
                        </form>

      </main>

      <footer>
          <p class="footer-text">If you continue to encounter difficulty, please contact the <a href="https://is.oregonstate.edu/service-desk">IS Service Desk</a> for assistance.</p>
      </footer>
    
</body>
</html>
