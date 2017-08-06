{% spaceless %}
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
  <meta property="og:url" content="https://julianxhokaxhiu.com">
  <meta property="og:type" content="profile">
  <meta property="og:title" content="Julian Xhokaxhiu's Portfolio">
  <meta property="og:image" content="https://julianxhokaxhiu.com/img/social/cover.png">
  <meta property="og:description" content="Julian Xhokaxhiu - FULL STACK DEVELOPER, IT PRACTISED (ISCED 4) - My personal motto? 'Impossible Is Nothing'">
  <link href="//fonts.googleapis.com/css?family=Roboto:400,300,500,700&subset=latin,latin-ext" rel="stylesheet">
  <title>Julian Xhokaxhiu's Portfolio</title>
  {% for href in app.cssFiles.screen %}
    <link href="{{ href }}" rel="stylesheet" media="screen">
  {% endfor %}
  <!-- Print Styles -->
  {% for href in app.cssFiles.print %}
    <link href="{{ href }}" rel="stylesheet" media="print">
  {% endfor %}
  {% block styles %}
  {% endblock %}
</head>
<body>
  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-45397767-1', 'julianxhokaxhiu.com');
    ga('send', 'pageview');
  </script>
  <nav class="navbar navbar-toolbar navbar-default navbar-fixed-top">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".jx-projects-toolbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="//julianxhokaxhiu.com" class="navbar-brand">Julian Xhokaxhiu's Portfolio</a>
    </div>
    <div class="collapse navbar-collapse jx-projects-toolbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="//julianxhokaxhiu.com/">Home</a></li>
        <li><a href="//blog.julianxhokaxhiu.com/">Blog</a></li>
        <li><a href="//linuxdavinci.julianxhokaxhiu.com/">LinuxDaVinci</a></li>
        <li><a href="//ipops.julianxhokaxhiu.com/">iPoPS</a></li>
      </ul>
    </div>
  </nav>
  <div id="jx-scrollspy-target" class="jx-sidebar hidden-print hidden-xs hidden-sm">
    <ul class="nav">
      <li class="active"><a href="#welcome"><span>Welcome</span></a></li>
      <li><a href="#work-experience"><span>Work Experience</span></a></li>
      <li><a href="#skills"><span>Skills</span></a></li>
      <li><a href="#portfolio"><span>Portfolio</span></a></li>
    </ul>
  </div>
  {% block content %}
  {% endblock %}
  <div class="jx-footer">
    <div class="container-fluid">
      <div class="row">
        <div class="col-xs-12 text-center">
          <p><small>Any screenshot taken from the relative website represent the status of it in a specific time. So, it should not be considered a Copyright infringement, but it is there just for rapid quick-look and better understanding of the relative project sheet.</small></p>
          <p>Julian Xhokaxhiu, <span id="credits-year">2016</span></p>
        </div>
      </div>
    </div>
  </div>
  <!-- Scripts -->
  {% block scripts %}
  {% endblock %}
  <!--[if (!IE)|(gt IE 8)]><!-->
    <script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
  <!--<![endif]-->
  <!--[if lt IE 9]>
    <script src="//code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="//code.jquery.com/jquery-migrate-1.4.1.min.js"></script>
    <script src="//cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="//cdn.jsdelivr.net/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  {% for href in app.jsFiles %}
    <script src="{{ href }}"></script>
  {% endfor %}
  {% if app.liveReloadHost %}
    <!-- Only for Development Server -->
    <script src="//{{ app.liveReloadHost }}/livereload.js"></script>
  {% endif %}
</body>
</html>
{% endspaceless %}