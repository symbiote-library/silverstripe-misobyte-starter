<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-NZLFBXC');</script>
    <!-- End Google Tag Manager -->

    <% base_tag %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    $MetadataMetaTags
    
    <title>Symbiote<% if $Title %> - $Title<% end_if %></title>
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,700" rel="stylesheet">
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js" integrity="sha384-0s5Pv64cNZJieYFkXYOTId2HMA2Lfb6q2nAcx2n0RTLUnCAoTTsS0nKEO27XyKcY" crossorigin="anonymous"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js" integrity="sha384-ZoaMbDF+4LeFxg6WdScQ9nnR1QC2MIRxA1O9KWEXQwns1G8UNyIEZIQidzb0T1fo" crossorigin="anonymous"></script>
    <![endif]-->
    <link rel="icon" href="{$BaseHref}favicon.ico" type="image/x-icon" />
    
    
</head>

<body id="page-top" class="$URLSegment <% if not $Site.HideHeader %>js-use-sticky-header<% end_if %>">
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NZLFBXC"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->

    <%-- 
     include GoogleAnalytics 
     include FacebookAnalytics 
    --%>
    <header>
        <% if not $Site.HideHeader %>
        <div class="header-grad">
            <div class="container">
                <div class="intro-text">
                    <img src="$ThemeDir/public/images/symbiote_logomark_white.svg" alt="Symbiote" class="logo-img" />
                    <p class="headline">$Site.Tagline</p>
                </div>
                <div class="intro-more">
                    <a href="#main-content" class="page-scroll btn-circle" title="Scroll to main content"><span class="lnr-arrow-down" aria-hidden="true"></span></a>
                </div>
            </div>
        </div>
        <% end_if %>
        <nav id="mainNav" class="navbar navbar-inverse bg-primary navbar-toggleable-md " <% if not $Site.HideHeader %>data-toggle="sticky-onscroll"<% end_if %>>
            <div class="container">
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#site-navbar" aria-expanded="false" aria-controls="site-navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <a class="navbar-brand page-scroll" href="$BaseHref">
                        <img src="$ThemeDir/public/images/symbiote_logo_white_horiz.svg" alt="Symbiote" />
                    </a>
                </div>

                <div class="collapse navbar-collapse" id="site-navbar">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="hidden">
                            <a href="#page-top"></a>
                        </li>
                        <% loop $getSiteMenu %>
                        <li class="nav-item<% if $LinkOrSection == 'section' || $LinkOrSection == 'current' %> active<% end_if %>">
                            <a class="page-scroll nav-link" href="$Link">$Title</a>
                        </li>
                        <% end_loop %>
                        <% if $Site.FacebookURL %>
                            <li class="nav-item social"><a class="nav-link" href="https://www.facebook.com/{$Site.FacebookURL}" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i><span class="sr-only">Symbiote on Facebook</span></a></li>
                        <% end_if %>
                        <% if $Site.TwitterUsername %>
                            <li class="nav-item social"><a class="nav-link" href="https://twitter.com/{$Site.TwitterUsername}" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i><span class="sr-only">Symbiote on Twitter</span></a></li>
                        <% end_if %>
                        <% if $Site.GitHubAccount %>
                            <li class="nav-item social"><a class="nav-link" href="https://github.com/{$Site.GitHubAccount}" target="_blank"><i class="fa fa-github" aria-hidden="true"></i><span class="sr-only">Symbiote on GitHub</span></a></li>
                        <% end_if %>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
        </nav>
    </header>
    
    
    
    <a id="main-content" tabindex="-1"></a>

    <div class="typography">
        $Layout
    </div>

    <% include Footer %>
    <% if $CurrentMember %>
        $BetterNavigator
    <% end_if %>
    
</body>

</html>
