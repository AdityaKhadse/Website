<%@ page import="com.DAO.*" %>

  <head>
    <meta charset="UTF-8">
    <title>Project</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" type="image/png" href="img/fist.png">
  </head>
  <body>
      <header class="header">
          <div class="header__logo-box">
              <img src="img/fist.png" alt="logo" class="header__logo">
          </div>
          <div class="header__text-box">
              <h1 class="Heading-primary">
                  <span class="Heading-primary--main">Don't Hide</span>
                  <span class="Heading-primary--sub">Speak out !</span>
                  <a href="#login" class="btn btn--white btn--animated">Sign Up/Log in</a>
              </h1>
          </div>
      </header>
      <main>
          <section class="section-helpline">
              <div class="row">
                    <div class="helpline-container">
                        <div class="hepline-container__info">
                            <h2 class="Heading-secondary-2">Helpline</h2>
                            <h3 class="Heading-tertiary">Emergency Services</h3>
                            <ul>
                                <li>Police-100</li>
                                <li>Ambulance-102</li>
                            </ul>
                            <br>
                            <br>
                            <h3 class="Heading-tertiary">Police Helpline</h3>
                            <ul>
                                <li>Police Helpline-1944</li>
                                <li>Trafic Police -1095</li>
                            </ul>
                            <br>
                            <br>
                            <h3 class="Heading-tertiary">Women Helpline</h3>
                            <ul>
                                <li>National Commisiion for Women<br>
                                    011 23213419<br>
                                    23234918<br>
                                    23222845
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section-login" id="login" >
              <div class="row">
                <div class="container" id="_container">
                  <div class="container-side container-side__login" id="_login">
                      <form action="afterLogin" class="form" method="post">
                          <h2 class="Heading-secondary-1">
                            Login Here!
                          </h2>
                        <div class="form-group">
                          <input type="text" class="form-input" id="uname" name="uname" placeholder="User Name" required>
                          <label for="uname" class="form-label">User name</label>
                        </div>
                        <div class="form-group">
                          <input type="password" class="form-input" id="password" name="pass" placeholder="Password" required>
                          <label for="password" class="form-label">Password</label>
                        </div>
                        <div class="form-group">
                            <button class="btn btn--animated btn--green" >Log in</button>
                        </div>
                      </form>
                      <div class="container-side__login-signup">
                        <p>Don't have an account...?</p>
                        <div class="login-signup-button">
                          <button class="btn btn--animated btn--blue btnFlip">Sign up</button>
                        </div>
                      </div>
                    </div>
                  <div class="container-side container-side__signup" id="_signup">
                    <form action= "afterRegister" class="form" method="post">
                      <h2 class="Heading-secondary-2">
                        SignUp Here!
                      </h2>
                    <div class="form-group">
                    <div class="col-1-of-2">
                      <input type="text" class="form-input" id="fname" name="fname" placeholder="First Name">
                      <label for="fname" class="form-label">First Name</label>
                      <input type="text" class="form-input" id="lname" name="lname" placeholder="Last Name">
                      <label for="lname" class="form-label">Last Name</label>
                      <input type="text" class="form-input" id="uname" name="uname" placeholder="User Name" required>
                      <label for="uname" class="form-label">User Name</label>
                    </div>
                    <div class="col-1-of-2">
                      <input type="email" class="form-input" id="email" name="email" placeholder="Email Address" required>
                      <label for="email" class="form-label">Email Address</label>
                      <input type="password" class="form-input" id="pass" name="pass" placeholder="Password" required>
                      <label for="pass" class="form-label">Password</label>
                      <input type="password" class="form-input" id="cpass" name="cpass" placeholder="Confirm Password" required>
                      <label for="cpass" class="form-label">Confirm Password</label>
                    </div>
                  </div>  
                  <div class="form-group">
                      <button class="btn btn--animated btn--green" >Signup</button>
                  </div>
                  </form>
                  <div class="go-back">
                    <button class="btn btn--animated btn--blue btnFlip" >Go back</button>
                  </div>
                  </div>
                </div>
              </div>
            </section>
      </main>
      <footer class="footer">
        <div class="row">
        <div class="footer__logo-box">
          <img src="img/fist-white.png" alt="logo" class="footer__logo">
          <h2>Don't Hide.. Speak Out!</h2>
        </div>
        <div class="footer__about-us">
          <h2 class="Heading-secondary-1">About This Site</h2>
          <p>
            If you are:<br>
            <ul>
              <li>Being molested</li>
              <li>Going through Depression</li>
              <li>Or anyother personal problem</li>
            </ul>
            This site will you to connect to the necessary help<br>
            that you require
          </p>
        </div>
        </div>
      </footer>
  </body>
  <script>
        var face_changers = document.querySelectorAll('.btnFlip'), 
        _container = document.getElementById('_container');

    for(var i = 0; i < face_changers.length; i++){
      face_changers[i].addEventListener('click', function(e) {
        _container.classList.toggle('hover_effect');
        e.preventDefault();
    }, false)
} 
</script>
</html>