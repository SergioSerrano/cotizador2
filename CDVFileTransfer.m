


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>cordova-plugin-file-transfer/src/ios/CDVFileTransfer.m at 2d2e4445bb887980412170404a6e3e2de9be57d6 · apache/cordova-plugin-file-transfer</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="github-fe132-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 1.9.3p194-tcs-github-tcmalloc (0e75de19f8) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="C8426FB3:2E6A:127C4B5:52728009" name="octolytics-dimension-request_id" /><meta content="5497424" name="octolytics-actor-id" /><meta content="SergioSerrano" name="octolytics-actor-login" /><meta content="515ab936a1feb7b4eccc4045a61dbd63e7bf2edea553878ad871d7df3b3d32d4" name="octolytics-actor-hash" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="P6JblmrLG82+4NwRO06ouXMoeD72MAktYQTAjPS5osA=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-c1c8f4d1225e3ae12e7eed7a87e6125ec4f4c50a.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-6ca1cf184423f082ccd30296372104601de151e8.css" media="all" rel="stylesheet" type="text/css" />
    

    

      <script src="https://github.global.ssl.fastly.net/assets/frameworks-fedd15115b82c3d5d2afa34f475ba2caa6283613.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-32c6bb6e4158fa642e474640b8074f3fb50b3795.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="4715596bc36f40085dee20cc3a6c2497">

        <link data-pjax-transient rel='permalink' href='/apache/cordova-plugin-file-transfer/blob/2d2e4445bb887980412170404a6e3e2de9be57d6/src/ios/CDVFileTransfer.m'>
  <meta property="og:title" content="cordova-plugin-file-transfer"/>
  <meta property="og:type" content="githubog:gitrepository"/>
  <meta property="og:url" content="https://github.com/apache/cordova-plugin-file-transfer"/>
  <meta property="og:image" content="https://github.global.ssl.fastly.net/images/gravatars/gravatar-user-420.png"/>
  <meta property="og:site_name" content="GitHub"/>
  <meta property="og:description" content="cordova-plugin-file-transfer - Mirror of Apache Cordova Plugin file-transfer"/>

  <meta name="description" content="cordova-plugin-file-transfer - Mirror of Apache Cordova Plugin file-transfer" />

  <meta content="47359" name="octolytics-dimension-user_id" /><meta content="apache" name="octolytics-dimension-user_login" /><meta content="10860598" name="octolytics-dimension-repository_id" /><meta content="apache/cordova-plugin-file-transfer" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="10860598" name="octolytics-dimension-repository_network_root_id" /><meta content="apache/cordova-plugin-file-transfer" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/apache/cordova-plugin-file-transfer/commits/2d2e4445bb887980412170404a6e3e2de9be57d6.atom" rel="alternate" title="Recent Commits to cordova-plugin-file-transfer:2d2e4445bb887980412170404a6e3e2de9be57d6" type="application/atom+xml" />

  </head>


  <body class="logged_in  env-production windows vis-public mirror   page-blob">
    <div class="wrapper">
      
      
      


      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/">
  <span class="mega-octicon octicon-mark-github"></span>
</a>

    
    <a href="/notifications" class="notification-indicator tooltipped downwards" data-gotokey="n" title="You have no unread notifications">
        <span class="mail-status all-read"></span>
</a>

      <div class="command-bar js-command-bar  in-repository">
          <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    data-username="SergioSerrano"
      data-repo="apache/cordova-plugin-file-transfer"
      data-branch="2d2e4445bb887980412170404a6e3e2de9be57d6"
      data-sha="2576431e5cc5cf247685d1e8e49c65698fd121ce"
  >

    <input type="hidden" name="nwo" value="apache/cordova-plugin-file-transfer" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
        <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
            <li><a href="https://gist.github.com">Gist</a></li>
            <li><a href="/blog">Blog</a></li>
          <li><a href="https://help.github.com">Help</a></li>
        </ul>
      </div>

    


  <ul id="user-links">
    <li>
      <a href="/SergioSerrano" class="name">
        <img height="20" src="https://1.gravatar.com/avatar/43c1218e3c1ef80855983d81db07b636?d=https%3A%2F%2Fidenticons.github.com%2F104dae3d5d230a5b3e2d6bf2197ed857.png&amp;r=x&amp;s=140" width="20" /> SergioSerrano
      </a>
    </li>

      <li>
        <a href="/new" id="new_repo" class="tooltipped downwards" title="Create a new repo" aria-label="Create a new repo">
          <span class="octicon octicon-repo-create"></span>
        </a>
      </li>

      <li>
        <a href="/settings/profile" id="account_settings"
          class="tooltipped downwards"
          aria-label="Account settings "
          title="Account settings ">
          <span class="octicon octicon-tools"></span>
        </a>
      </li>
      <li>
        <a class="tooltipped downwards" href="/logout" data-method="post" id="logout" title="Sign out" aria-label="Sign out">
          <span class="octicon octicon-log-out"></span>
        </a>
      </li>

  </ul>

<div class="js-new-dropdown-contents hidden">
  

<ul class="dropdown-menu">
  <li>
    <a href="/new"><span class="octicon octicon-repo-create"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new"><span class="octicon octicon-organization"></span> New organization</a>
  </li>



</ul>

</div>


    
  </div>
</div>

      

      




          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">

    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="P6JblmrLG82+4NwRO06ouXMoeD72MAktYQTAjPS5osA=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="10860598" />

    <div class="select-menu js-menu-container js-select-menu">
      <a class="social-count js-social-count" href="/apache/cordova-plugin-file-transfer/watchers">
        1
      </a>
      <span class="minibutton select-menu-button with-count js-menu-target" role="button" tabindex="0">
        <span class="js-select-button">
          <span class="octicon octicon-eye-watch"></span>
          Watch
        </span>
      </span>

      <div class="select-menu-modal-holder">
        <div class="select-menu-modal subscription-menu-modal js-menu-content">
          <div class="select-menu-header">
            <span class="select-menu-title">Notification status</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container" role="menu">

            <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">You only receive notifications for discussions in which you participate or are @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-watch"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">You receive notifications for all discussions in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-unwatch"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">You do not receive any notifications for discussions in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

  <li>
  
<div class="js-toggler-container js-social-container starring-container ">
  <a href="/apache/cordova-plugin-file-transfer/unstar" class="minibutton with-count js-toggler-target star-button starred upwards" title="Unstar this repo" data-remote="true" data-method="post" rel="nofollow">
    <span class="octicon octicon-star-delete"></span><span class="text">Unstar</span>
  </a>
  <a href="/apache/cordova-plugin-file-transfer/star" class="minibutton with-count js-toggler-target star-button unstarred upwards" title="Star this repo" data-remote="true" data-method="post" rel="nofollow">
    <span class="octicon octicon-star"></span><span class="text">Star</span>
  </a>
  <a class="social-count js-social-count" href="/apache/cordova-plugin-file-transfer/stargazers">1</a>
</div>

  </li>


        <li>
          <a href="/apache/cordova-plugin-file-transfer/fork" class="minibutton with-count js-toggler-target fork-button lighter upwards" title="Fork this repo" rel="facebox nofollow">
            <span class="octicon octicon-git-branch-create"></span><span class="text">Fork</span>
          </a>
          <a href="/apache/cordova-plugin-file-transfer/network" class="social-count">17</a>
        </li>


</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-mirror-public"></span>
          <span class="author">
            <a href="/apache" class="url fn" itemprop="url" rel="author"><span itemprop="title">apache</span></a>
          </span>
          <span class="repohead-name-divider">/</span>
          <strong><a href="/apache/cordova-plugin-file-transfer" class="js-current-repository js-repo-home-link">cordova-plugin-file-transfer</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

            <span class="mirror-flag">
              <span class="text">mirrored from <a href="git://git.apache.org/cordova-plugin-file-transfer.git">git://git.apache.org/cordova-plugin-file-transfer.git</a></span>
            </span>
        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">

      <div class="repository-with-sidebar repo-container ">

        <div class="repository-sidebar">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped leftwards" title="Code">
        <a href="/apache/cordova-plugin-file-transfer" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /apache/cordova-plugin-file-transfer">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


      <li class="tooltipped leftwards" title="Pull Requests"><a href="/apache/cordova-plugin-file-transfer/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /apache/cordova-plugin-file-transfer/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>5</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/apache/cordova-plugin-file-transfer/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /apache/cordova-plugin-file-transfer/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/apache/cordova-plugin-file-transfer/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /apache/cordova-plugin-file-transfer/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/apache/cordova-plugin-file-transfer/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /apache/cordova-plugin-file-transfer/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

            <div class="only-with-full-nav">
              

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/apache/cordova-plugin-file-transfer.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/apache/cordova-plugin-file-transfer.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone">
  <h3><strong>SSH</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="git@github.com:apache/cordova-plugin-file-transfer.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="git@github.com:apache/cordova-plugin-file-transfer.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/apache/cordova-plugin-file-transfer" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/apache/cordova-plugin-file-transfer" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="octicon help tooltipped upwards" title="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>


  <a href="github-windows://openRepo/https://github.com/apache/cordova-plugin-file-transfer" class="minibutton sidebar-button">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>

              <a href="/apache/cordova-plugin-file-transfer/archive/2d2e4445bb887980412170404a6e3e2de9be57d6.zip"
                 class="minibutton sidebar-button"
                 title="Download this repository as a zip file"
                 rel="nofollow">
                <span class="octicon octicon-cloud-download"></span>
                Download ZIP
              </a>
            </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:6a6c70ba4d12662d03579d044e39c0cb -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/apache/cordova-plugin-file-transfer/find/2d2e4445bb887980412170404a6e3e2de9be57d6" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref=""
    role="button" aria-label="Switch branches or tags" tabindex="0">
    <span class="octicon octicon-git-branch"></span>
    <i>tree:</i>
    <span class="js-select-button">2d2e4445bb</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file-transfer/blob/3.1.0/src/ios/CDVFileTransfer.m"
                 data-name="3.1.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="3.1.0">3.1.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file-transfer/blob/dev/src/ios/CDVFileTransfer.m"
                 data-name="dev"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="dev">dev</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file-transfer/blob/master/src/ios/CDVFileTransfer.m"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file-transfer/tree/r0.3.4/src/ios/CDVFileTransfer.m"
                 data-name="r0.3.4"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="r0.3.4">r0.3.4</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file-transfer/tree/r0.3.3/src/ios/CDVFileTransfer.m"
                 data-name="r0.3.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="r0.3.3">r0.3.3</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file-transfer/tree/r0.3.2/src/ios/CDVFileTransfer.m"
                 data-name="r0.3.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="r0.3.2">r0.3.2</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file-transfer/tree/r0.3.0/src/ios/CDVFileTransfer.m"
                 data-name="r0.3.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="r0.3.0">r0.3.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file-transfer/tree/3.0.0rc1/src/ios/CDVFileTransfer.m"
                 data-name="3.0.0rc1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="3.0.0rc1">3.0.0rc1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file-transfer/tree/3.0.0/src/ios/CDVFileTransfer.m"
                 data-name="3.0.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="3.0.0">3.0.0</a>
            </div> <!-- /.select-menu-item -->
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/apache/cordova-plugin-file-transfer/tree/2d2e4445bb887980412170404a6e3e2de9be57d6" data-branch="2d2e4445bb887980412170404a6e3e2de9be57d6" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">cordova-plugin-file-transfer</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/apache/cordova-plugin-file-transfer/tree/2d2e4445bb887980412170404a6e3e2de9be57d6/src" data-branch="2d2e4445bb887980412170404a6e3e2de9be57d6" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">src</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/apache/cordova-plugin-file-transfer/tree/2d2e4445bb887980412170404a6e3e2de9be57d6/src/ios" data-branch="2d2e4445bb887980412170404a6e3e2de9be57d6" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">ios</span></a></span><span class="separator"> / </span><strong class="final-path">CDVFileTransfer.m</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="src/ios/CDVFileTransfer.m" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>



  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://0.gravatar.com/avatar/643fd0337bbf407f6dfc945445f231ae?d=https%3A%2F%2Fidenticons.github.com%2Fc539df2ac4d792afc6c7cc6e17c4aaca.png&amp;r=x&amp;s=140" width="24" />
    <span class="author"><a href="/agrieve" rel="author">agrieve</a></span>
    <time class="js-relative-date" datetime="2013-08-14T15:33:19-07:00" title="2013-08-14 15:33:19">August 14, 2013</time>
    <div class="commit-title">
        <a href="/apache/cordova-plugin-file-transfer/commit/a59755ec72cb2b8623c0b205d310138215221947" class="message" data-pjax="true" title="[CB-4480] Fix up a couple Unsigned-&gt;Signed mistakes from previous commit...

....

Also - thanks to Klaus Schmidt for the original patch for this fix.">[CB-4480] Fix up a couple Unsigned-&gt;Signed mistakes from previous com…</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>3</strong> contributors</a></p>
          <a class="avatar tooltipped downwards" title="stevengill" href="/apache/cordova-plugin-file-transfer/commits/master/src/ios/CDVFileTransfer.m?author=stevengill"><img height="20" src="https://0.gravatar.com/avatar/d36d914b008583afdf7ea19d1e9a143e?d=https%3A%2F%2Fidenticons.github.com%2F20b36960e6b50d1e0d764b446a64b040.png&amp;r=x&amp;s=140" width="20" /></a>
    <a class="avatar tooltipped downwards" title="agrieve" href="/apache/cordova-plugin-file-transfer/commits/master/src/ios/CDVFileTransfer.m?author=agrieve"><img height="20" src="https://0.gravatar.com/avatar/643fd0337bbf407f6dfc945445f231ae?d=https%3A%2F%2Fidenticons.github.com%2Fc539df2ac4d792afc6c7cc6e17c4aaca.png&amp;r=x&amp;s=140" width="20" /></a>
    <a class="avatar tooltipped downwards" title="hermwong" href="/apache/cordova-plugin-file-transfer/commits/master/src/ios/CDVFileTransfer.m?author=hermwong"><img height="20" src="https://0.gravatar.com/avatar/f2f3e064e9faa97cca36eed14d3288f9?d=https%3A%2F%2Fidenticons.github.com%2F6fe40750ce6f40902cfa6595c0b89ff8.png&amp;r=x&amp;s=140" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img height="24" src="https://0.gravatar.com/avatar/d36d914b008583afdf7ea19d1e9a143e?d=https%3A%2F%2Fidenticons.github.com%2F20b36960e6b50d1e0d764b446a64b040.png&amp;r=x&amp;s=140" width="24" />
            <a href="/stevengill">stevengill</a>
          </li>
          <li class="facebox-user-list-item">
            <img height="24" src="https://0.gravatar.com/avatar/643fd0337bbf407f6dfc945445f231ae?d=https%3A%2F%2Fidenticons.github.com%2Fc539df2ac4d792afc6c7cc6e17c4aaca.png&amp;r=x&amp;s=140" width="24" />
            <a href="/agrieve">agrieve</a>
          </li>
          <li class="facebox-user-list-item">
            <img height="24" src="https://0.gravatar.com/avatar/f2f3e064e9faa97cca36eed14d3288f9?d=https%3A%2F%2Fidenticons.github.com%2F6fe40750ce6f40902cfa6595c0b89ff8.png&amp;r=x&amp;s=140" width="24" />
            <a href="/hermwong">hermwong</a>
          </li>
      </ul>
    </div>
  </div>

<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>733 lines (613 sloc)</span>
        <span>32.121 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
              <a class="minibutton disabled js-entice" href=""
                 data-entice="You must be on a branch to make or propose changes to this file">Edit</a>
          <a href="/apache/cordova-plugin-file-transfer/raw/2d2e4445bb887980412170404a6e3e2de9be57d6/src/ios/CDVFileTransfer.m" class="button minibutton " id="raw-url">Raw</a>
            <a href="/apache/cordova-plugin-file-transfer/blame/2d2e4445bb887980412170404a6e3e2de9be57d6/src/ios/CDVFileTransfer.m" class="button minibutton ">Blame</a>
          <a href="/apache/cordova-plugin-file-transfer/commits/2d2e4445bb887980412170404a6e3e2de9be57d6/src/ios/CDVFileTransfer.m" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
          <a class="minibutton danger empty-icon js-entice" href=""
             data-entice="You must be signed in and on a branch to make or propose changes">
          Delete
        </a>
      </div><!-- /.actions -->

    </div>
        <div class="blob-wrapper data type-objective-c js-blob-data">
        <table class="file-code file-diff">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>
<span id="L298" rel="#L298">298</span>
<span id="L299" rel="#L299">299</span>
<span id="L300" rel="#L300">300</span>
<span id="L301" rel="#L301">301</span>
<span id="L302" rel="#L302">302</span>
<span id="L303" rel="#L303">303</span>
<span id="L304" rel="#L304">304</span>
<span id="L305" rel="#L305">305</span>
<span id="L306" rel="#L306">306</span>
<span id="L307" rel="#L307">307</span>
<span id="L308" rel="#L308">308</span>
<span id="L309" rel="#L309">309</span>
<span id="L310" rel="#L310">310</span>
<span id="L311" rel="#L311">311</span>
<span id="L312" rel="#L312">312</span>
<span id="L313" rel="#L313">313</span>
<span id="L314" rel="#L314">314</span>
<span id="L315" rel="#L315">315</span>
<span id="L316" rel="#L316">316</span>
<span id="L317" rel="#L317">317</span>
<span id="L318" rel="#L318">318</span>
<span id="L319" rel="#L319">319</span>
<span id="L320" rel="#L320">320</span>
<span id="L321" rel="#L321">321</span>
<span id="L322" rel="#L322">322</span>
<span id="L323" rel="#L323">323</span>
<span id="L324" rel="#L324">324</span>
<span id="L325" rel="#L325">325</span>
<span id="L326" rel="#L326">326</span>
<span id="L327" rel="#L327">327</span>
<span id="L328" rel="#L328">328</span>
<span id="L329" rel="#L329">329</span>
<span id="L330" rel="#L330">330</span>
<span id="L331" rel="#L331">331</span>
<span id="L332" rel="#L332">332</span>
<span id="L333" rel="#L333">333</span>
<span id="L334" rel="#L334">334</span>
<span id="L335" rel="#L335">335</span>
<span id="L336" rel="#L336">336</span>
<span id="L337" rel="#L337">337</span>
<span id="L338" rel="#L338">338</span>
<span id="L339" rel="#L339">339</span>
<span id="L340" rel="#L340">340</span>
<span id="L341" rel="#L341">341</span>
<span id="L342" rel="#L342">342</span>
<span id="L343" rel="#L343">343</span>
<span id="L344" rel="#L344">344</span>
<span id="L345" rel="#L345">345</span>
<span id="L346" rel="#L346">346</span>
<span id="L347" rel="#L347">347</span>
<span id="L348" rel="#L348">348</span>
<span id="L349" rel="#L349">349</span>
<span id="L350" rel="#L350">350</span>
<span id="L351" rel="#L351">351</span>
<span id="L352" rel="#L352">352</span>
<span id="L353" rel="#L353">353</span>
<span id="L354" rel="#L354">354</span>
<span id="L355" rel="#L355">355</span>
<span id="L356" rel="#L356">356</span>
<span id="L357" rel="#L357">357</span>
<span id="L358" rel="#L358">358</span>
<span id="L359" rel="#L359">359</span>
<span id="L360" rel="#L360">360</span>
<span id="L361" rel="#L361">361</span>
<span id="L362" rel="#L362">362</span>
<span id="L363" rel="#L363">363</span>
<span id="L364" rel="#L364">364</span>
<span id="L365" rel="#L365">365</span>
<span id="L366" rel="#L366">366</span>
<span id="L367" rel="#L367">367</span>
<span id="L368" rel="#L368">368</span>
<span id="L369" rel="#L369">369</span>
<span id="L370" rel="#L370">370</span>
<span id="L371" rel="#L371">371</span>
<span id="L372" rel="#L372">372</span>
<span id="L373" rel="#L373">373</span>
<span id="L374" rel="#L374">374</span>
<span id="L375" rel="#L375">375</span>
<span id="L376" rel="#L376">376</span>
<span id="L377" rel="#L377">377</span>
<span id="L378" rel="#L378">378</span>
<span id="L379" rel="#L379">379</span>
<span id="L380" rel="#L380">380</span>
<span id="L381" rel="#L381">381</span>
<span id="L382" rel="#L382">382</span>
<span id="L383" rel="#L383">383</span>
<span id="L384" rel="#L384">384</span>
<span id="L385" rel="#L385">385</span>
<span id="L386" rel="#L386">386</span>
<span id="L387" rel="#L387">387</span>
<span id="L388" rel="#L388">388</span>
<span id="L389" rel="#L389">389</span>
<span id="L390" rel="#L390">390</span>
<span id="L391" rel="#L391">391</span>
<span id="L392" rel="#L392">392</span>
<span id="L393" rel="#L393">393</span>
<span id="L394" rel="#L394">394</span>
<span id="L395" rel="#L395">395</span>
<span id="L396" rel="#L396">396</span>
<span id="L397" rel="#L397">397</span>
<span id="L398" rel="#L398">398</span>
<span id="L399" rel="#L399">399</span>
<span id="L400" rel="#L400">400</span>
<span id="L401" rel="#L401">401</span>
<span id="L402" rel="#L402">402</span>
<span id="L403" rel="#L403">403</span>
<span id="L404" rel="#L404">404</span>
<span id="L405" rel="#L405">405</span>
<span id="L406" rel="#L406">406</span>
<span id="L407" rel="#L407">407</span>
<span id="L408" rel="#L408">408</span>
<span id="L409" rel="#L409">409</span>
<span id="L410" rel="#L410">410</span>
<span id="L411" rel="#L411">411</span>
<span id="L412" rel="#L412">412</span>
<span id="L413" rel="#L413">413</span>
<span id="L414" rel="#L414">414</span>
<span id="L415" rel="#L415">415</span>
<span id="L416" rel="#L416">416</span>
<span id="L417" rel="#L417">417</span>
<span id="L418" rel="#L418">418</span>
<span id="L419" rel="#L419">419</span>
<span id="L420" rel="#L420">420</span>
<span id="L421" rel="#L421">421</span>
<span id="L422" rel="#L422">422</span>
<span id="L423" rel="#L423">423</span>
<span id="L424" rel="#L424">424</span>
<span id="L425" rel="#L425">425</span>
<span id="L426" rel="#L426">426</span>
<span id="L427" rel="#L427">427</span>
<span id="L428" rel="#L428">428</span>
<span id="L429" rel="#L429">429</span>
<span id="L430" rel="#L430">430</span>
<span id="L431" rel="#L431">431</span>
<span id="L432" rel="#L432">432</span>
<span id="L433" rel="#L433">433</span>
<span id="L434" rel="#L434">434</span>
<span id="L435" rel="#L435">435</span>
<span id="L436" rel="#L436">436</span>
<span id="L437" rel="#L437">437</span>
<span id="L438" rel="#L438">438</span>
<span id="L439" rel="#L439">439</span>
<span id="L440" rel="#L440">440</span>
<span id="L441" rel="#L441">441</span>
<span id="L442" rel="#L442">442</span>
<span id="L443" rel="#L443">443</span>
<span id="L444" rel="#L444">444</span>
<span id="L445" rel="#L445">445</span>
<span id="L446" rel="#L446">446</span>
<span id="L447" rel="#L447">447</span>
<span id="L448" rel="#L448">448</span>
<span id="L449" rel="#L449">449</span>
<span id="L450" rel="#L450">450</span>
<span id="L451" rel="#L451">451</span>
<span id="L452" rel="#L452">452</span>
<span id="L453" rel="#L453">453</span>
<span id="L454" rel="#L454">454</span>
<span id="L455" rel="#L455">455</span>
<span id="L456" rel="#L456">456</span>
<span id="L457" rel="#L457">457</span>
<span id="L458" rel="#L458">458</span>
<span id="L459" rel="#L459">459</span>
<span id="L460" rel="#L460">460</span>
<span id="L461" rel="#L461">461</span>
<span id="L462" rel="#L462">462</span>
<span id="L463" rel="#L463">463</span>
<span id="L464" rel="#L464">464</span>
<span id="L465" rel="#L465">465</span>
<span id="L466" rel="#L466">466</span>
<span id="L467" rel="#L467">467</span>
<span id="L468" rel="#L468">468</span>
<span id="L469" rel="#L469">469</span>
<span id="L470" rel="#L470">470</span>
<span id="L471" rel="#L471">471</span>
<span id="L472" rel="#L472">472</span>
<span id="L473" rel="#L473">473</span>
<span id="L474" rel="#L474">474</span>
<span id="L475" rel="#L475">475</span>
<span id="L476" rel="#L476">476</span>
<span id="L477" rel="#L477">477</span>
<span id="L478" rel="#L478">478</span>
<span id="L479" rel="#L479">479</span>
<span id="L480" rel="#L480">480</span>
<span id="L481" rel="#L481">481</span>
<span id="L482" rel="#L482">482</span>
<span id="L483" rel="#L483">483</span>
<span id="L484" rel="#L484">484</span>
<span id="L485" rel="#L485">485</span>
<span id="L486" rel="#L486">486</span>
<span id="L487" rel="#L487">487</span>
<span id="L488" rel="#L488">488</span>
<span id="L489" rel="#L489">489</span>
<span id="L490" rel="#L490">490</span>
<span id="L491" rel="#L491">491</span>
<span id="L492" rel="#L492">492</span>
<span id="L493" rel="#L493">493</span>
<span id="L494" rel="#L494">494</span>
<span id="L495" rel="#L495">495</span>
<span id="L496" rel="#L496">496</span>
<span id="L497" rel="#L497">497</span>
<span id="L498" rel="#L498">498</span>
<span id="L499" rel="#L499">499</span>
<span id="L500" rel="#L500">500</span>
<span id="L501" rel="#L501">501</span>
<span id="L502" rel="#L502">502</span>
<span id="L503" rel="#L503">503</span>
<span id="L504" rel="#L504">504</span>
<span id="L505" rel="#L505">505</span>
<span id="L506" rel="#L506">506</span>
<span id="L507" rel="#L507">507</span>
<span id="L508" rel="#L508">508</span>
<span id="L509" rel="#L509">509</span>
<span id="L510" rel="#L510">510</span>
<span id="L511" rel="#L511">511</span>
<span id="L512" rel="#L512">512</span>
<span id="L513" rel="#L513">513</span>
<span id="L514" rel="#L514">514</span>
<span id="L515" rel="#L515">515</span>
<span id="L516" rel="#L516">516</span>
<span id="L517" rel="#L517">517</span>
<span id="L518" rel="#L518">518</span>
<span id="L519" rel="#L519">519</span>
<span id="L520" rel="#L520">520</span>
<span id="L521" rel="#L521">521</span>
<span id="L522" rel="#L522">522</span>
<span id="L523" rel="#L523">523</span>
<span id="L524" rel="#L524">524</span>
<span id="L525" rel="#L525">525</span>
<span id="L526" rel="#L526">526</span>
<span id="L527" rel="#L527">527</span>
<span id="L528" rel="#L528">528</span>
<span id="L529" rel="#L529">529</span>
<span id="L530" rel="#L530">530</span>
<span id="L531" rel="#L531">531</span>
<span id="L532" rel="#L532">532</span>
<span id="L533" rel="#L533">533</span>
<span id="L534" rel="#L534">534</span>
<span id="L535" rel="#L535">535</span>
<span id="L536" rel="#L536">536</span>
<span id="L537" rel="#L537">537</span>
<span id="L538" rel="#L538">538</span>
<span id="L539" rel="#L539">539</span>
<span id="L540" rel="#L540">540</span>
<span id="L541" rel="#L541">541</span>
<span id="L542" rel="#L542">542</span>
<span id="L543" rel="#L543">543</span>
<span id="L544" rel="#L544">544</span>
<span id="L545" rel="#L545">545</span>
<span id="L546" rel="#L546">546</span>
<span id="L547" rel="#L547">547</span>
<span id="L548" rel="#L548">548</span>
<span id="L549" rel="#L549">549</span>
<span id="L550" rel="#L550">550</span>
<span id="L551" rel="#L551">551</span>
<span id="L552" rel="#L552">552</span>
<span id="L553" rel="#L553">553</span>
<span id="L554" rel="#L554">554</span>
<span id="L555" rel="#L555">555</span>
<span id="L556" rel="#L556">556</span>
<span id="L557" rel="#L557">557</span>
<span id="L558" rel="#L558">558</span>
<span id="L559" rel="#L559">559</span>
<span id="L560" rel="#L560">560</span>
<span id="L561" rel="#L561">561</span>
<span id="L562" rel="#L562">562</span>
<span id="L563" rel="#L563">563</span>
<span id="L564" rel="#L564">564</span>
<span id="L565" rel="#L565">565</span>
<span id="L566" rel="#L566">566</span>
<span id="L567" rel="#L567">567</span>
<span id="L568" rel="#L568">568</span>
<span id="L569" rel="#L569">569</span>
<span id="L570" rel="#L570">570</span>
<span id="L571" rel="#L571">571</span>
<span id="L572" rel="#L572">572</span>
<span id="L573" rel="#L573">573</span>
<span id="L574" rel="#L574">574</span>
<span id="L575" rel="#L575">575</span>
<span id="L576" rel="#L576">576</span>
<span id="L577" rel="#L577">577</span>
<span id="L578" rel="#L578">578</span>
<span id="L579" rel="#L579">579</span>
<span id="L580" rel="#L580">580</span>
<span id="L581" rel="#L581">581</span>
<span id="L582" rel="#L582">582</span>
<span id="L583" rel="#L583">583</span>
<span id="L584" rel="#L584">584</span>
<span id="L585" rel="#L585">585</span>
<span id="L586" rel="#L586">586</span>
<span id="L587" rel="#L587">587</span>
<span id="L588" rel="#L588">588</span>
<span id="L589" rel="#L589">589</span>
<span id="L590" rel="#L590">590</span>
<span id="L591" rel="#L591">591</span>
<span id="L592" rel="#L592">592</span>
<span id="L593" rel="#L593">593</span>
<span id="L594" rel="#L594">594</span>
<span id="L595" rel="#L595">595</span>
<span id="L596" rel="#L596">596</span>
<span id="L597" rel="#L597">597</span>
<span id="L598" rel="#L598">598</span>
<span id="L599" rel="#L599">599</span>
<span id="L600" rel="#L600">600</span>
<span id="L601" rel="#L601">601</span>
<span id="L602" rel="#L602">602</span>
<span id="L603" rel="#L603">603</span>
<span id="L604" rel="#L604">604</span>
<span id="L605" rel="#L605">605</span>
<span id="L606" rel="#L606">606</span>
<span id="L607" rel="#L607">607</span>
<span id="L608" rel="#L608">608</span>
<span id="L609" rel="#L609">609</span>
<span id="L610" rel="#L610">610</span>
<span id="L611" rel="#L611">611</span>
<span id="L612" rel="#L612">612</span>
<span id="L613" rel="#L613">613</span>
<span id="L614" rel="#L614">614</span>
<span id="L615" rel="#L615">615</span>
<span id="L616" rel="#L616">616</span>
<span id="L617" rel="#L617">617</span>
<span id="L618" rel="#L618">618</span>
<span id="L619" rel="#L619">619</span>
<span id="L620" rel="#L620">620</span>
<span id="L621" rel="#L621">621</span>
<span id="L622" rel="#L622">622</span>
<span id="L623" rel="#L623">623</span>
<span id="L624" rel="#L624">624</span>
<span id="L625" rel="#L625">625</span>
<span id="L626" rel="#L626">626</span>
<span id="L627" rel="#L627">627</span>
<span id="L628" rel="#L628">628</span>
<span id="L629" rel="#L629">629</span>
<span id="L630" rel="#L630">630</span>
<span id="L631" rel="#L631">631</span>
<span id="L632" rel="#L632">632</span>
<span id="L633" rel="#L633">633</span>
<span id="L634" rel="#L634">634</span>
<span id="L635" rel="#L635">635</span>
<span id="L636" rel="#L636">636</span>
<span id="L637" rel="#L637">637</span>
<span id="L638" rel="#L638">638</span>
<span id="L639" rel="#L639">639</span>
<span id="L640" rel="#L640">640</span>
<span id="L641" rel="#L641">641</span>
<span id="L642" rel="#L642">642</span>
<span id="L643" rel="#L643">643</span>
<span id="L644" rel="#L644">644</span>
<span id="L645" rel="#L645">645</span>
<span id="L646" rel="#L646">646</span>
<span id="L647" rel="#L647">647</span>
<span id="L648" rel="#L648">648</span>
<span id="L649" rel="#L649">649</span>
<span id="L650" rel="#L650">650</span>
<span id="L651" rel="#L651">651</span>
<span id="L652" rel="#L652">652</span>
<span id="L653" rel="#L653">653</span>
<span id="L654" rel="#L654">654</span>
<span id="L655" rel="#L655">655</span>
<span id="L656" rel="#L656">656</span>
<span id="L657" rel="#L657">657</span>
<span id="L658" rel="#L658">658</span>
<span id="L659" rel="#L659">659</span>
<span id="L660" rel="#L660">660</span>
<span id="L661" rel="#L661">661</span>
<span id="L662" rel="#L662">662</span>
<span id="L663" rel="#L663">663</span>
<span id="L664" rel="#L664">664</span>
<span id="L665" rel="#L665">665</span>
<span id="L666" rel="#L666">666</span>
<span id="L667" rel="#L667">667</span>
<span id="L668" rel="#L668">668</span>
<span id="L669" rel="#L669">669</span>
<span id="L670" rel="#L670">670</span>
<span id="L671" rel="#L671">671</span>
<span id="L672" rel="#L672">672</span>
<span id="L673" rel="#L673">673</span>
<span id="L674" rel="#L674">674</span>
<span id="L675" rel="#L675">675</span>
<span id="L676" rel="#L676">676</span>
<span id="L677" rel="#L677">677</span>
<span id="L678" rel="#L678">678</span>
<span id="L679" rel="#L679">679</span>
<span id="L680" rel="#L680">680</span>
<span id="L681" rel="#L681">681</span>
<span id="L682" rel="#L682">682</span>
<span id="L683" rel="#L683">683</span>
<span id="L684" rel="#L684">684</span>
<span id="L685" rel="#L685">685</span>
<span id="L686" rel="#L686">686</span>
<span id="L687" rel="#L687">687</span>
<span id="L688" rel="#L688">688</span>
<span id="L689" rel="#L689">689</span>
<span id="L690" rel="#L690">690</span>
<span id="L691" rel="#L691">691</span>
<span id="L692" rel="#L692">692</span>
<span id="L693" rel="#L693">693</span>
<span id="L694" rel="#L694">694</span>
<span id="L695" rel="#L695">695</span>
<span id="L696" rel="#L696">696</span>
<span id="L697" rel="#L697">697</span>
<span id="L698" rel="#L698">698</span>
<span id="L699" rel="#L699">699</span>
<span id="L700" rel="#L700">700</span>
<span id="L701" rel="#L701">701</span>
<span id="L702" rel="#L702">702</span>
<span id="L703" rel="#L703">703</span>
<span id="L704" rel="#L704">704</span>
<span id="L705" rel="#L705">705</span>
<span id="L706" rel="#L706">706</span>
<span id="L707" rel="#L707">707</span>
<span id="L708" rel="#L708">708</span>
<span id="L709" rel="#L709">709</span>
<span id="L710" rel="#L710">710</span>
<span id="L711" rel="#L711">711</span>
<span id="L712" rel="#L712">712</span>
<span id="L713" rel="#L713">713</span>
<span id="L714" rel="#L714">714</span>
<span id="L715" rel="#L715">715</span>
<span id="L716" rel="#L716">716</span>
<span id="L717" rel="#L717">717</span>
<span id="L718" rel="#L718">718</span>
<span id="L719" rel="#L719">719</span>
<span id="L720" rel="#L720">720</span>
<span id="L721" rel="#L721">721</span>
<span id="L722" rel="#L722">722</span>
<span id="L723" rel="#L723">723</span>
<span id="L724" rel="#L724">724</span>
<span id="L725" rel="#L725">725</span>
<span id="L726" rel="#L726">726</span>
<span id="L727" rel="#L727">727</span>
<span id="L728" rel="#L728">728</span>
<span id="L729" rel="#L729">729</span>
<span id="L730" rel="#L730">730</span>
<span id="L731" rel="#L731">731</span>
<span id="L732" rel="#L732">732</span>

            </td>
            <td class="blob-line-code">
                    <div class="highlight"><pre><div class='line' id='LC1'><span class="cm">/*</span></div><div class='line' id='LC2'><span class="cm"> Licensed to the Apache Software Foundation (ASF) under one</span></div><div class='line' id='LC3'><span class="cm"> or more contributor license agreements.  See the NOTICE file</span></div><div class='line' id='LC4'><span class="cm"> distributed with this work for additional information</span></div><div class='line' id='LC5'><span class="cm"> regarding copyright ownership.  The ASF licenses this file</span></div><div class='line' id='LC6'><span class="cm"> to you under the Apache License, Version 2.0 (the</span></div><div class='line' id='LC7'><span class="cm"> &quot;License&quot;); you may not use this file except in compliance</span></div><div class='line' id='LC8'><span class="cm"> with the License.  You may obtain a copy of the License at</span></div><div class='line' id='LC9'><br/></div><div class='line' id='LC10'><span class="cm"> http://www.apache.org/licenses/LICENSE-2.0</span></div><div class='line' id='LC11'><br/></div><div class='line' id='LC12'><span class="cm"> Unless required by applicable law or agreed to in writing,</span></div><div class='line' id='LC13'><span class="cm"> software distributed under the License is distributed on an</span></div><div class='line' id='LC14'><span class="cm"> &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY</span></div><div class='line' id='LC15'><span class="cm"> KIND, either express or implied.  See the License for the</span></div><div class='line' id='LC16'><span class="cm"> specific language governing permissions and limitations</span></div><div class='line' id='LC17'><span class="cm"> under the License.</span></div><div class='line' id='LC18'><span class="cm"> */</span></div><div class='line' id='LC19'><br/></div><div class='line' id='LC20'><span class="cp">#import &lt;Cordova/CDV.h&gt;</span></div><div class='line' id='LC21'><span class="cp">#import &quot;CDVFileTransfer.h&quot;</span></div><div class='line' id='LC22'><span class="cp">#import &quot;CDVFile.h&quot;</span></div><div class='line' id='LC23'><br/></div><div class='line' id='LC24'><span class="cp">#import &lt;AssetsLibrary/ALAsset.h&gt;</span></div><div class='line' id='LC25'><span class="cp">#import &lt;AssetsLibrary/ALAssetRepresentation.h&gt;</span></div><div class='line' id='LC26'><span class="cp">#import &lt;AssetsLibrary/ALAssetsLibrary.h&gt;</span></div><div class='line' id='LC27'><span class="cp">#import &lt;CFNetwork/CFNetwork.h&gt;</span></div><div class='line' id='LC28'><br/></div><div class='line' id='LC29'><span class="k">@interface</span> <span class="nc">CDVFileTransfer</span> <span class="p">()</span></div><div class='line' id='LC30'><span class="c1">// Sets the requests headers for the request.</span></div><div class='line' id='LC31'><span class="o">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="n">applyRequestHeaders</span><span class="o">:</span><span class="p">(</span><span class="n">NSDictionary</span><span class="o">*</span><span class="p">)</span><span class="n">headers</span> <span class="n">toRequest</span><span class="o">:</span><span class="p">(</span><span class="n">NSMutableURLRequest</span><span class="o">*</span><span class="p">)</span><span class="n">req</span><span class="p">;</span></div><div class='line' id='LC32'><span class="c1">// Creates a delegate to handle an upload.</span></div><div class='line' id='LC33'><span class="k">-</span> <span class="p">(</span><span class="n">CDVFileTransferDelegate</span><span class="o">*</span><span class="p">)</span><span class="nf">delegateForUploadCommand:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC34'><span class="c1">// Creates an NSData* for the file for the given upload arguments.</span></div><div class='line' id='LC35'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">fileDataForUploadCommand:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC36'><span class="k">@end</span></div><div class='line' id='LC37'><br/></div><div class='line' id='LC38'><span class="c1">// Buffer size to use for streaming uploads.</span></div><div class='line' id='LC39'><span class="k">static</span> <span class="k">const</span> <span class="n">NSUInteger</span> <span class="n">kStreamBufferSize</span> <span class="o">=</span> <span class="mi">32768</span><span class="p">;</span></div><div class='line' id='LC40'><span class="c1">// Magic value within the options dict used to set a cookie.</span></div><div class='line' id='LC41'><span class="n">NSString</span><span class="o">*</span> <span class="k">const</span> <span class="n">kOptionsKeyCookie</span> <span class="o">=</span> <span class="s">@&quot;__cookie&quot;</span><span class="p">;</span></div><div class='line' id='LC42'><span class="c1">// Form boundary for multi-part requests.</span></div><div class='line' id='LC43'><span class="n">NSString</span><span class="o">*</span> <span class="k">const</span> <span class="n">kFormBoundary</span> <span class="o">=</span> <span class="s">@&quot;+++++org.apache.cordova.formBoundary&quot;</span><span class="p">;</span></div><div class='line' id='LC44'><br/></div><div class='line' id='LC45'><span class="c1">// Writes the given data to the stream in a blocking way.</span></div><div class='line' id='LC46'><span class="c1">// If successful, returns bytesToWrite.</span></div><div class='line' id='LC47'><span class="c1">// If the stream was closed on the other end, returns 0.</span></div><div class='line' id='LC48'><span class="c1">// If there was an error, returns -1.</span></div><div class='line' id='LC49'><span class="k">static</span> <span class="n">CFIndex</span> <span class="nf">WriteDataToStream</span><span class="p">(</span><span class="n">NSData</span><span class="o">*</span> <span class="n">data</span><span class="p">,</span> <span class="n">CFWriteStreamRef</span> <span class="n">stream</span><span class="p">)</span></div><div class='line' id='LC50'><span class="p">{</span></div><div class='line' id='LC51'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">UInt8</span><span class="o">*</span> <span class="n">bytes</span> <span class="o">=</span> <span class="p">(</span><span class="n">UInt8</span><span class="o">*</span><span class="p">)[</span><span class="n">data</span> <span class="n">bytes</span><span class="p">];</span></div><div class='line' id='LC52'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kt">long</span> <span class="kt">long</span> <span class="n">bytesToWrite</span> <span class="o">=</span> <span class="p">[</span><span class="n">data</span> <span class="n">length</span><span class="p">];</span></div><div class='line' id='LC53'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kt">long</span> <span class="kt">long</span> <span class="n">totalBytesWritten</span> <span class="o">=</span> <span class="mi">0</span><span class="p">;</span></div><div class='line' id='LC54'><br/></div><div class='line' id='LC55'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">while</span> <span class="p">(</span><span class="n">totalBytesWritten</span> <span class="o">&lt;</span> <span class="n">bytesToWrite</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC56'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CFIndex</span> <span class="n">result</span> <span class="o">=</span> <span class="n">CFWriteStreamWrite</span><span class="p">(</span><span class="n">stream</span><span class="p">,</span></div><div class='line' id='LC57'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">bytes</span> <span class="o">+</span> <span class="n">totalBytesWritten</span><span class="p">,</span></div><div class='line' id='LC58'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">bytesToWrite</span> <span class="o">-</span> <span class="n">totalBytesWritten</span><span class="p">);</span></div><div class='line' id='LC59'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">result</span> <span class="o">&lt;</span> <span class="mi">0</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC60'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CFStreamError</span> <span class="n">error</span> <span class="o">=</span> <span class="n">CFWriteStreamGetError</span><span class="p">(</span><span class="n">stream</span><span class="p">);</span></div><div class='line' id='LC61'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSLog</span><span class="p">(</span><span class="s">@&quot;WriteStreamError domain: %ld error: %ld&quot;</span><span class="p">,</span> <span class="n">error</span><span class="p">.</span><span class="n">domain</span><span class="p">,</span> <span class="n">error</span><span class="p">.</span><span class="n">error</span><span class="p">);</span></div><div class='line' id='LC62'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">result</span><span class="p">;</span></div><div class='line' id='LC63'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="k">if</span> <span class="p">(</span><span class="n">result</span> <span class="o">==</span> <span class="mi">0</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC64'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">result</span><span class="p">;</span></div><div class='line' id='LC65'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC66'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">totalBytesWritten</span> <span class="o">+=</span> <span class="n">result</span><span class="p">;</span></div><div class='line' id='LC67'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC68'><br/></div><div class='line' id='LC69'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">totalBytesWritten</span><span class="p">;</span></div><div class='line' id='LC70'><span class="p">}</span></div><div class='line' id='LC71'><br/></div><div class='line' id='LC72'><span class="k">@implementation</span> <span class="nc">CDVFileTransfer</span></div><div class='line' id='LC73'><span class="k">@synthesize</span> <span class="n">activeTransfers</span><span class="p">;</span></div><div class='line' id='LC74'><br/></div><div class='line' id='LC75'><span class="k">-</span> <span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nf">escapePathComponentForUrlString:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">urlString</span></div><div class='line' id='LC76'><span class="p">{</span></div><div class='line' id='LC77'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSRange</span> <span class="n">schemeAndHostRange</span> <span class="o">=</span> <span class="p">[</span><span class="n">urlString</span> <span class="n">rangeOfString</span><span class="o">:</span><span class="s">@&quot;://.*?/&quot;</span> <span class="n">options</span><span class="o">:</span><span class="n">NSRegularExpressionSearch</span><span class="p">];</span></div><div class='line' id='LC78'><br/></div><div class='line' id='LC79'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">schemeAndHostRange</span><span class="p">.</span><span class="n">length</span> <span class="o">==</span> <span class="mi">0</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC80'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">urlString</span><span class="p">;</span></div><div class='line' id='LC81'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC82'><br/></div><div class='line' id='LC83'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSInteger</span> <span class="n">schemeAndHostEndIndex</span> <span class="o">=</span> <span class="n">NSMaxRange</span><span class="p">(</span><span class="n">schemeAndHostRange</span><span class="p">);</span></div><div class='line' id='LC84'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">schemeAndHost</span> <span class="o">=</span> <span class="p">[</span><span class="n">urlString</span> <span class="n">substringToIndex</span><span class="o">:</span><span class="n">schemeAndHostEndIndex</span><span class="p">];</span></div><div class='line' id='LC85'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">pathComponent</span> <span class="o">=</span> <span class="p">[</span><span class="n">urlString</span> <span class="n">substringFromIndex</span><span class="o">:</span><span class="n">schemeAndHostEndIndex</span><span class="p">];</span></div><div class='line' id='LC86'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">pathComponent</span> <span class="o">=</span> <span class="p">[</span><span class="n">pathComponent</span> <span class="n">stringByAddingPercentEscapesUsingEncoding</span><span class="o">:</span><span class="n">NSUTF8StringEncoding</span><span class="p">];</span></div><div class='line' id='LC87'><br/></div><div class='line' id='LC88'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="p">[</span><span class="n">schemeAndHost</span> <span class="n">stringByAppendingString</span><span class="o">:</span><span class="n">pathComponent</span><span class="p">];</span></div><div class='line' id='LC89'><span class="p">}</span></div><div class='line' id='LC90'><br/></div><div class='line' id='LC91'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">applyRequestHeaders:</span><span class="p">(</span><span class="n">NSDictionary</span><span class="o">*</span><span class="p">)</span><span class="nv">headers</span> <span class="nf">toRequest:</span><span class="p">(</span><span class="n">NSMutableURLRequest</span><span class="o">*</span><span class="p">)</span><span class="nv">req</span></div><div class='line' id='LC92'><span class="p">{</span></div><div class='line' id='LC93'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">req</span> <span class="n">setValue</span><span class="o">:</span><span class="s">@&quot;XMLHttpRequest&quot;</span> <span class="n">forHTTPHeaderField</span><span class="o">:</span><span class="s">@&quot;X-Requested-With&quot;</span><span class="p">];</span></div><div class='line' id='LC94'><br/></div><div class='line' id='LC95'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">userAgent</span> <span class="o">=</span> <span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">commandDelegate</span> <span class="n">userAgent</span><span class="p">];</span></div><div class='line' id='LC96'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">userAgent</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC97'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">req</span> <span class="n">setValue</span><span class="o">:</span><span class="n">userAgent</span> <span class="n">forHTTPHeaderField</span><span class="o">:</span><span class="s">@&quot;User-Agent&quot;</span><span class="p">];</span></div><div class='line' id='LC98'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC99'><br/></div><div class='line' id='LC100'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="p">(</span><span class="n">NSString</span><span class="o">*</span> <span class="n">headerName</span> <span class="k">in</span> <span class="n">headers</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC101'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kt">id</span> <span class="n">value</span> <span class="o">=</span> <span class="p">[</span><span class="n">headers</span> <span class="n">objectForKey</span><span class="o">:</span><span class="n">headerName</span><span class="p">];</span></div><div class='line' id='LC102'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="o">!</span><span class="n">value</span> <span class="o">||</span> <span class="p">(</span><span class="n">value</span> <span class="o">==</span> <span class="p">[</span><span class="n">NSNull</span> <span class="n">null</span><span class="p">]))</span> <span class="p">{</span></div><div class='line' id='LC103'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">value</span> <span class="o">=</span> <span class="s">@&quot;null&quot;</span><span class="p">;</span></div><div class='line' id='LC104'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC105'><br/></div><div class='line' id='LC106'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// First, remove an existing header if one exists.</span></div><div class='line' id='LC107'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">req</span> <span class="n">setValue</span><span class="o">:</span><span class="nb">nil</span> <span class="n">forHTTPHeaderField</span><span class="o">:</span><span class="n">headerName</span><span class="p">];</span></div><div class='line' id='LC108'><br/></div><div class='line' id='LC109'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="o">!</span><span class="p">[</span><span class="n">value</span> <span class="n">isKindOfClass</span><span class="o">:</span><span class="p">[</span><span class="n">NSArray</span> <span class="n">class</span><span class="p">]])</span> <span class="p">{</span></div><div class='line' id='LC110'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">value</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSArray</span> <span class="n">arrayWithObject</span><span class="o">:</span><span class="n">value</span><span class="p">];</span></div><div class='line' id='LC111'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC112'><br/></div><div class='line' id='LC113'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Then, append all header values.</span></div><div class='line' id='LC114'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="p">(</span><span class="kt">id</span> <span class="n">__strong</span> <span class="n">subValue</span> <span class="k">in</span> <span class="n">value</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC115'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Convert from an NSNumber -&gt; NSString.</span></div><div class='line' id='LC116'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">([</span><span class="n">subValue</span> <span class="n">respondsToSelector</span><span class="o">:</span><span class="k">@selector</span><span class="p">(</span><span class="n">stringValue</span><span class="p">)])</span> <span class="p">{</span></div><div class='line' id='LC117'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">subValue</span> <span class="o">=</span> <span class="p">[</span><span class="n">subValue</span> <span class="n">stringValue</span><span class="p">];</span></div><div class='line' id='LC118'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC119'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">([</span><span class="n">subValue</span> <span class="n">isKindOfClass</span><span class="o">:</span><span class="p">[</span><span class="n">NSString</span> <span class="n">class</span><span class="p">]])</span> <span class="p">{</span></div><div class='line' id='LC120'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">req</span> <span class="n">addValue</span><span class="o">:</span><span class="n">subValue</span> <span class="n">forHTTPHeaderField</span><span class="o">:</span><span class="n">headerName</span><span class="p">];</span></div><div class='line' id='LC121'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC122'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC123'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC124'><span class="p">}</span></div><div class='line' id='LC125'><br/></div><div class='line' id='LC126'><span class="k">-</span> <span class="p">(</span><span class="n">NSURLRequest</span><span class="o">*</span><span class="p">)</span><span class="nf">requestForUploadCommand:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span> <span class="nf">fileData:</span><span class="p">(</span><span class="n">NSData</span><span class="o">*</span><span class="p">)</span><span class="nv">fileData</span></div><div class='line' id='LC127'><span class="p">{</span></div><div class='line' id='LC128'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// arguments order from js: [filePath, server, fileKey, fileName, mimeType, params, debug, chunkedMode]</span></div><div class='line' id='LC129'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// however, params is a JavaScript object and during marshalling is put into the options dict,</span></div><div class='line' id='LC130'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// thus debug and chunkedMode are the 6th and 7th arguments</span></div><div class='line' id='LC131'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">target</span> <span class="o">=</span> <span class="p">[</span><span class="n">command</span> <span class="n">argumentAtIndex</span><span class="o">:</span><span class="mi">0</span><span class="p">];</span></div><div class='line' id='LC132'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">server</span> <span class="o">=</span> <span class="p">[</span><span class="n">command</span> <span class="n">argumentAtIndex</span><span class="o">:</span><span class="mi">1</span><span class="p">];</span></div><div class='line' id='LC133'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">fileKey</span> <span class="o">=</span> <span class="p">[</span><span class="n">command</span> <span class="n">argumentAtIndex</span><span class="o">:</span><span class="mi">2</span> <span class="n">withDefault</span><span class="o">:</span><span class="s">@&quot;file&quot;</span><span class="p">];</span></div><div class='line' id='LC134'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">fileName</span> <span class="o">=</span> <span class="p">[</span><span class="n">command</span> <span class="n">argumentAtIndex</span><span class="o">:</span><span class="mi">3</span> <span class="n">withDefault</span><span class="o">:</span><span class="s">@&quot;no-filename&quot;</span><span class="p">];</span></div><div class='line' id='LC135'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">mimeType</span> <span class="o">=</span> <span class="p">[</span><span class="n">command</span> <span class="n">argumentAtIndex</span><span class="o">:</span><span class="mi">4</span> <span class="n">withDefault</span><span class="o">:</span><span class="nb">nil</span><span class="p">];</span></div><div class='line' id='LC136'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSDictionary</span><span class="o">*</span> <span class="n">options</span> <span class="o">=</span> <span class="p">[</span><span class="n">command</span> <span class="n">argumentAtIndex</span><span class="o">:</span><span class="mi">5</span> <span class="n">withDefault</span><span class="o">:</span><span class="nb">nil</span><span class="p">];</span></div><div class='line' id='LC137'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">//    BOOL trustAllHosts = [[arguments objectAtIndex:6 withDefault:[NSNumber numberWithBool:YES]] boolValue]; // allow self-signed certs</span></div><div class='line' id='LC138'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kt">BOOL</span> <span class="n">chunkedMode</span> <span class="o">=</span> <span class="p">[[</span><span class="n">command</span> <span class="n">argumentAtIndex</span><span class="o">:</span><span class="mi">7</span> <span class="n">withDefault</span><span class="o">:</span><span class="p">[</span><span class="n">NSNumber</span> <span class="n">numberWithBool</span><span class="o">:</span><span class="nb">YES</span><span class="p">]]</span> <span class="n">boolValue</span><span class="p">];</span></div><div class='line' id='LC139'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSDictionary</span><span class="o">*</span> <span class="n">headers</span> <span class="o">=</span> <span class="p">[</span><span class="n">command</span> <span class="n">argumentAtIndex</span><span class="o">:</span><span class="mi">8</span> <span class="n">withDefault</span><span class="o">:</span><span class="nb">nil</span><span class="p">];</span></div><div class='line' id='LC140'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Allow alternative http method, default to POST. JS side checks</span></div><div class='line' id='LC141'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// for allowed methods, currently PUT or POST (forces POST for</span></div><div class='line' id='LC142'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// unrecognised values)</span></div><div class='line' id='LC143'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">httpMethod</span> <span class="o">=</span> <span class="p">[</span><span class="n">command</span> <span class="n">argumentAtIndex</span><span class="o">:</span><span class="mi">10</span> <span class="n">withDefault</span><span class="o">:</span><span class="s">@&quot;POST&quot;</span><span class="p">];</span></div><div class='line' id='LC144'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVPluginResult</span><span class="o">*</span> <span class="n">result</span> <span class="o">=</span> <span class="nb">nil</span><span class="p">;</span></div><div class='line' id='LC145'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVFileTransferError</span> <span class="n">errorCode</span> <span class="o">=</span> <span class="mi">0</span><span class="p">;</span></div><div class='line' id='LC146'><br/></div><div class='line' id='LC147'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// NSURL does not accepts URLs with spaces in the path. We escape the path in order</span></div><div class='line' id='LC148'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// to be more lenient.</span></div><div class='line' id='LC149'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSURL</span><span class="o">*</span> <span class="n">url</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSURL</span> <span class="n">URLWithString</span><span class="o">:</span><span class="n">server</span><span class="p">];</span></div><div class='line' id='LC150'><br/></div><div class='line' id='LC151'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="o">!</span><span class="n">url</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC152'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">errorCode</span> <span class="o">=</span> <span class="n">INVALID_URL_ERR</span><span class="p">;</span></div><div class='line' id='LC153'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSLog</span><span class="p">(</span><span class="s">@&quot;File Transfer Error: Invalid server URL %@&quot;</span><span class="p">,</span> <span class="n">server</span><span class="p">);</span></div><div class='line' id='LC154'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="k">if</span> <span class="p">(</span><span class="o">!</span><span class="n">fileData</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC155'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">errorCode</span> <span class="o">=</span> <span class="n">FILE_NOT_FOUND_ERR</span><span class="p">;</span></div><div class='line' id='LC156'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC157'><br/></div><div class='line' id='LC158'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">errorCode</span> <span class="o">&gt;</span> <span class="mi">0</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC159'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">CDVPluginResult</span> <span class="n">resultWithStatus</span><span class="o">:</span><span class="n">CDVCommandStatus_ERROR</span> <span class="n">messageAsDictionary</span><span class="o">:</span><span class="p">[</span><span class="n">self</span> <span class="n">createFileTransferError</span><span class="o">:</span><span class="n">errorCode</span> <span class="n">AndSource</span><span class="o">:</span><span class="n">target</span> <span class="n">AndTarget</span><span class="o">:</span><span class="n">server</span><span class="p">]];</span></div><div class='line' id='LC160'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">commandDelegate</span> <span class="n">sendPluginResult</span><span class="o">:</span><span class="n">result</span> <span class="n">callbackId</span><span class="o">:</span><span class="n">command</span><span class="p">.</span><span class="n">callbackId</span><span class="p">];</span></div><div class='line' id='LC161'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="nb">nil</span><span class="p">;</span></div><div class='line' id='LC162'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC163'><br/></div><div class='line' id='LC164'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSMutableURLRequest</span><span class="o">*</span> <span class="n">req</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSMutableURLRequest</span> <span class="n">requestWithURL</span><span class="o">:</span><span class="n">url</span><span class="p">];</span></div><div class='line' id='LC165'><br/></div><div class='line' id='LC166'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">req</span> <span class="n">setHTTPMethod</span><span class="o">:</span><span class="n">httpMethod</span><span class="p">];</span></div><div class='line' id='LC167'><br/></div><div class='line' id='LC168'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">//    Magic value to set a cookie</span></div><div class='line' id='LC169'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">([</span><span class="n">options</span> <span class="n">objectForKey</span><span class="o">:</span><span class="n">kOptionsKeyCookie</span><span class="p">])</span> <span class="p">{</span></div><div class='line' id='LC170'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">req</span> <span class="n">setValue</span><span class="o">:</span><span class="p">[</span><span class="n">options</span> <span class="n">objectForKey</span><span class="o">:</span><span class="n">kOptionsKeyCookie</span><span class="p">]</span> <span class="n">forHTTPHeaderField</span><span class="o">:</span><span class="s">@&quot;Cookie&quot;</span><span class="p">];</span></div><div class='line' id='LC171'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">req</span> <span class="n">setHTTPShouldHandleCookies</span><span class="o">:</span><span class="nb">NO</span><span class="p">];</span></div><div class='line' id='LC172'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC173'><br/></div><div class='line' id='LC174'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">contentType</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSString</span> <span class="n">stringWithFormat</span><span class="o">:</span><span class="s">@&quot;multipart/form-data; boundary=%@&quot;</span><span class="p">,</span> <span class="n">kFormBoundary</span><span class="p">];</span></div><div class='line' id='LC175'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">req</span> <span class="n">setValue</span><span class="o">:</span><span class="n">contentType</span> <span class="n">forHTTPHeaderField</span><span class="o">:</span><span class="s">@&quot;Content-Type&quot;</span><span class="p">];</span></div><div class='line' id='LC176'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span> <span class="n">applyRequestHeaders</span><span class="o">:</span><span class="n">headers</span> <span class="n">toRequest</span><span class="o">:</span><span class="n">req</span><span class="p">];</span></div><div class='line' id='LC177'><br/></div><div class='line' id='LC178'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSData</span><span class="o">*</span> <span class="n">formBoundaryData</span> <span class="o">=</span> <span class="p">[[</span><span class="n">NSString</span> <span class="n">stringWithFormat</span><span class="o">:</span><span class="s">@&quot;--%@</span><span class="se">\r\n</span><span class="s">&quot;</span><span class="p">,</span> <span class="n">kFormBoundary</span><span class="p">]</span> <span class="n">dataUsingEncoding</span><span class="o">:</span><span class="n">NSUTF8StringEncoding</span><span class="p">];</span></div><div class='line' id='LC179'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSMutableData</span><span class="o">*</span> <span class="n">postBodyBeforeFile</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSMutableData</span> <span class="n">data</span><span class="p">];</span></div><div class='line' id='LC180'><br/></div><div class='line' id='LC181'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="p">(</span><span class="n">NSString</span><span class="o">*</span> <span class="n">key</span> <span class="k">in</span> <span class="n">options</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC182'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kt">id</span> <span class="n">val</span> <span class="o">=</span> <span class="p">[</span><span class="n">options</span> <span class="n">objectForKey</span><span class="o">:</span><span class="n">key</span><span class="p">];</span></div><div class='line' id='LC183'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="o">!</span><span class="n">val</span> <span class="o">||</span> <span class="p">(</span><span class="n">val</span> <span class="o">==</span> <span class="p">[</span><span class="n">NSNull</span> <span class="n">null</span><span class="p">])</span> <span class="o">||</span> <span class="p">[</span><span class="n">key</span> <span class="n">isEqualToString</span><span class="o">:</span><span class="n">kOptionsKeyCookie</span><span class="p">])</span> <span class="p">{</span></div><div class='line' id='LC184'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">continue</span><span class="p">;</span></div><div class='line' id='LC185'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC186'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// if it responds to stringValue selector (eg NSNumber) get the NSString</span></div><div class='line' id='LC187'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">([</span><span class="n">val</span> <span class="n">respondsToSelector</span><span class="o">:</span><span class="k">@selector</span><span class="p">(</span><span class="n">stringValue</span><span class="p">)])</span> <span class="p">{</span></div><div class='line' id='LC188'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">val</span> <span class="o">=</span> <span class="p">[</span><span class="n">val</span> <span class="n">stringValue</span><span class="p">];</span></div><div class='line' id='LC189'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC190'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// finally, check whether it is a NSString (for dataUsingEncoding selector below)</span></div><div class='line' id='LC191'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="o">!</span><span class="p">[</span><span class="n">val</span> <span class="n">isKindOfClass</span><span class="o">:</span><span class="p">[</span><span class="n">NSString</span> <span class="n">class</span><span class="p">]])</span> <span class="p">{</span></div><div class='line' id='LC192'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">continue</span><span class="p">;</span></div><div class='line' id='LC193'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC194'><br/></div><div class='line' id='LC195'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">postBodyBeforeFile</span> <span class="n">appendData</span><span class="o">:</span><span class="n">formBoundaryData</span><span class="p">];</span></div><div class='line' id='LC196'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">postBodyBeforeFile</span> <span class="n">appendData</span><span class="o">:</span><span class="p">[[</span><span class="n">NSString</span> <span class="n">stringWithFormat</span><span class="o">:</span><span class="s">@&quot;Content-Disposition: form-data; name=</span><span class="se">\&quot;</span><span class="s">%@</span><span class="se">\&quot;\r\n\r\n</span><span class="s">&quot;</span><span class="p">,</span> <span class="n">key</span><span class="p">]</span> <span class="n">dataUsingEncoding</span><span class="o">:</span><span class="n">NSUTF8StringEncoding</span><span class="p">]];</span></div><div class='line' id='LC197'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">postBodyBeforeFile</span> <span class="n">appendData</span><span class="o">:</span><span class="p">[</span><span class="n">val</span> <span class="n">dataUsingEncoding</span><span class="o">:</span><span class="n">NSUTF8StringEncoding</span><span class="p">]];</span></div><div class='line' id='LC198'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">postBodyBeforeFile</span> <span class="n">appendData</span><span class="o">:</span><span class="p">[</span><span class="s">@&quot;</span><span class="se">\r\n</span><span class="s">&quot;</span> <span class="n">dataUsingEncoding</span> <span class="o">:</span> <span class="n">NSUTF8StringEncoding</span><span class="p">]];</span></div><div class='line' id='LC199'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC200'><br/></div><div class='line' id='LC201'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">postBodyBeforeFile</span> <span class="n">appendData</span><span class="o">:</span><span class="n">formBoundaryData</span><span class="p">];</span></div><div class='line' id='LC202'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">postBodyBeforeFile</span> <span class="n">appendData</span><span class="o">:</span><span class="p">[[</span><span class="n">NSString</span> <span class="n">stringWithFormat</span><span class="o">:</span><span class="s">@&quot;Content-Disposition: form-data; name=</span><span class="se">\&quot;</span><span class="s">%@</span><span class="se">\&quot;</span><span class="s">; filename=</span><span class="se">\&quot;</span><span class="s">%@</span><span class="se">\&quot;\r\n</span><span class="s">&quot;</span><span class="p">,</span> <span class="n">fileKey</span><span class="p">,</span> <span class="n">fileName</span><span class="p">]</span> <span class="n">dataUsingEncoding</span><span class="o">:</span><span class="n">NSUTF8StringEncoding</span><span class="p">]];</span></div><div class='line' id='LC203'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">mimeType</span> <span class="o">!=</span> <span class="nb">nil</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC204'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">postBodyBeforeFile</span> <span class="n">appendData</span><span class="o">:</span><span class="p">[[</span><span class="n">NSString</span> <span class="n">stringWithFormat</span><span class="o">:</span><span class="s">@&quot;Content-Type: %@</span><span class="se">\r\n</span><span class="s">&quot;</span><span class="p">,</span> <span class="n">mimeType</span><span class="p">]</span> <span class="n">dataUsingEncoding</span><span class="o">:</span><span class="n">NSUTF8StringEncoding</span><span class="p">]];</span></div><div class='line' id='LC205'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC206'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">postBodyBeforeFile</span> <span class="n">appendData</span><span class="o">:</span><span class="p">[[</span><span class="n">NSString</span> <span class="n">stringWithFormat</span><span class="o">:</span><span class="s">@&quot;Content-Length: %d</span><span class="se">\r\n\r\n</span><span class="s">&quot;</span><span class="p">,</span> <span class="p">[</span><span class="n">fileData</span> <span class="n">length</span><span class="p">]]</span> <span class="n">dataUsingEncoding</span><span class="o">:</span><span class="n">NSUTF8StringEncoding</span><span class="p">]];</span></div><div class='line' id='LC207'><br/></div><div class='line' id='LC208'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">DLog</span><span class="p">(</span><span class="s">@&quot;fileData length: %d&quot;</span><span class="p">,</span> <span class="p">[</span><span class="n">fileData</span> <span class="n">length</span><span class="p">]);</span></div><div class='line' id='LC209'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSData</span><span class="o">*</span> <span class="n">postBodyAfterFile</span> <span class="o">=</span> <span class="p">[[</span><span class="n">NSString</span> <span class="n">stringWithFormat</span><span class="o">:</span><span class="s">@&quot;</span><span class="se">\r\n</span><span class="s">--%@--</span><span class="se">\r\n</span><span class="s">&quot;</span><span class="p">,</span> <span class="n">kFormBoundary</span><span class="p">]</span> <span class="n">dataUsingEncoding</span><span class="o">:</span><span class="n">NSUTF8StringEncoding</span><span class="p">];</span></div><div class='line' id='LC210'><br/></div><div class='line' id='LC211'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kt">long</span> <span class="kt">long</span> <span class="n">totalPayloadLength</span> <span class="o">=</span> <span class="p">[</span><span class="n">postBodyBeforeFile</span> <span class="n">length</span><span class="p">]</span> <span class="o">+</span> <span class="p">[</span><span class="n">fileData</span> <span class="n">length</span><span class="p">]</span> <span class="o">+</span> <span class="p">[</span><span class="n">postBodyAfterFile</span> <span class="n">length</span><span class="p">];</span></div><div class='line' id='LC212'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">req</span> <span class="n">setValue</span><span class="o">:</span><span class="p">[[</span><span class="n">NSNumber</span> <span class="n">numberWithLongLong</span><span class="o">:</span><span class="n">totalPayloadLength</span><span class="p">]</span> <span class="n">stringValue</span><span class="p">]</span> <span class="n">forHTTPHeaderField</span><span class="o">:</span><span class="s">@&quot;Content-Length&quot;</span><span class="p">];</span></div><div class='line' id='LC213'><br/></div><div class='line' id='LC214'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">chunkedMode</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC215'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CFReadStreamRef</span> <span class="n">readStream</span> <span class="o">=</span> <span class="nb">NULL</span><span class="p">;</span></div><div class='line' id='LC216'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CFWriteStreamRef</span> <span class="n">writeStream</span> <span class="o">=</span> <span class="nb">NULL</span><span class="p">;</span></div><div class='line' id='LC217'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CFStreamCreateBoundPair</span><span class="p">(</span><span class="nb">NULL</span><span class="p">,</span> <span class="o">&amp;</span><span class="n">readStream</span><span class="p">,</span> <span class="o">&amp;</span><span class="n">writeStream</span><span class="p">,</span> <span class="n">kStreamBufferSize</span><span class="p">);</span></div><div class='line' id='LC218'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">req</span> <span class="n">setHTTPBodyStream</span><span class="o">:</span><span class="n">CFBridgingRelease</span><span class="p">(</span><span class="n">readStream</span><span class="p">)];</span></div><div class='line' id='LC219'><br/></div><div class='line' id='LC220'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">backgroundTaskID</span> <span class="o">=</span> <span class="p">[[</span><span class="n">UIApplication</span> <span class="n">sharedApplication</span><span class="p">]</span> <span class="n">beginBackgroundTaskWithExpirationHandler</span><span class="o">:^</span><span class="p">{</span></div><div class='line' id='LC221'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[[</span><span class="n">UIApplication</span> <span class="n">sharedApplication</span><span class="p">]</span> <span class="n">endBackgroundTask</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">backgroundTaskID</span><span class="p">];</span></div><div class='line' id='LC222'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">backgroundTaskID</span> <span class="o">=</span> <span class="n">UIBackgroundTaskInvalid</span><span class="p">;</span></div><div class='line' id='LC223'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSLog</span><span class="p">(</span><span class="s">@&quot;Background task to upload media finished.&quot;</span><span class="p">);</span></div><div class='line' id='LC224'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}];</span></div><div class='line' id='LC225'><br/></div><div class='line' id='LC226'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">commandDelegate</span> <span class="n">runInBackground</span><span class="o">:^</span><span class="p">{</span></div><div class='line' id='LC227'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">CFWriteStreamOpen</span><span class="p">(</span><span class="n">writeStream</span><span class="p">))</span> <span class="p">{</span></div><div class='line' id='LC228'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSData</span><span class="o">*</span> <span class="n">chunks</span><span class="p">[]</span> <span class="o">=</span> <span class="p">{</span><span class="n">postBodyBeforeFile</span><span class="p">,</span> <span class="n">fileData</span><span class="p">,</span> <span class="n">postBodyAfterFile</span><span class="p">};</span></div><div class='line' id='LC229'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kt">int</span> <span class="n">numChunks</span> <span class="o">=</span> <span class="k">sizeof</span><span class="p">(</span><span class="n">chunks</span><span class="p">)</span> <span class="o">/</span> <span class="k">sizeof</span><span class="p">(</span><span class="n">chunks</span><span class="p">[</span><span class="mi">0</span><span class="p">]);</span></div><div class='line' id='LC230'><br/></div><div class='line' id='LC231'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="p">(</span><span class="kt">int</span> <span class="n">i</span> <span class="o">=</span> <span class="mi">0</span><span class="p">;</span> <span class="n">i</span> <span class="o">&lt;</span> <span class="n">numChunks</span><span class="p">;</span> <span class="o">++</span><span class="n">i</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC232'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CFIndex</span> <span class="n">result</span> <span class="o">=</span> <span class="n">WriteDataToStream</span><span class="p">(</span><span class="n">chunks</span><span class="p">[</span><span class="n">i</span><span class="p">],</span> <span class="n">writeStream</span><span class="p">);</span></div><div class='line' id='LC233'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">result</span> <span class="o">&lt;=</span> <span class="mi">0</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC234'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">break</span><span class="p">;</span></div><div class='line' id='LC235'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC236'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC237'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="p">{</span></div><div class='line' id='LC238'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSLog</span><span class="p">(</span><span class="s">@&quot;FileTransfer: Failed to open writeStream&quot;</span><span class="p">);</span></div><div class='line' id='LC239'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC240'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CFWriteStreamClose</span><span class="p">(</span><span class="n">writeStream</span><span class="p">);</span></div><div class='line' id='LC241'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CFRelease</span><span class="p">(</span><span class="n">writeStream</span><span class="p">);</span></div><div class='line' id='LC242'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}];</span></div><div class='line' id='LC243'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="p">{</span></div><div class='line' id='LC244'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">postBodyBeforeFile</span> <span class="n">appendData</span><span class="o">:</span><span class="n">fileData</span><span class="p">];</span></div><div class='line' id='LC245'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">postBodyBeforeFile</span> <span class="n">appendData</span><span class="o">:</span><span class="n">postBodyAfterFile</span><span class="p">];</span></div><div class='line' id='LC246'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">req</span> <span class="n">setHTTPBody</span><span class="o">:</span><span class="n">postBodyBeforeFile</span><span class="p">];</span></div><div class='line' id='LC247'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC248'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">req</span><span class="p">;</span></div><div class='line' id='LC249'><span class="p">}</span></div><div class='line' id='LC250'><br/></div><div class='line' id='LC251'><span class="k">-</span> <span class="p">(</span><span class="n">CDVFileTransferDelegate</span><span class="o">*</span><span class="p">)</span><span class="nf">delegateForUploadCommand:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span></div><div class='line' id='LC252'><span class="p">{</span></div><div class='line' id='LC253'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">source</span> <span class="o">=</span> <span class="p">[</span><span class="n">command</span><span class="p">.</span><span class="n">arguments</span> <span class="n">objectAtIndex</span><span class="o">:</span><span class="mi">0</span><span class="p">];</span></div><div class='line' id='LC254'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">server</span> <span class="o">=</span> <span class="p">[</span><span class="n">command</span><span class="p">.</span><span class="n">arguments</span> <span class="n">objectAtIndex</span><span class="o">:</span><span class="mi">1</span><span class="p">];</span></div><div class='line' id='LC255'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kt">BOOL</span> <span class="n">trustAllHosts</span> <span class="o">=</span> <span class="p">[[</span><span class="n">command</span><span class="p">.</span><span class="n">arguments</span> <span class="n">objectAtIndex</span><span class="o">:</span><span class="mi">6</span> <span class="n">withDefault</span><span class="o">:</span><span class="p">[</span><span class="n">NSNumber</span> <span class="n">numberWithBool</span><span class="o">:</span><span class="nb">YES</span><span class="p">]]</span> <span class="n">boolValue</span><span class="p">];</span> <span class="c1">// allow self-signed certs</span></div><div class='line' id='LC256'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">objectId</span> <span class="o">=</span> <span class="p">[</span><span class="n">command</span><span class="p">.</span><span class="n">arguments</span> <span class="n">objectAtIndex</span><span class="o">:</span><span class="mi">9</span><span class="p">];</span></div><div class='line' id='LC257'><br/></div><div class='line' id='LC258'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVFileTransferDelegate</span><span class="o">*</span> <span class="n">delegate</span> <span class="o">=</span> <span class="p">[[</span><span class="n">CDVFileTransferDelegate</span> <span class="n">alloc</span><span class="p">]</span> <span class="n">init</span><span class="p">];</span></div><div class='line' id='LC259'><br/></div><div class='line' id='LC260'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">delegate</span><span class="p">.</span><span class="n">command</span> <span class="o">=</span> <span class="n">self</span><span class="p">;</span></div><div class='line' id='LC261'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">delegate</span><span class="p">.</span><span class="n">callbackId</span> <span class="o">=</span> <span class="n">command</span><span class="p">.</span><span class="n">callbackId</span><span class="p">;</span></div><div class='line' id='LC262'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">delegate</span><span class="p">.</span><span class="n">direction</span> <span class="o">=</span> <span class="n">CDV_TRANSFER_UPLOAD</span><span class="p">;</span></div><div class='line' id='LC263'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">delegate</span><span class="p">.</span><span class="n">objectId</span> <span class="o">=</span> <span class="n">objectId</span><span class="p">;</span></div><div class='line' id='LC264'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">delegate</span><span class="p">.</span><span class="n">source</span> <span class="o">=</span> <span class="n">source</span><span class="p">;</span></div><div class='line' id='LC265'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">delegate</span><span class="p">.</span><span class="n">target</span> <span class="o">=</span> <span class="n">server</span><span class="p">;</span></div><div class='line' id='LC266'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">delegate</span><span class="p">.</span><span class="n">trustAllHosts</span> <span class="o">=</span> <span class="n">trustAllHosts</span><span class="p">;</span></div><div class='line' id='LC267'><br/></div><div class='line' id='LC268'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">delegate</span><span class="p">;</span></div><div class='line' id='LC269'><span class="p">}</span></div><div class='line' id='LC270'><br/></div><div class='line' id='LC271'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">fileDataForUploadCommand:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span></div><div class='line' id='LC272'><span class="p">{</span></div><div class='line' id='LC273'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">target</span> <span class="o">=</span> <span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)[</span><span class="n">command</span><span class="p">.</span><span class="n">arguments</span> <span class="n">objectAtIndex</span><span class="o">:</span><span class="mi">0</span><span class="p">];</span></div><div class='line' id='LC274'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSError</span><span class="o">*</span> <span class="n">__autoreleasing</span> <span class="n">err</span> <span class="o">=</span> <span class="nb">nil</span><span class="p">;</span></div><div class='line' id='LC275'><br/></div><div class='line' id='LC276'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// return unsupported result for assets-library URLs</span></div><div class='line' id='LC277'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">([</span><span class="n">target</span> <span class="n">hasPrefix</span><span class="o">:</span><span class="n">kCDVAssetsLibraryPrefix</span><span class="p">])</span> <span class="p">{</span></div><div class='line' id='LC278'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Instead, we return after calling the asynchronous method and send `result` in each of the blocks.</span></div><div class='line' id='LC279'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ALAssetsLibraryAssetForURLResultBlock</span> <span class="n">resultBlock</span> <span class="o">=</span> <span class="o">^</span><span class="p">(</span><span class="n">ALAsset</span><span class="o">*</span> <span class="n">asset</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC280'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">asset</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC281'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// We have the asset!  Get the data and send it off.</span></div><div class='line' id='LC282'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ALAssetRepresentation</span><span class="o">*</span> <span class="n">assetRepresentation</span> <span class="o">=</span> <span class="p">[</span><span class="n">asset</span> <span class="n">defaultRepresentation</span><span class="p">];</span></div><div class='line' id='LC283'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">Byte</span><span class="o">*</span> <span class="n">buffer</span> <span class="o">=</span> <span class="p">(</span><span class="n">Byte</span><span class="o">*</span><span class="p">)</span><span class="n">malloc</span><span class="p">([</span><span class="n">assetRepresentation</span> <span class="n">size</span><span class="p">]);</span></div><div class='line' id='LC284'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSUInteger</span> <span class="n">bufferSize</span> <span class="o">=</span> <span class="p">[</span><span class="n">assetRepresentation</span> <span class="n">getBytes</span><span class="o">:</span><span class="n">buffer</span> <span class="n">fromOffset</span><span class="o">:</span><span class="mf">0.0</span> <span class="n">length</span><span class="o">:</span><span class="p">[</span><span class="n">assetRepresentation</span> <span class="n">size</span><span class="p">]</span> <span class="n">error</span><span class="o">:</span><span class="nb">nil</span><span class="p">];</span></div><div class='line' id='LC285'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSData</span><span class="o">*</span> <span class="n">fileData</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSData</span> <span class="n">dataWithBytesNoCopy</span><span class="o">:</span><span class="n">buffer</span> <span class="n">length</span><span class="o">:</span><span class="n">bufferSize</span> <span class="n">freeWhenDone</span><span class="o">:</span><span class="nb">YES</span><span class="p">];</span></div><div class='line' id='LC286'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span> <span class="n">uploadData</span><span class="o">:</span><span class="n">fileData</span> <span class="n">command</span><span class="o">:</span><span class="n">command</span><span class="p">];</span></div><div class='line' id='LC287'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="p">{</span></div><div class='line' id='LC288'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// We couldn&#39;t find the asset.  Send the appropriate error.</span></div><div class='line' id='LC289'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVPluginResult</span><span class="o">*</span> <span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">CDVPluginResult</span> <span class="n">resultWithStatus</span><span class="o">:</span><span class="n">CDVCommandStatus_IO_EXCEPTION</span> <span class="n">messageAsInt</span><span class="o">:</span><span class="n">NOT_FOUND_ERR</span><span class="p">];</span></div><div class='line' id='LC290'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">commandDelegate</span> <span class="n">sendPluginResult</span><span class="o">:</span><span class="n">result</span> <span class="n">callbackId</span><span class="o">:</span><span class="n">command</span><span class="p">.</span><span class="n">callbackId</span><span class="p">];</span></div><div class='line' id='LC291'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC292'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">};</span></div><div class='line' id='LC293'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ALAssetsLibraryAccessFailureBlock</span> <span class="n">failureBlock</span> <span class="o">=</span> <span class="o">^</span><span class="p">(</span><span class="n">NSError</span><span class="o">*</span> <span class="n">error</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC294'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Retrieving the asset failed for some reason.  Send the appropriate error.</span></div><div class='line' id='LC295'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVPluginResult</span><span class="o">*</span> <span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">CDVPluginResult</span> <span class="n">resultWithStatus</span><span class="o">:</span><span class="n">CDVCommandStatus_IO_EXCEPTION</span> <span class="n">messageAsString</span><span class="o">:</span><span class="p">[</span><span class="n">error</span> <span class="n">localizedDescription</span><span class="p">]];</span></div><div class='line' id='LC296'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">commandDelegate</span> <span class="n">sendPluginResult</span><span class="o">:</span><span class="n">result</span> <span class="n">callbackId</span><span class="o">:</span><span class="n">command</span><span class="p">.</span><span class="n">callbackId</span><span class="p">];</span></div><div class='line' id='LC297'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">};</span></div><div class='line' id='LC298'><br/></div><div class='line' id='LC299'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ALAssetsLibrary</span><span class="o">*</span> <span class="n">assetsLibrary</span> <span class="o">=</span> <span class="p">[[</span><span class="n">ALAssetsLibrary</span> <span class="n">alloc</span><span class="p">]</span> <span class="n">init</span><span class="p">];</span></div><div class='line' id='LC300'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">assetsLibrary</span> <span class="n">assetForURL</span><span class="o">:</span><span class="p">[</span><span class="n">NSURL</span> <span class="n">URLWithString</span><span class="o">:</span><span class="n">target</span><span class="p">]</span> <span class="n">resultBlock</span><span class="o">:</span><span class="n">resultBlock</span> <span class="n">failureBlock</span><span class="o">:</span><span class="n">failureBlock</span><span class="p">];</span></div><div class='line' id='LC301'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span><span class="p">;</span></div><div class='line' id='LC302'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="p">{</span></div><div class='line' id='LC303'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Extract the path part out of a file: URL.</span></div><div class='line' id='LC304'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">filePath</span> <span class="o">=</span> <span class="p">[</span><span class="n">target</span> <span class="n">hasPrefix</span><span class="o">:</span><span class="s">@&quot;/&quot;</span><span class="p">]</span> <span class="o">?</span> <span class="p">[</span><span class="n">target</span> <span class="n">copy</span><span class="p">]</span> <span class="o">:</span> <span class="p">[[</span><span class="n">NSURL</span> <span class="n">URLWithString</span><span class="o">:</span><span class="n">target</span><span class="p">]</span> <span class="n">path</span><span class="p">];</span></div><div class='line' id='LC305'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">filePath</span> <span class="o">==</span> <span class="nb">nil</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC306'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// We couldn&#39;t find the asset.  Send the appropriate error.</span></div><div class='line' id='LC307'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVPluginResult</span><span class="o">*</span> <span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">CDVPluginResult</span> <span class="n">resultWithStatus</span><span class="o">:</span><span class="n">CDVCommandStatus_IO_EXCEPTION</span> <span class="n">messageAsInt</span><span class="o">:</span><span class="n">NOT_FOUND_ERR</span><span class="p">];</span></div><div class='line' id='LC308'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">commandDelegate</span> <span class="n">sendPluginResult</span><span class="o">:</span><span class="n">result</span> <span class="n">callbackId</span><span class="o">:</span><span class="n">command</span><span class="p">.</span><span class="n">callbackId</span><span class="p">];</span></div><div class='line' id='LC309'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span><span class="p">;</span></div><div class='line' id='LC310'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC311'><br/></div><div class='line' id='LC312'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Memory map the file so that it can be read efficiently even if it is large.</span></div><div class='line' id='LC313'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSData</span><span class="o">*</span> <span class="n">fileData</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSData</span> <span class="n">dataWithContentsOfFile</span><span class="o">:</span><span class="n">filePath</span> <span class="n">options</span><span class="o">:</span><span class="n">NSDataReadingMappedIfSafe</span> <span class="n">error</span><span class="o">:&amp;</span><span class="n">err</span><span class="p">];</span></div><div class='line' id='LC314'><br/></div><div class='line' id='LC315'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">err</span> <span class="o">!=</span> <span class="nb">nil</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC316'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSLog</span><span class="p">(</span><span class="s">@&quot;Error opening file %@: %@&quot;</span><span class="p">,</span> <span class="n">target</span><span class="p">,</span> <span class="n">err</span><span class="p">);</span></div><div class='line' id='LC317'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC318'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span> <span class="n">uploadData</span><span class="o">:</span><span class="n">fileData</span> <span class="n">command</span><span class="o">:</span><span class="n">command</span><span class="p">];</span></div><div class='line' id='LC319'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC320'><span class="p">}</span></div><div class='line' id='LC321'><br/></div><div class='line' id='LC322'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">upload:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span></div><div class='line' id='LC323'><span class="p">{</span></div><div class='line' id='LC324'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// fileData and req are split into helper functions to ease the unit testing of delegateForUpload.</span></div><div class='line' id='LC325'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// First, get the file data.  This method will call `uploadData:command`.</span></div><div class='line' id='LC326'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span> <span class="n">fileDataForUploadCommand</span><span class="o">:</span><span class="n">command</span><span class="p">];</span></div><div class='line' id='LC327'><span class="p">}</span></div><div class='line' id='LC328'><br/></div><div class='line' id='LC329'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">uploadData:</span><span class="p">(</span><span class="n">NSData</span><span class="o">*</span><span class="p">)</span><span class="nv">fileData</span> <span class="nf">command:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span></div><div class='line' id='LC330'><span class="p">{</span></div><div class='line' id='LC331'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSURLRequest</span><span class="o">*</span> <span class="n">req</span> <span class="o">=</span> <span class="p">[</span><span class="n">self</span> <span class="n">requestForUploadCommand</span><span class="o">:</span><span class="n">command</span> <span class="n">fileData</span><span class="o">:</span><span class="n">fileData</span><span class="p">];</span></div><div class='line' id='LC332'><br/></div><div class='line' id='LC333'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">req</span> <span class="o">==</span> <span class="nb">nil</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC334'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span><span class="p">;</span></div><div class='line' id='LC335'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC336'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVFileTransferDelegate</span><span class="o">*</span> <span class="n">delegate</span> <span class="o">=</span> <span class="p">[</span><span class="n">self</span> <span class="n">delegateForUploadCommand</span><span class="o">:</span><span class="n">command</span><span class="p">];</span></div><div class='line' id='LC337'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">NSURLConnection</span> <span class="n">connectionWithRequest</span><span class="o">:</span><span class="n">req</span> <span class="n">delegate</span><span class="o">:</span><span class="n">delegate</span><span class="p">];</span></div><div class='line' id='LC338'><br/></div><div class='line' id='LC339'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">activeTransfers</span> <span class="o">==</span> <span class="nb">nil</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC340'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">activeTransfers</span> <span class="o">=</span> <span class="p">[[</span><span class="n">NSMutableDictionary</span> <span class="n">alloc</span><span class="p">]</span> <span class="n">init</span><span class="p">];</span></div><div class='line' id='LC341'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC342'><br/></div><div class='line' id='LC343'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">activeTransfers</span> <span class="n">setObject</span><span class="o">:</span><span class="n">delegate</span> <span class="n">forKey</span><span class="o">:</span><span class="n">delegate</span><span class="p">.</span><span class="n">objectId</span><span class="p">];</span></div><div class='line' id='LC344'><span class="p">}</span></div><div class='line' id='LC345'><br/></div><div class='line' id='LC346'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">abort:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span></div><div class='line' id='LC347'><span class="p">{</span></div><div class='line' id='LC348'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">objectId</span> <span class="o">=</span> <span class="p">[</span><span class="n">command</span><span class="p">.</span><span class="n">arguments</span> <span class="n">objectAtIndex</span><span class="o">:</span><span class="mi">0</span><span class="p">];</span></div><div class='line' id='LC349'><br/></div><div class='line' id='LC350'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVFileTransferDelegate</span><span class="o">*</span> <span class="n">delegate</span> <span class="o">=</span> <span class="p">[</span><span class="n">activeTransfers</span> <span class="n">objectForKey</span><span class="o">:</span><span class="n">objectId</span><span class="p">];</span></div><div class='line' id='LC351'><br/></div><div class='line' id='LC352'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">delegate</span> <span class="o">!=</span> <span class="nb">nil</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC353'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">delegate</span> <span class="n">cancelTransfer</span><span class="o">:</span><span class="n">delegate</span><span class="p">.</span><span class="n">connection</span><span class="p">];</span></div><div class='line' id='LC354'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVPluginResult</span><span class="o">*</span> <span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">CDVPluginResult</span> <span class="n">resultWithStatus</span><span class="o">:</span><span class="n">CDVCommandStatus_ERROR</span> <span class="n">messageAsDictionary</span><span class="o">:</span><span class="p">[</span><span class="n">self</span> <span class="n">createFileTransferError</span><span class="o">:</span><span class="n">CONNECTION_ABORTED</span> <span class="n">AndSource</span><span class="o">:</span><span class="n">delegate</span><span class="p">.</span><span class="n">source</span> <span class="n">AndTarget</span><span class="o">:</span><span class="n">delegate</span><span class="p">.</span><span class="n">target</span><span class="p">]];</span></div><div class='line' id='LC355'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">commandDelegate</span> <span class="n">sendPluginResult</span><span class="o">:</span><span class="n">result</span> <span class="n">callbackId</span><span class="o">:</span><span class="n">delegate</span><span class="p">.</span><span class="n">callbackId</span><span class="p">];</span></div><div class='line' id='LC356'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC357'><span class="p">}</span></div><div class='line' id='LC358'><br/></div><div class='line' id='LC359'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">download:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span></div><div class='line' id='LC360'><span class="p">{</span></div><div class='line' id='LC361'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">DLog</span><span class="p">(</span><span class="s">@&quot;File Transfer downloading file...&quot;</span><span class="p">);</span></div><div class='line' id='LC362'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">sourceUrl</span> <span class="o">=</span> <span class="p">[</span><span class="n">command</span><span class="p">.</span><span class="n">arguments</span> <span class="n">objectAtIndex</span><span class="o">:</span><span class="mi">0</span><span class="p">];</span></div><div class='line' id='LC363'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">filePath</span> <span class="o">=</span> <span class="p">[</span><span class="n">command</span><span class="p">.</span><span class="n">arguments</span> <span class="n">objectAtIndex</span><span class="o">:</span><span class="mi">1</span><span class="p">];</span></div><div class='line' id='LC364'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kt">BOOL</span> <span class="n">trustAllHosts</span> <span class="o">=</span> <span class="p">[[</span><span class="n">command</span><span class="p">.</span><span class="n">arguments</span> <span class="n">objectAtIndex</span><span class="o">:</span><span class="mi">2</span> <span class="n">withDefault</span><span class="o">:</span><span class="p">[</span><span class="n">NSNumber</span> <span class="n">numberWithBool</span><span class="o">:</span><span class="nb">YES</span><span class="p">]]</span> <span class="n">boolValue</span><span class="p">];</span> <span class="c1">// allow self-signed certs</span></div><div class='line' id='LC365'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">objectId</span> <span class="o">=</span> <span class="p">[</span><span class="n">command</span><span class="p">.</span><span class="n">arguments</span> <span class="n">objectAtIndex</span><span class="o">:</span><span class="mi">3</span><span class="p">];</span></div><div class='line' id='LC366'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSDictionary</span><span class="o">*</span> <span class="n">headers</span> <span class="o">=</span> <span class="p">[</span><span class="n">command</span><span class="p">.</span><span class="n">arguments</span> <span class="n">objectAtIndex</span><span class="o">:</span><span class="mi">4</span> <span class="n">withDefault</span><span class="o">:</span><span class="nb">nil</span><span class="p">];</span></div><div class='line' id='LC367'><br/></div><div class='line' id='LC368'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// return unsupported result for assets-library URLs</span></div><div class='line' id='LC369'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">([</span><span class="n">filePath</span> <span class="n">hasPrefix</span><span class="o">:</span><span class="n">kCDVAssetsLibraryPrefix</span><span class="p">])</span> <span class="p">{</span></div><div class='line' id='LC370'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVPluginResult</span><span class="o">*</span> <span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">CDVPluginResult</span> <span class="n">resultWithStatus</span><span class="o">:</span><span class="n">CDVCommandStatus_MALFORMED_URL_EXCEPTION</span> <span class="n">messageAsString</span><span class="o">:</span><span class="s">@&quot;download not supported for assets-library URLs.&quot;</span><span class="p">];</span></div><div class='line' id='LC371'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">commandDelegate</span> <span class="n">sendPluginResult</span><span class="o">:</span><span class="n">result</span> <span class="n">callbackId</span><span class="o">:</span><span class="n">command</span><span class="p">.</span><span class="n">callbackId</span><span class="p">];</span></div><div class='line' id='LC372'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span><span class="p">;</span></div><div class='line' id='LC373'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC374'><br/></div><div class='line' id='LC375'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVPluginResult</span><span class="o">*</span> <span class="n">result</span> <span class="o">=</span> <span class="nb">nil</span><span class="p">;</span></div><div class='line' id='LC376'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVFileTransferError</span> <span class="n">errorCode</span> <span class="o">=</span> <span class="mi">0</span><span class="p">;</span></div><div class='line' id='LC377'><br/></div><div class='line' id='LC378'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSURL</span><span class="o">*</span> <span class="n">file</span><span class="p">;</span></div><div class='line' id='LC379'><br/></div><div class='line' id='LC380'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">([</span><span class="n">filePath</span> <span class="n">hasPrefix</span><span class="o">:</span><span class="s">@&quot;/&quot;</span><span class="p">])</span> <span class="p">{</span></div><div class='line' id='LC381'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">file</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSURL</span> <span class="n">fileURLWithPath</span><span class="o">:</span><span class="n">filePath</span><span class="p">];</span></div><div class='line' id='LC382'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="p">{</span></div><div class='line' id='LC383'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">file</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSURL</span> <span class="n">URLWithString</span><span class="o">:</span><span class="n">filePath</span><span class="p">];</span></div><div class='line' id='LC384'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC385'><br/></div><div class='line' id='LC386'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSURL</span><span class="o">*</span> <span class="n">url</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSURL</span> <span class="n">URLWithString</span><span class="o">:</span><span class="n">sourceUrl</span><span class="p">];</span></div><div class='line' id='LC387'><br/></div><div class='line' id='LC388'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="o">!</span><span class="n">url</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC389'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">errorCode</span> <span class="o">=</span> <span class="n">INVALID_URL_ERR</span><span class="p">;</span></div><div class='line' id='LC390'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSLog</span><span class="p">(</span><span class="s">@&quot;File Transfer Error: Invalid server URL %@&quot;</span><span class="p">,</span> <span class="n">sourceUrl</span><span class="p">);</span></div><div class='line' id='LC391'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="k">if</span> <span class="p">(</span><span class="o">!</span><span class="p">[</span><span class="n">file</span> <span class="n">isFileURL</span><span class="p">])</span> <span class="p">{</span></div><div class='line' id='LC392'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">errorCode</span> <span class="o">=</span> <span class="n">FILE_NOT_FOUND_ERR</span><span class="p">;</span></div><div class='line' id='LC393'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSLog</span><span class="p">(</span><span class="s">@&quot;File Transfer Error: Invalid file path or URL %@&quot;</span><span class="p">,</span> <span class="n">filePath</span><span class="p">);</span></div><div class='line' id='LC394'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC395'><br/></div><div class='line' id='LC396'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">errorCode</span> <span class="o">&gt;</span> <span class="mi">0</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC397'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">CDVPluginResult</span> <span class="n">resultWithStatus</span><span class="o">:</span><span class="n">CDVCommandStatus_ERROR</span> <span class="n">messageAsDictionary</span><span class="o">:</span><span class="p">[</span><span class="n">self</span> <span class="n">createFileTransferError</span><span class="o">:</span><span class="n">errorCode</span> <span class="n">AndSource</span><span class="o">:</span><span class="n">sourceUrl</span> <span class="n">AndTarget</span><span class="o">:</span><span class="n">filePath</span><span class="p">]];</span></div><div class='line' id='LC398'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">commandDelegate</span> <span class="n">sendPluginResult</span><span class="o">:</span><span class="n">result</span> <span class="n">callbackId</span><span class="o">:</span><span class="n">command</span><span class="p">.</span><span class="n">callbackId</span><span class="p">];</span></div><div class='line' id='LC399'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span><span class="p">;</span></div><div class='line' id='LC400'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC401'><br/></div><div class='line' id='LC402'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSMutableURLRequest</span><span class="o">*</span> <span class="n">req</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSMutableURLRequest</span> <span class="n">requestWithURL</span><span class="o">:</span><span class="n">url</span><span class="p">];</span></div><div class='line' id='LC403'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span> <span class="n">applyRequestHeaders</span><span class="o">:</span><span class="n">headers</span> <span class="n">toRequest</span><span class="o">:</span><span class="n">req</span><span class="p">];</span></div><div class='line' id='LC404'><br/></div><div class='line' id='LC405'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVFileTransferDelegate</span><span class="o">*</span> <span class="n">delegate</span> <span class="o">=</span> <span class="p">[[</span><span class="n">CDVFileTransferDelegate</span> <span class="n">alloc</span><span class="p">]</span> <span class="n">init</span><span class="p">];</span></div><div class='line' id='LC406'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">delegate</span><span class="p">.</span><span class="n">command</span> <span class="o">=</span> <span class="n">self</span><span class="p">;</span></div><div class='line' id='LC407'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">delegate</span><span class="p">.</span><span class="n">direction</span> <span class="o">=</span> <span class="n">CDV_TRANSFER_DOWNLOAD</span><span class="p">;</span></div><div class='line' id='LC408'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">delegate</span><span class="p">.</span><span class="n">callbackId</span> <span class="o">=</span> <span class="n">command</span><span class="p">.</span><span class="n">callbackId</span><span class="p">;</span></div><div class='line' id='LC409'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">delegate</span><span class="p">.</span><span class="n">objectId</span> <span class="o">=</span> <span class="n">objectId</span><span class="p">;</span></div><div class='line' id='LC410'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">delegate</span><span class="p">.</span><span class="n">source</span> <span class="o">=</span> <span class="n">sourceUrl</span><span class="p">;</span></div><div class='line' id='LC411'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">delegate</span><span class="p">.</span><span class="n">target</span> <span class="o">=</span> <span class="n">filePath</span><span class="p">;</span></div><div class='line' id='LC412'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">delegate</span><span class="p">.</span><span class="n">trustAllHosts</span> <span class="o">=</span> <span class="n">trustAllHosts</span><span class="p">;</span></div><div class='line' id='LC413'><br/></div><div class='line' id='LC414'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">delegate</span><span class="p">.</span><span class="n">connection</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSURLConnection</span> <span class="n">connectionWithRequest</span><span class="o">:</span><span class="n">req</span> <span class="n">delegate</span><span class="o">:</span><span class="n">delegate</span><span class="p">];</span></div><div class='line' id='LC415'><br/></div><div class='line' id='LC416'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">activeTransfers</span> <span class="o">==</span> <span class="nb">nil</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC417'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">activeTransfers</span> <span class="o">=</span> <span class="p">[[</span><span class="n">NSMutableDictionary</span> <span class="n">alloc</span><span class="p">]</span> <span class="n">init</span><span class="p">];</span></div><div class='line' id='LC418'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC419'><br/></div><div class='line' id='LC420'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">activeTransfers</span> <span class="n">setObject</span><span class="o">:</span><span class="n">delegate</span> <span class="n">forKey</span><span class="o">:</span><span class="n">delegate</span><span class="p">.</span><span class="n">objectId</span><span class="p">];</span></div><div class='line' id='LC421'><span class="p">}</span></div><div class='line' id='LC422'><br/></div><div class='line' id='LC423'><span class="k">-</span> <span class="p">(</span><span class="n">NSMutableDictionary</span><span class="o">*</span><span class="p">)</span><span class="nf">createFileTransferError:</span><span class="p">(</span><span class="kt">int</span><span class="p">)</span><span class="nv">code</span> <span class="nf">AndSource:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">source</span> <span class="nf">AndTarget:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">target</span></div><div class='line' id='LC424'><span class="p">{</span></div><div class='line' id='LC425'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSMutableDictionary</span><span class="o">*</span> <span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSMutableDictionary</span> <span class="n">dictionaryWithCapacity</span><span class="o">:</span><span class="mi">3</span><span class="p">];</span></div><div class='line' id='LC426'><br/></div><div class='line' id='LC427'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">result</span> <span class="n">setObject</span><span class="o">:</span><span class="p">[</span><span class="n">NSNumber</span> <span class="n">numberWithInt</span><span class="o">:</span><span class="n">code</span><span class="p">]</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;code&quot;</span><span class="p">];</span></div><div class='line' id='LC428'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">source</span> <span class="o">!=</span> <span class="nb">nil</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC429'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">result</span> <span class="n">setObject</span><span class="o">:</span><span class="n">source</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;source&quot;</span><span class="p">];</span></div><div class='line' id='LC430'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC431'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">target</span> <span class="o">!=</span> <span class="nb">nil</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC432'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">result</span> <span class="n">setObject</span><span class="o">:</span><span class="n">target</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;target&quot;</span><span class="p">];</span></div><div class='line' id='LC433'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC434'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSLog</span><span class="p">(</span><span class="s">@&quot;FileTransferError %@&quot;</span><span class="p">,</span> <span class="n">result</span><span class="p">);</span></div><div class='line' id='LC435'><br/></div><div class='line' id='LC436'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">result</span><span class="p">;</span></div><div class='line' id='LC437'><span class="p">}</span></div><div class='line' id='LC438'><br/></div><div class='line' id='LC439'><span class="k">-</span> <span class="p">(</span><span class="n">NSMutableDictionary</span><span class="o">*</span><span class="p">)</span><span class="nf">createFileTransferError:</span><span class="p">(</span><span class="kt">int</span><span class="p">)</span><span class="nv">code</span></div><div class='line' id='LC440'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nl">AndSource:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">source</span></div><div class='line' id='LC441'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nl">AndTarget:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">target</span></div><div class='line' id='LC442'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nl">AndHttpStatus:</span><span class="p">(</span><span class="kt">int</span><span class="p">)</span><span class="nv">httpStatus</span></div><div class='line' id='LC443'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nl">AndBody:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">body</span></div><div class='line' id='LC444'><span class="p">{</span></div><div class='line' id='LC445'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSMutableDictionary</span><span class="o">*</span> <span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSMutableDictionary</span> <span class="n">dictionaryWithCapacity</span><span class="o">:</span><span class="mi">5</span><span class="p">];</span></div><div class='line' id='LC446'><br/></div><div class='line' id='LC447'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">result</span> <span class="n">setObject</span><span class="o">:</span><span class="p">[</span><span class="n">NSNumber</span> <span class="n">numberWithInt</span><span class="o">:</span><span class="n">code</span><span class="p">]</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;code&quot;</span><span class="p">];</span></div><div class='line' id='LC448'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">source</span> <span class="o">!=</span> <span class="nb">nil</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC449'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">result</span> <span class="n">setObject</span><span class="o">:</span><span class="n">source</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;source&quot;</span><span class="p">];</span></div><div class='line' id='LC450'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC451'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">target</span> <span class="o">!=</span> <span class="nb">nil</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC452'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">result</span> <span class="n">setObject</span><span class="o">:</span><span class="n">target</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;target&quot;</span><span class="p">];</span></div><div class='line' id='LC453'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC454'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">result</span> <span class="n">setObject</span><span class="o">:</span><span class="p">[</span><span class="n">NSNumber</span> <span class="n">numberWithInt</span><span class="o">:</span><span class="n">httpStatus</span><span class="p">]</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;http_status&quot;</span><span class="p">];</span></div><div class='line' id='LC455'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">body</span> <span class="o">!=</span> <span class="nb">nil</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC456'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">result</span> <span class="n">setObject</span><span class="o">:</span><span class="n">body</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;body&quot;</span><span class="p">];</span></div><div class='line' id='LC457'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC458'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSLog</span><span class="p">(</span><span class="s">@&quot;FileTransferError %@&quot;</span><span class="p">,</span> <span class="n">result</span><span class="p">);</span></div><div class='line' id='LC459'><br/></div><div class='line' id='LC460'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">result</span><span class="p">;</span></div><div class='line' id='LC461'><span class="p">}</span></div><div class='line' id='LC462'><br/></div><div class='line' id='LC463'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">onReset</span></div><div class='line' id='LC464'><span class="p">{</span></div><div class='line' id='LC465'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="p">(</span><span class="n">CDVFileTransferDelegate</span><span class="o">*</span> <span class="n">delegate</span> <span class="k">in</span> <span class="p">[</span><span class="n">activeTransfers</span> <span class="n">allValues</span><span class="p">])</span> <span class="p">{</span></div><div class='line' id='LC466'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">delegate</span><span class="p">.</span><span class="n">connection</span> <span class="n">cancel</span><span class="p">];</span></div><div class='line' id='LC467'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC468'><br/></div><div class='line' id='LC469'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">activeTransfers</span> <span class="n">removeAllObjects</span><span class="p">];</span></div><div class='line' id='LC470'><span class="p">}</span></div><div class='line' id='LC471'><br/></div><div class='line' id='LC472'><span class="k">@end</span></div><div class='line' id='LC473'><br/></div><div class='line' id='LC474'><span class="k">@interface</span> <span class="nc">CDVFileTransferEntityLengthRequest</span> : <span class="nc">NSObject</span> <span class="p">{</span></div><div class='line' id='LC475'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSURLConnection</span><span class="o">*</span> <span class="n">_connection</span><span class="p">;</span></div><div class='line' id='LC476'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVFileTransferDelegate</span><span class="o">*</span> <span class="n">__weak</span> <span class="n">_originalDelegate</span><span class="p">;</span></div><div class='line' id='LC477'><span class="p">}</span></div><div class='line' id='LC478'><br/></div><div class='line' id='LC479'><span class="o">-</span> <span class="p">(</span><span class="n">CDVFileTransferEntityLengthRequest</span><span class="o">*</span><span class="p">)</span><span class="n">initWithOriginalRequest</span><span class="o">:</span><span class="p">(</span><span class="n">NSURLRequest</span><span class="o">*</span><span class="p">)</span><span class="n">originalRequest</span> <span class="n">andDelegate</span><span class="o">:</span><span class="p">(</span><span class="n">CDVFileTransferDelegate</span><span class="o">*</span><span class="p">)</span><span class="n">originalDelegate</span><span class="p">;</span></div><div class='line' id='LC480'><br/></div><div class='line' id='LC481'><span class="k">@end</span><span class="p">;</span></div><div class='line' id='LC482'><br/></div><div class='line' id='LC483'><span class="k">@implementation</span> <span class="nc">CDVFileTransferEntityLengthRequest</span><span class="p">;</span></div><div class='line' id='LC484'><br/></div><div class='line' id='LC485'><span class="k">-</span> <span class="p">(</span><span class="n">CDVFileTransferEntityLengthRequest</span><span class="o">*</span><span class="p">)</span><span class="nf">initWithOriginalRequest:</span><span class="p">(</span><span class="n">NSURLRequest</span><span class="o">*</span><span class="p">)</span><span class="nv">originalRequest</span> <span class="nf">andDelegate:</span><span class="p">(</span><span class="n">CDVFileTransferDelegate</span><span class="o">*</span><span class="p">)</span><span class="nv">originalDelegate</span></div><div class='line' id='LC486'><span class="p">{</span></div><div class='line' id='LC487'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">self</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC488'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">DLog</span><span class="p">(</span><span class="s">@&quot;Requesting entity length for GZIPped content...&quot;</span><span class="p">);</span></div><div class='line' id='LC489'><br/></div><div class='line' id='LC490'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSMutableURLRequest</span><span class="o">*</span> <span class="n">req</span> <span class="o">=</span> <span class="p">[</span><span class="n">originalRequest</span> <span class="n">mutableCopy</span><span class="p">];</span></div><div class='line' id='LC491'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">req</span> <span class="n">setHTTPMethod</span><span class="o">:</span><span class="s">@&quot;HEAD&quot;</span><span class="p">];</span></div><div class='line' id='LC492'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">req</span> <span class="n">setValue</span><span class="o">:</span><span class="s">@&quot;identity&quot;</span> <span class="n">forHTTPHeaderField</span><span class="o">:</span><span class="s">@&quot;Accept-Encoding&quot;</span><span class="p">];</span></div><div class='line' id='LC493'><br/></div><div class='line' id='LC494'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">_originalDelegate</span> <span class="o">=</span> <span class="n">originalDelegate</span><span class="p">;</span></div><div class='line' id='LC495'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">_connection</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSURLConnection</span> <span class="n">connectionWithRequest</span><span class="o">:</span><span class="n">req</span> <span class="n">delegate</span><span class="o">:</span><span class="n">self</span><span class="p">];</span></div><div class='line' id='LC496'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC497'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">self</span><span class="p">;</span></div><div class='line' id='LC498'><span class="p">}</span></div><div class='line' id='LC499'><br/></div><div class='line' id='LC500'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">connection:</span><span class="p">(</span><span class="n">NSURLConnection</span><span class="o">*</span><span class="p">)</span><span class="nv">connection</span> <span class="nf">didReceiveResponse:</span><span class="p">(</span><span class="n">NSURLResponse</span><span class="o">*</span><span class="p">)</span><span class="nv">response</span></div><div class='line' id='LC501'><span class="p">{</span></div><div class='line' id='LC502'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">DLog</span><span class="p">(</span><span class="s">@&quot;HEAD request returned; content-length is %lld&quot;</span><span class="p">,</span> <span class="p">[</span><span class="n">response</span> <span class="n">expectedContentLength</span><span class="p">]);</span></div><div class='line' id='LC503'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">_originalDelegate</span> <span class="n">updateBytesExpected</span><span class="o">:</span><span class="p">[</span><span class="n">response</span> <span class="n">expectedContentLength</span><span class="p">]];</span></div><div class='line' id='LC504'><span class="p">}</span></div><div class='line' id='LC505'><br/></div><div class='line' id='LC506'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">connection:</span><span class="p">(</span><span class="n">NSURLConnection</span><span class="o">*</span><span class="p">)</span><span class="nv">connection</span> <span class="nf">didReceiveData:</span><span class="p">(</span><span class="n">NSData</span><span class="o">*</span><span class="p">)</span><span class="nv">data</span></div><div class='line' id='LC507'><span class="p">{}</span></div><div class='line' id='LC508'><br/></div><div class='line' id='LC509'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">connectionDidFinishLoading:</span><span class="p">(</span><span class="n">NSURLConnection</span><span class="o">*</span><span class="p">)</span><span class="nv">connection</span></div><div class='line' id='LC510'><span class="p">{}</span></div><div class='line' id='LC511'><br/></div><div class='line' id='LC512'><span class="k">@end</span></div><div class='line' id='LC513'><br/></div><div class='line' id='LC514'><span class="k">@implementation</span> <span class="nc">CDVFileTransferDelegate</span></div><div class='line' id='LC515'><br/></div><div class='line' id='LC516'><span class="k">@synthesize</span> <span class="n">callbackId</span><span class="p">,</span> <span class="n">connection</span> <span class="o">=</span> <span class="n">_connection</span><span class="p">,</span> <span class="n">source</span><span class="p">,</span> <span class="n">target</span><span class="p">,</span> <span class="n">responseData</span><span class="p">,</span> <span class="n">command</span><span class="p">,</span> <span class="n">bytesTransfered</span><span class="p">,</span> <span class="n">bytesExpected</span><span class="p">,</span> <span class="n">direction</span><span class="p">,</span> <span class="n">responseCode</span><span class="p">,</span> <span class="n">objectId</span><span class="p">,</span> <span class="n">targetFileHandle</span><span class="p">;</span></div><div class='line' id='LC517'><br/></div><div class='line' id='LC518'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">connectionDidFinishLoading:</span><span class="p">(</span><span class="n">NSURLConnection</span><span class="o">*</span><span class="p">)</span><span class="nv">connection</span></div><div class='line' id='LC519'><span class="p">{</span></div><div class='line' id='LC520'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">uploadResponse</span> <span class="o">=</span> <span class="nb">nil</span><span class="p">;</span></div><div class='line' id='LC521'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">downloadResponse</span> <span class="o">=</span> <span class="nb">nil</span><span class="p">;</span></div><div class='line' id='LC522'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSMutableDictionary</span><span class="o">*</span> <span class="n">uploadResult</span><span class="p">;</span></div><div class='line' id='LC523'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVPluginResult</span><span class="o">*</span> <span class="n">result</span> <span class="o">=</span> <span class="nb">nil</span><span class="p">;</span></div><div class='line' id='LC524'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kt">BOOL</span> <span class="n">bDirRequest</span> <span class="o">=</span> <span class="nb">NO</span><span class="p">;</span></div><div class='line' id='LC525'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVFile</span><span class="o">*</span> <span class="n">file</span><span class="p">;</span></div><div class='line' id='LC526'><br/></div><div class='line' id='LC527'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSLog</span><span class="p">(</span><span class="s">@&quot;File Transfer Finished with response code %d&quot;</span><span class="p">,</span> <span class="n">self</span><span class="p">.</span><span class="n">responseCode</span><span class="p">);</span></div><div class='line' id='LC528'><br/></div><div class='line' id='LC529'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">self</span><span class="p">.</span><span class="n">direction</span> <span class="o">==</span> <span class="n">CDV_TRANSFER_UPLOAD</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC530'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">uploadResponse</span> <span class="o">=</span> <span class="p">[[</span><span class="n">NSString</span> <span class="n">alloc</span><span class="p">]</span> <span class="n">initWithData</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">responseData</span> <span class="n">encoding</span><span class="o">:</span><span class="n">NSUTF8StringEncoding</span><span class="p">];</span></div><div class='line' id='LC531'><br/></div><div class='line' id='LC532'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">((</span><span class="n">self</span><span class="p">.</span><span class="n">responseCode</span> <span class="o">&gt;=</span> <span class="mi">200</span><span class="p">)</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="n">self</span><span class="p">.</span><span class="n">responseCode</span> <span class="o">&lt;</span> <span class="mi">300</span><span class="p">))</span> <span class="p">{</span></div><div class='line' id='LC533'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// create dictionary to return FileUploadResult object</span></div><div class='line' id='LC534'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">uploadResult</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSMutableDictionary</span> <span class="n">dictionaryWithCapacity</span><span class="o">:</span><span class="mi">3</span><span class="p">];</span></div><div class='line' id='LC535'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">uploadResponse</span> <span class="o">!=</span> <span class="nb">nil</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC536'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">uploadResult</span> <span class="n">setObject</span><span class="o">:</span><span class="n">uploadResponse</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;response&quot;</span><span class="p">];</span></div><div class='line' id='LC537'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC538'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">uploadResult</span> <span class="n">setObject</span><span class="o">:</span><span class="p">[</span><span class="n">NSNumber</span> <span class="n">numberWithLongLong</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">bytesTransfered</span><span class="p">]</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;bytesSent&quot;</span><span class="p">];</span></div><div class='line' id='LC539'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">uploadResult</span> <span class="n">setObject</span><span class="o">:</span><span class="p">[</span><span class="n">NSNumber</span> <span class="n">numberWithInt</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">responseCode</span><span class="p">]</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;responseCode&quot;</span><span class="p">];</span></div><div class='line' id='LC540'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">CDVPluginResult</span> <span class="n">resultWithStatus</span><span class="o">:</span><span class="n">CDVCommandStatus_OK</span> <span class="n">messageAsDictionary</span><span class="o">:</span><span class="n">uploadResult</span><span class="p">];</span></div><div class='line' id='LC541'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="p">{</span></div><div class='line' id='LC542'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">CDVPluginResult</span> <span class="n">resultWithStatus</span><span class="o">:</span><span class="n">CDVCommandStatus_ERROR</span> <span class="n">messageAsDictionary</span><span class="o">:</span><span class="p">[</span><span class="n">command</span> <span class="n">createFileTransferError</span><span class="o">:</span><span class="n">CONNECTION_ERR</span> <span class="n">AndSource</span><span class="o">:</span><span class="n">source</span> <span class="n">AndTarget</span><span class="o">:</span><span class="n">target</span> <span class="n">AndHttpStatus</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">responseCode</span> <span class="n">AndBody</span><span class="o">:</span><span class="n">uploadResponse</span><span class="p">]];</span></div><div class='line' id='LC543'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC544'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC545'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">self</span><span class="p">.</span><span class="n">direction</span> <span class="o">==</span> <span class="n">CDV_TRANSFER_DOWNLOAD</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC546'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">self</span><span class="p">.</span><span class="n">targetFileHandle</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC547'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">targetFileHandle</span> <span class="n">closeFile</span><span class="p">];</span></div><div class='line' id='LC548'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">targetFileHandle</span> <span class="o">=</span> <span class="nb">nil</span><span class="p">;</span></div><div class='line' id='LC549'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">DLog</span><span class="p">(</span><span class="s">@&quot;File Transfer Download success&quot;</span><span class="p">);</span></div><div class='line' id='LC550'><br/></div><div class='line' id='LC551'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">file</span> <span class="o">=</span> <span class="p">[[</span><span class="n">CDVFile</span> <span class="n">alloc</span><span class="p">]</span> <span class="n">init</span><span class="p">];</span></div><div class='line' id='LC552'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">CDVPluginResult</span> <span class="n">resultWithStatus</span><span class="o">:</span><span class="n">CDVCommandStatus_OK</span> <span class="n">messageAsDictionary</span><span class="o">:</span><span class="p">[</span><span class="n">file</span> <span class="n">getDirectoryEntry</span><span class="o">:</span><span class="n">target</span> <span class="n">isDirectory</span><span class="o">:</span><span class="n">bDirRequest</span><span class="p">]];</span></div><div class='line' id='LC553'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="p">{</span></div><div class='line' id='LC554'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">downloadResponse</span> <span class="o">=</span> <span class="p">[[</span><span class="n">NSString</span> <span class="n">alloc</span><span class="p">]</span> <span class="n">initWithData</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">responseData</span> <span class="n">encoding</span><span class="o">:</span><span class="n">NSUTF8StringEncoding</span><span class="p">];</span></div><div class='line' id='LC555'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">CDVPluginResult</span> <span class="n">resultWithStatus</span><span class="o">:</span><span class="n">CDVCommandStatus_ERROR</span> <span class="n">messageAsDictionary</span><span class="o">:</span><span class="p">[</span><span class="n">command</span> <span class="n">createFileTransferError</span><span class="o">:</span><span class="n">CONNECTION_ERR</span> <span class="n">AndSource</span><span class="o">:</span><span class="n">source</span> <span class="n">AndTarget</span><span class="o">:</span><span class="n">target</span> <span class="n">AndHttpStatus</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">responseCode</span> <span class="n">AndBody</span><span class="o">:</span><span class="n">downloadResponse</span><span class="p">]];</span></div><div class='line' id='LC556'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC557'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC558'><br/></div><div class='line' id='LC559'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">command</span><span class="p">.</span><span class="n">commandDelegate</span> <span class="n">sendPluginResult</span><span class="o">:</span><span class="n">result</span> <span class="n">callbackId</span><span class="o">:</span><span class="n">callbackId</span><span class="p">];</span></div><div class='line' id='LC560'><br/></div><div class='line' id='LC561'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// remove connection for activeTransfers</span></div><div class='line' id='LC562'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">command</span><span class="p">.</span><span class="n">activeTransfers</span> <span class="n">removeObjectForKey</span><span class="o">:</span><span class="n">objectId</span><span class="p">];</span></div><div class='line' id='LC563'><br/></div><div class='line' id='LC564'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// remove background id task in case our upload was done in the background</span></div><div class='line' id='LC565'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[[</span><span class="n">UIApplication</span> <span class="n">sharedApplication</span><span class="p">]</span> <span class="n">endBackgroundTask</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">command</span><span class="p">.</span><span class="n">backgroundTaskID</span><span class="p">];</span></div><div class='line' id='LC566'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">command</span><span class="p">.</span><span class="n">backgroundTaskID</span> <span class="o">=</span> <span class="n">UIBackgroundTaskInvalid</span><span class="p">;</span></div><div class='line' id='LC567'><span class="p">}</span></div><div class='line' id='LC568'><br/></div><div class='line' id='LC569'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">removeTargetFile</span></div><div class='line' id='LC570'><span class="p">{</span></div><div class='line' id='LC571'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSFileManager</span><span class="o">*</span> <span class="n">fileMgr</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSFileManager</span> <span class="n">defaultManager</span><span class="p">];</span></div><div class='line' id='LC572'><br/></div><div class='line' id='LC573'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">fileMgr</span> <span class="n">removeItemAtPath</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">target</span> <span class="n">error</span><span class="o">:</span><span class="nb">nil</span><span class="p">];</span></div><div class='line' id='LC574'><span class="p">}</span></div><div class='line' id='LC575'><br/></div><div class='line' id='LC576'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">cancelTransfer:</span><span class="p">(</span><span class="n">NSURLConnection</span><span class="o">*</span><span class="p">)</span><span class="nv">connection</span></div><div class='line' id='LC577'><span class="p">{</span></div><div class='line' id='LC578'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">connection</span> <span class="n">cancel</span><span class="p">];</span></div><div class='line' id='LC579'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">command</span><span class="p">.</span><span class="n">activeTransfers</span> <span class="n">removeObjectForKey</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">objectId</span><span class="p">];</span></div><div class='line' id='LC580'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span> <span class="n">removeTargetFile</span><span class="p">];</span></div><div class='line' id='LC581'><span class="p">}</span></div><div class='line' id='LC582'><br/></div><div class='line' id='LC583'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">cancelTransferWithError:</span><span class="p">(</span><span class="n">NSURLConnection</span><span class="o">*</span><span class="p">)</span><span class="nv">connection</span> <span class="nf">errorMessage:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">errorMessage</span></div><div class='line' id='LC584'><span class="p">{</span></div><div class='line' id='LC585'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVPluginResult</span><span class="o">*</span> <span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">CDVPluginResult</span> <span class="n">resultWithStatus</span><span class="o">:</span><span class="n">CDVCommandStatus_IO_EXCEPTION</span> <span class="n">messageAsDictionary</span><span class="o">:</span><span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">command</span> <span class="n">createFileTransferError</span><span class="o">:</span><span class="n">FILE_NOT_FOUND_ERR</span> <span class="n">AndSource</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">source</span> <span class="n">AndTarget</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">target</span> <span class="n">AndHttpStatus</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">responseCode</span> <span class="n">AndBody</span><span class="o">:</span><span class="n">errorMessage</span><span class="p">]];</span></div><div class='line' id='LC586'><br/></div><div class='line' id='LC587'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSLog</span><span class="p">(</span><span class="s">@&quot;File Transfer Error: %@&quot;</span><span class="p">,</span> <span class="n">errorMessage</span><span class="p">);</span></div><div class='line' id='LC588'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span> <span class="n">cancelTransfer</span><span class="o">:</span><span class="n">connection</span><span class="p">];</span></div><div class='line' id='LC589'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">command</span><span class="p">.</span><span class="n">commandDelegate</span> <span class="n">sendPluginResult</span><span class="o">:</span><span class="n">result</span> <span class="n">callbackId</span><span class="o">:</span><span class="n">callbackId</span><span class="p">];</span></div><div class='line' id='LC590'><span class="p">}</span></div><div class='line' id='LC591'><br/></div><div class='line' id='LC592'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">connection:</span><span class="p">(</span><span class="n">NSURLConnection</span><span class="o">*</span><span class="p">)</span><span class="nv">connection</span> <span class="nf">didReceiveResponse:</span><span class="p">(</span><span class="n">NSURLResponse</span><span class="o">*</span><span class="p">)</span><span class="nv">response</span></div><div class='line' id='LC593'><span class="p">{</span></div><div class='line' id='LC594'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSError</span><span class="o">*</span> <span class="n">__autoreleasing</span> <span class="n">error</span> <span class="o">=</span> <span class="nb">nil</span><span class="p">;</span></div><div class='line' id='LC595'><br/></div><div class='line' id='LC596'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">mimeType</span> <span class="o">=</span> <span class="p">[</span><span class="n">response</span> <span class="n">MIMEType</span><span class="p">];</span></div><div class='line' id='LC597'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">targetFileHandle</span> <span class="o">=</span> <span class="nb">nil</span><span class="p">;</span></div><div class='line' id='LC598'><br/></div><div class='line' id='LC599'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// required for iOS 4.3, for some reason; response is</span></div><div class='line' id='LC600'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// a plain NSURLResponse, not the HTTP subclass</span></div><div class='line' id='LC601'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">([</span><span class="n">response</span> <span class="n">isKindOfClass</span><span class="o">:</span><span class="p">[</span><span class="n">NSHTTPURLResponse</span> <span class="n">class</span><span class="p">]])</span> <span class="p">{</span></div><div class='line' id='LC602'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSHTTPURLResponse</span><span class="o">*</span> <span class="n">httpResponse</span> <span class="o">=</span> <span class="p">(</span><span class="n">NSHTTPURLResponse</span><span class="o">*</span><span class="p">)</span><span class="n">response</span><span class="p">;</span></div><div class='line' id='LC603'><br/></div><div class='line' id='LC604'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">responseCode</span> <span class="o">=</span> <span class="p">[</span><span class="n">httpResponse</span> <span class="n">statusCode</span><span class="p">];</span></div><div class='line' id='LC605'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">bytesExpected</span> <span class="o">=</span> <span class="p">[</span><span class="n">response</span> <span class="n">expectedContentLength</span><span class="p">];</span></div><div class='line' id='LC606'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">((</span><span class="n">self</span><span class="p">.</span><span class="n">direction</span> <span class="o">==</span> <span class="n">CDV_TRANSFER_DOWNLOAD</span><span class="p">)</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="n">self</span><span class="p">.</span><span class="n">responseCode</span> <span class="o">==</span> <span class="mi">200</span><span class="p">)</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="n">self</span><span class="p">.</span><span class="n">bytesExpected</span> <span class="o">==</span> <span class="n">NSURLResponseUnknownLength</span><span class="p">))</span> <span class="p">{</span></div><div class='line' id='LC607'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Kick off HEAD request to server to get real length</span></div><div class='line' id='LC608'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// bytesExpected will be updated when that response is returned</span></div><div class='line' id='LC609'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">entityLengthRequest</span> <span class="o">=</span> <span class="p">[[</span><span class="n">CDVFileTransferEntityLengthRequest</span> <span class="n">alloc</span><span class="p">]</span> <span class="n">initWithOriginalRequest</span><span class="o">:</span><span class="n">connection</span><span class="p">.</span><span class="n">currentRequest</span> <span class="n">andDelegate</span><span class="o">:</span><span class="n">self</span><span class="p">];</span></div><div class='line' id='LC610'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC611'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="k">if</span> <span class="p">([</span><span class="n">response</span><span class="p">.</span><span class="n">URL</span> <span class="n">isFileURL</span><span class="p">])</span> <span class="p">{</span></div><div class='line' id='LC612'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSDictionary</span><span class="o">*</span> <span class="n">attr</span> <span class="o">=</span> <span class="p">[[</span><span class="n">NSFileManager</span> <span class="n">defaultManager</span><span class="p">]</span> <span class="n">attributesOfItemAtPath</span><span class="o">:</span><span class="p">[</span><span class="n">response</span><span class="p">.</span><span class="n">URL</span> <span class="n">path</span><span class="p">]</span> <span class="n">error</span><span class="o">:</span><span class="nb">nil</span><span class="p">];</span></div><div class='line' id='LC613'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">responseCode</span> <span class="o">=</span> <span class="mi">200</span><span class="p">;</span></div><div class='line' id='LC614'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">bytesExpected</span> <span class="o">=</span> <span class="p">[</span><span class="n">attr</span><span class="p">[</span><span class="n">NSFileSize</span><span class="p">]</span> <span class="n">longLongValue</span><span class="p">];</span></div><div class='line' id='LC615'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="p">{</span></div><div class='line' id='LC616'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">responseCode</span> <span class="o">=</span> <span class="mi">200</span><span class="p">;</span></div><div class='line' id='LC617'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">bytesExpected</span> <span class="o">=</span> <span class="n">NSURLResponseUnknownLength</span><span class="p">;</span></div><div class='line' id='LC618'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC619'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">((</span><span class="n">self</span><span class="p">.</span><span class="n">direction</span> <span class="o">==</span> <span class="n">CDV_TRANSFER_DOWNLOAD</span><span class="p">)</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="n">self</span><span class="p">.</span><span class="n">responseCode</span> <span class="o">&gt;=</span> <span class="mi">200</span><span class="p">)</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="n">self</span><span class="p">.</span><span class="n">responseCode</span> <span class="o">&lt;</span> <span class="mi">300</span><span class="p">))</span> <span class="p">{</span></div><div class='line' id='LC620'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Download response is okay; begin streaming output to file</span></div><div class='line' id='LC621'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">parentPath</span> <span class="o">=</span> <span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">target</span> <span class="n">stringByDeletingLastPathComponent</span><span class="p">];</span></div><div class='line' id='LC622'><br/></div><div class='line' id='LC623'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// create parent directories if needed</span></div><div class='line' id='LC624'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">([[</span><span class="n">NSFileManager</span> <span class="n">defaultManager</span><span class="p">]</span> <span class="n">createDirectoryAtPath</span><span class="o">:</span><span class="n">parentPath</span> <span class="n">withIntermediateDirectories</span><span class="o">:</span><span class="nb">YES</span> <span class="n">attributes</span><span class="o">:</span><span class="nb">nil</span> <span class="n">error</span><span class="o">:&amp;</span><span class="n">error</span><span class="p">]</span> <span class="o">==</span> <span class="nb">NO</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC625'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">error</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC626'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span> <span class="n">cancelTransferWithError</span><span class="o">:</span><span class="n">connection</span> <span class="n">errorMessage</span><span class="o">:</span><span class="p">[</span><span class="n">NSString</span> <span class="n">stringWithFormat</span><span class="o">:</span><span class="s">@&quot;Could not create path to save downloaded file: %@&quot;</span><span class="p">,</span> <span class="p">[</span><span class="n">error</span> <span class="n">localizedDescription</span><span class="p">]]];</span></div><div class='line' id='LC627'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="p">{</span></div><div class='line' id='LC628'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span> <span class="n">cancelTransferWithError</span><span class="o">:</span><span class="n">connection</span> <span class="n">errorMessage</span><span class="o">:</span><span class="s">@&quot;Could not create path to save downloaded file&quot;</span><span class="p">];</span></div><div class='line' id='LC629'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC630'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span><span class="p">;</span></div><div class='line' id='LC631'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC632'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// create target file</span></div><div class='line' id='LC633'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">([[</span><span class="n">NSFileManager</span> <span class="n">defaultManager</span><span class="p">]</span> <span class="n">createFileAtPath</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">target</span> <span class="n">contents</span><span class="o">:</span><span class="nb">nil</span> <span class="n">attributes</span><span class="o">:</span><span class="nb">nil</span><span class="p">]</span> <span class="o">==</span> <span class="nb">NO</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC634'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span> <span class="n">cancelTransferWithError</span><span class="o">:</span><span class="n">connection</span> <span class="n">errorMessage</span><span class="o">:</span><span class="s">@&quot;Could not create target file&quot;</span><span class="p">];</span></div><div class='line' id='LC635'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span><span class="p">;</span></div><div class='line' id='LC636'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC637'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// open target file for writing</span></div><div class='line' id='LC638'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">targetFileHandle</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSFileHandle</span> <span class="n">fileHandleForWritingAtPath</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">target</span><span class="p">];</span></div><div class='line' id='LC639'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">self</span><span class="p">.</span><span class="n">targetFileHandle</span> <span class="o">==</span> <span class="nb">nil</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC640'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span> <span class="n">cancelTransferWithError</span><span class="o">:</span><span class="n">connection</span> <span class="n">errorMessage</span><span class="o">:</span><span class="s">@&quot;Could not open target file for writing&quot;</span><span class="p">];</span></div><div class='line' id='LC641'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC642'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">DLog</span><span class="p">(</span><span class="s">@&quot;Streaming to file %@&quot;</span><span class="p">,</span> <span class="n">target</span><span class="p">);</span></div><div class='line' id='LC643'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC644'><span class="p">}</span></div><div class='line' id='LC645'><br/></div><div class='line' id='LC646'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">connection:</span><span class="p">(</span><span class="n">NSURLConnection</span><span class="o">*</span><span class="p">)</span><span class="nv">connection</span> <span class="nf">didFailWithError:</span><span class="p">(</span><span class="n">NSError</span><span class="o">*</span><span class="p">)</span><span class="nv">error</span></div><div class='line' id='LC647'><span class="p">{</span></div><div class='line' id='LC648'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">body</span> <span class="o">=</span> <span class="p">[[</span><span class="n">NSString</span> <span class="n">alloc</span><span class="p">]</span> <span class="n">initWithData</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">responseData</span> <span class="n">encoding</span><span class="o">:</span><span class="n">NSUTF8StringEncoding</span><span class="p">];</span></div><div class='line' id='LC649'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVPluginResult</span><span class="o">*</span> <span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">CDVPluginResult</span> <span class="n">resultWithStatus</span><span class="o">:</span><span class="n">CDVCommandStatus_ERROR</span> <span class="n">messageAsDictionary</span><span class="o">:</span><span class="p">[</span><span class="n">command</span> <span class="n">createFileTransferError</span><span class="o">:</span><span class="n">CONNECTION_ERR</span> <span class="n">AndSource</span><span class="o">:</span><span class="n">source</span> <span class="n">AndTarget</span><span class="o">:</span><span class="n">target</span> <span class="n">AndHttpStatus</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">responseCode</span> <span class="n">AndBody</span><span class="o">:</span><span class="n">body</span><span class="p">]];</span></div><div class='line' id='LC650'><br/></div><div class='line' id='LC651'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSLog</span><span class="p">(</span><span class="s">@&quot;File Transfer Error: %@&quot;</span><span class="p">,</span> <span class="p">[</span><span class="n">error</span> <span class="n">localizedDescription</span><span class="p">]);</span></div><div class='line' id='LC652'><br/></div><div class='line' id='LC653'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span> <span class="n">cancelTransfer</span><span class="o">:</span><span class="n">connection</span><span class="p">];</span></div><div class='line' id='LC654'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">command</span><span class="p">.</span><span class="n">commandDelegate</span> <span class="n">sendPluginResult</span><span class="o">:</span><span class="n">result</span> <span class="n">callbackId</span><span class="o">:</span><span class="n">callbackId</span><span class="p">];</span></div><div class='line' id='LC655'><span class="p">}</span></div><div class='line' id='LC656'><br/></div><div class='line' id='LC657'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">connection:</span><span class="p">(</span><span class="n">NSURLConnection</span><span class="o">*</span><span class="p">)</span><span class="nv">connection</span> <span class="nf">didReceiveData:</span><span class="p">(</span><span class="n">NSData</span><span class="o">*</span><span class="p">)</span><span class="nv">data</span></div><div class='line' id='LC658'><span class="p">{</span></div><div class='line' id='LC659'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">bytesTransfered</span> <span class="o">+=</span> <span class="n">data</span><span class="p">.</span><span class="n">length</span><span class="p">;</span></div><div class='line' id='LC660'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">self</span><span class="p">.</span><span class="n">targetFileHandle</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC661'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">targetFileHandle</span> <span class="n">writeData</span><span class="o">:</span><span class="n">data</span><span class="p">];</span></div><div class='line' id='LC662'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="p">{</span></div><div class='line' id='LC663'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">responseData</span> <span class="n">appendData</span><span class="o">:</span><span class="n">data</span><span class="p">];</span></div><div class='line' id='LC664'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC665'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span> <span class="n">updateProgress</span><span class="p">];</span></div><div class='line' id='LC666'><span class="p">}</span></div><div class='line' id='LC667'><br/></div><div class='line' id='LC668'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">updateBytesExpected:</span><span class="p">(</span><span class="kt">long</span> <span class="kt">long</span><span class="p">)</span><span class="nv">newBytesExpected</span></div><div class='line' id='LC669'><span class="p">{</span></div><div class='line' id='LC670'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">DLog</span><span class="p">(</span><span class="s">@&quot;Updating bytesExpected to %lld&quot;</span><span class="p">,</span> <span class="n">newBytesExpected</span><span class="p">);</span></div><div class='line' id='LC671'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">bytesExpected</span> <span class="o">=</span> <span class="n">newBytesExpected</span><span class="p">;</span></div><div class='line' id='LC672'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span> <span class="n">updateProgress</span><span class="p">];</span></div><div class='line' id='LC673'><span class="p">}</span></div><div class='line' id='LC674'><br/></div><div class='line' id='LC675'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">updateProgress</span></div><div class='line' id='LC676'><span class="p">{</span></div><div class='line' id='LC677'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">self</span><span class="p">.</span><span class="n">direction</span> <span class="o">==</span> <span class="n">CDV_TRANSFER_DOWNLOAD</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC678'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kt">BOOL</span> <span class="n">lengthComputable</span> <span class="o">=</span> <span class="p">(</span><span class="n">self</span><span class="p">.</span><span class="n">bytesExpected</span> <span class="o">!=</span> <span class="n">NSURLResponseUnknownLength</span><span class="p">);</span></div><div class='line' id='LC679'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// If the response is GZipped, and we have an outstanding HEAD request to get</span></div><div class='line' id='LC680'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// the length, then hold off on sending progress events.</span></div><div class='line' id='LC681'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="o">!</span><span class="n">lengthComputable</span> <span class="o">&amp;&amp;</span> <span class="p">(</span><span class="n">self</span><span class="p">.</span><span class="n">entityLengthRequest</span> <span class="o">!=</span> <span class="nb">nil</span><span class="p">))</span> <span class="p">{</span></div><div class='line' id='LC682'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span><span class="p">;</span></div><div class='line' id='LC683'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC684'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSMutableDictionary</span><span class="o">*</span> <span class="n">downloadProgress</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSMutableDictionary</span> <span class="n">dictionaryWithCapacity</span><span class="o">:</span><span class="mi">3</span><span class="p">];</span></div><div class='line' id='LC685'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">downloadProgress</span> <span class="n">setObject</span><span class="o">:</span><span class="p">[</span><span class="n">NSNumber</span> <span class="n">numberWithBool</span><span class="o">:</span><span class="n">lengthComputable</span><span class="p">]</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;lengthComputable&quot;</span><span class="p">];</span></div><div class='line' id='LC686'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">downloadProgress</span> <span class="n">setObject</span><span class="o">:</span><span class="p">[</span><span class="n">NSNumber</span> <span class="n">numberWithLongLong</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">bytesTransfered</span><span class="p">]</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;loaded&quot;</span><span class="p">];</span></div><div class='line' id='LC687'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">downloadProgress</span> <span class="n">setObject</span><span class="o">:</span><span class="p">[</span><span class="n">NSNumber</span> <span class="n">numberWithLongLong</span><span class="o">:</span><span class="n">self</span><span class="p">.</span><span class="n">bytesExpected</span><span class="p">]</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;total&quot;</span><span class="p">];</span></div><div class='line' id='LC688'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVPluginResult</span><span class="o">*</span> <span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">CDVPluginResult</span> <span class="n">resultWithStatus</span><span class="o">:</span><span class="n">CDVCommandStatus_OK</span> <span class="n">messageAsDictionary</span><span class="o">:</span><span class="n">downloadProgress</span><span class="p">];</span></div><div class='line' id='LC689'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">result</span> <span class="n">setKeepCallbackAsBool</span><span class="o">:</span><span class="nb">true</span><span class="p">];</span></div><div class='line' id='LC690'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">command</span><span class="p">.</span><span class="n">commandDelegate</span> <span class="n">sendPluginResult</span><span class="o">:</span><span class="n">result</span> <span class="n">callbackId</span><span class="o">:</span><span class="n">callbackId</span><span class="p">];</span></div><div class='line' id='LC691'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC692'><span class="p">}</span></div><div class='line' id='LC693'><br/></div><div class='line' id='LC694'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">connection:</span><span class="p">(</span><span class="n">NSURLConnection</span><span class="o">*</span><span class="p">)</span><span class="nv">connection</span> <span class="nf">didSendBodyData:</span><span class="p">(</span><span class="n">NSInteger</span><span class="p">)</span><span class="nv">bytesWritten</span> <span class="nf">totalBytesWritten:</span><span class="p">(</span><span class="n">NSInteger</span><span class="p">)</span><span class="nv">totalBytesWritten</span> <span class="nf">totalBytesExpectedToWrite:</span><span class="p">(</span><span class="n">NSInteger</span><span class="p">)</span><span class="nv">totalBytesExpectedToWrite</span></div><div class='line' id='LC695'><span class="p">{</span></div><div class='line' id='LC696'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">self</span><span class="p">.</span><span class="n">direction</span> <span class="o">==</span> <span class="n">CDV_TRANSFER_UPLOAD</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC697'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSMutableDictionary</span><span class="o">*</span> <span class="n">uploadProgress</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSMutableDictionary</span> <span class="n">dictionaryWithCapacity</span><span class="o">:</span><span class="mi">3</span><span class="p">];</span></div><div class='line' id='LC698'><br/></div><div class='line' id='LC699'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">uploadProgress</span> <span class="n">setObject</span><span class="o">:</span><span class="p">[</span><span class="n">NSNumber</span> <span class="n">numberWithBool</span><span class="o">:</span><span class="nb">true</span><span class="p">]</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;lengthComputable&quot;</span><span class="p">];</span></div><div class='line' id='LC700'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">uploadProgress</span> <span class="n">setObject</span><span class="o">:</span><span class="p">[</span><span class="n">NSNumber</span> <span class="n">numberWithLongLong</span><span class="o">:</span><span class="n">totalBytesWritten</span><span class="p">]</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;loaded&quot;</span><span class="p">];</span></div><div class='line' id='LC701'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">uploadProgress</span> <span class="n">setObject</span><span class="o">:</span><span class="p">[</span><span class="n">NSNumber</span> <span class="n">numberWithLongLong</span><span class="o">:</span><span class="n">totalBytesExpectedToWrite</span><span class="p">]</span> <span class="n">forKey</span><span class="o">:</span><span class="s">@&quot;total&quot;</span><span class="p">];</span></div><div class='line' id='LC702'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">CDVPluginResult</span><span class="o">*</span> <span class="n">result</span> <span class="o">=</span> <span class="p">[</span><span class="n">CDVPluginResult</span> <span class="n">resultWithStatus</span><span class="o">:</span><span class="n">CDVCommandStatus_OK</span> <span class="n">messageAsDictionary</span><span class="o">:</span><span class="n">uploadProgress</span><span class="p">];</span></div><div class='line' id='LC703'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">result</span> <span class="n">setKeepCallbackAsBool</span><span class="o">:</span><span class="nb">true</span><span class="p">];</span></div><div class='line' id='LC704'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">command</span><span class="p">.</span><span class="n">commandDelegate</span> <span class="n">sendPluginResult</span><span class="o">:</span><span class="n">result</span> <span class="n">callbackId</span><span class="o">:</span><span class="n">callbackId</span><span class="p">];</span></div><div class='line' id='LC705'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC706'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">bytesTransfered</span> <span class="o">=</span> <span class="n">totalBytesWritten</span><span class="p">;</span></div><div class='line' id='LC707'><span class="p">}</span></div><div class='line' id='LC708'><br/></div><div class='line' id='LC709'><span class="c1">// for self signed certificates</span></div><div class='line' id='LC710'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">connection:</span><span class="p">(</span><span class="n">NSURLConnection</span><span class="o">*</span><span class="p">)</span><span class="nv">connection</span> <span class="nf">willSendRequestForAuthenticationChallenge:</span><span class="p">(</span><span class="n">NSURLAuthenticationChallenge</span><span class="o">*</span><span class="p">)</span><span class="nv">challenge</span></div><div class='line' id='LC711'><span class="p">{</span></div><div class='line' id='LC712'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">([</span><span class="n">challenge</span><span class="p">.</span><span class="n">protectionSpace</span><span class="p">.</span><span class="n">authenticationMethod</span> <span class="n">isEqualToString</span><span class="o">:</span><span class="n">NSURLAuthenticationMethodServerTrust</span><span class="p">])</span> <span class="p">{</span></div><div class='line' id='LC713'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">self</span><span class="p">.</span><span class="n">trustAllHosts</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC714'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSURLCredential</span><span class="o">*</span> <span class="n">credential</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSURLCredential</span> <span class="n">credentialForTrust</span><span class="o">:</span><span class="n">challenge</span><span class="p">.</span><span class="n">protectionSpace</span><span class="p">.</span><span class="n">serverTrust</span><span class="p">];</span></div><div class='line' id='LC715'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">challenge</span><span class="p">.</span><span class="n">sender</span> <span class="n">useCredential</span><span class="o">:</span><span class="n">credential</span> <span class="n">forAuthenticationChallenge</span><span class="o">:</span><span class="n">challenge</span><span class="p">];</span></div><div class='line' id='LC716'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC717'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">challenge</span><span class="p">.</span><span class="n">sender</span> <span class="n">continueWithoutCredentialForAuthenticationChallenge</span><span class="o">:</span><span class="n">challenge</span><span class="p">];</span></div><div class='line' id='LC718'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="k">else</span> <span class="p">{</span></div><div class='line' id='LC719'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">challenge</span><span class="p">.</span><span class="n">sender</span> <span class="n">performDefaultHandlingForAuthenticationChallenge</span><span class="o">:</span><span class="n">challenge</span><span class="p">];</span></div><div class='line' id='LC720'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC721'><span class="p">}</span></div><div class='line' id='LC722'><br/></div><div class='line' id='LC723'><span class="k">-</span> <span class="p">(</span><span class="kt">id</span><span class="p">)</span><span class="nf">init</span></div><div class='line' id='LC724'><span class="p">{</span></div><div class='line' id='LC725'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">((</span><span class="n">self</span> <span class="o">=</span> <span class="p">[</span><span class="n">super</span> <span class="n">init</span><span class="p">]))</span> <span class="p">{</span></div><div class='line' id='LC726'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">responseData</span> <span class="o">=</span> <span class="p">[</span><span class="n">NSMutableData</span> <span class="n">data</span><span class="p">];</span></div><div class='line' id='LC727'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">targetFileHandle</span> <span class="o">=</span> <span class="nb">nil</span><span class="p">;</span></div><div class='line' id='LC728'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC729'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">self</span><span class="p">;</span></div><div class='line' id='LC730'><span class="p">}</span></div><div class='line' id='LC731'><br/></div><div class='line' id='LC732'><span class="k">@end</span><span class="p">;</span></div></pre></div>
            </td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2013 <span title="0.23361s from github-fe132-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/apache/cordova-plugin-file-transfer/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

  </body>
</html>

