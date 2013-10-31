


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>cordova-plugin-file/src/ios/CDVFile.h at 0e2ce7be57607b87d852ae55d6508d2651b5c8ed · apache/cordova-plugin-file</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="github-fe120-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 1.9.3p194-tcs-github-tcmalloc (0e75de19f8) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="C8426FB3:5C1D:3167CE6:52727E5A" name="octolytics-dimension-request_id" /><meta content="5497424" name="octolytics-actor-id" /><meta content="SergioSerrano" name="octolytics-actor-login" /><meta content="515ab936a1feb7b4eccc4045a61dbd63e7bf2edea553878ad871d7df3b3d32d4" name="octolytics-actor-hash" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="P6JblmrLG82+4NwRO06ouXMoeD72MAktYQTAjPS5osA=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-c1c8f4d1225e3ae12e7eed7a87e6125ec4f4c50a.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-6ca1cf184423f082ccd30296372104601de151e8.css" media="all" rel="stylesheet" type="text/css" />
    

    

      <script src="https://github.global.ssl.fastly.net/assets/frameworks-fedd15115b82c3d5d2afa34f475ba2caa6283613.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-32c6bb6e4158fa642e474640b8074f3fb50b3795.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="4715596bc36f40085dee20cc3a6c2497">

        <link data-pjax-transient rel='permalink' href='/apache/cordova-plugin-file/blob/0e2ce7be57607b87d852ae55d6508d2651b5c8ed/src/ios/CDVFile.h'>
  <meta property="og:title" content="cordova-plugin-file"/>
  <meta property="og:type" content="githubog:gitrepository"/>
  <meta property="og:url" content="https://github.com/apache/cordova-plugin-file"/>
  <meta property="og:image" content="https://github.global.ssl.fastly.net/images/gravatars/gravatar-user-420.png"/>
  <meta property="og:site_name" content="GitHub"/>
  <meta property="og:description" content="cordova-plugin-file - Mirror of Apache Cordova Plugin file"/>

  <meta name="description" content="cordova-plugin-file - Mirror of Apache Cordova Plugin file" />

  <meta content="47359" name="octolytics-dimension-user_id" /><meta content="apache" name="octolytics-dimension-user_login" /><meta content="10860599" name="octolytics-dimension-repository_id" /><meta content="apache/cordova-plugin-file" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="10860599" name="octolytics-dimension-repository_network_root_id" /><meta content="apache/cordova-plugin-file" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/apache/cordova-plugin-file/commits/0e2ce7be57607b87d852ae55d6508d2651b5c8ed.atom" rel="alternate" title="Recent Commits to cordova-plugin-file:0e2ce7be57607b87d852ae55d6508d2651b5c8ed" type="application/atom+xml" />

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
      data-repo="apache/cordova-plugin-file"
      data-branch="0e2ce7be57607b87d852ae55d6508d2651b5c8ed"
      data-sha="4fc1e978a17580c14f611e2185440ebc21028b1d"
  >

    <input type="hidden" name="nwo" value="apache/cordova-plugin-file" />

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
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="P6JblmrLG82+4NwRO06ouXMoeD72MAktYQTAjPS5osA=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="10860599" />

    <div class="select-menu js-menu-container js-select-menu">
      <a class="social-count js-social-count" href="/apache/cordova-plugin-file/watchers">
        2
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
  <a href="/apache/cordova-plugin-file/unstar" class="minibutton with-count js-toggler-target star-button starred upwards" title="Unstar this repo" data-remote="true" data-method="post" rel="nofollow">
    <span class="octicon octicon-star-delete"></span><span class="text">Unstar</span>
  </a>
  <a href="/apache/cordova-plugin-file/star" class="minibutton with-count js-toggler-target star-button unstarred upwards" title="Star this repo" data-remote="true" data-method="post" rel="nofollow">
    <span class="octicon octicon-star"></span><span class="text">Star</span>
  </a>
  <a class="social-count js-social-count" href="/apache/cordova-plugin-file/stargazers">2</a>
</div>

  </li>


        <li>
          <a href="/apache/cordova-plugin-file/fork" class="minibutton with-count js-toggler-target fork-button lighter upwards" title="Fork this repo" rel="facebox nofollow">
            <span class="octicon octicon-git-branch-create"></span><span class="text">Fork</span>
          </a>
          <a href="/apache/cordova-plugin-file/network" class="social-count">16</a>
        </li>


</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-mirror-public"></span>
          <span class="author">
            <a href="/apache" class="url fn" itemprop="url" rel="author"><span itemprop="title">apache</span></a>
          </span>
          <span class="repohead-name-divider">/</span>
          <strong><a href="/apache/cordova-plugin-file" class="js-current-repository js-repo-home-link">cordova-plugin-file</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

            <span class="mirror-flag">
              <span class="text">mirrored from <a href="git://git.apache.org/cordova-plugin-file.git">git://git.apache.org/cordova-plugin-file.git</a></span>
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
        <a href="/apache/cordova-plugin-file" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /apache/cordova-plugin-file">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


      <li class="tooltipped leftwards" title="Pull Requests"><a href="/apache/cordova-plugin-file/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /apache/cordova-plugin-file/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>2</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/apache/cordova-plugin-file/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /apache/cordova-plugin-file/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/apache/cordova-plugin-file/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /apache/cordova-plugin-file/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/apache/cordova-plugin-file/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /apache/cordova-plugin-file/network">
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
           value="https://github.com/apache/cordova-plugin-file.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/apache/cordova-plugin-file.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone">
  <h3><strong>SSH</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="git@github.com:apache/cordova-plugin-file.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="git@github.com:apache/cordova-plugin-file.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/apache/cordova-plugin-file" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/apache/cordova-plugin-file" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
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


  <a href="github-windows://openRepo/https://github.com/apache/cordova-plugin-file" class="minibutton sidebar-button">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>

              <a href="/apache/cordova-plugin-file/archive/0e2ce7be57607b87d852ae55d6508d2651b5c8ed.zip"
                 class="minibutton sidebar-button"
                 title="Download this repository as a zip file"
                 rel="nofollow">
                <span class="octicon octicon-cloud-download"></span>
                Download ZIP
              </a>
            </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:7643158693b3ceeb98a957f975d322e0 -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/apache/cordova-plugin-file/find/0e2ce7be57607b87d852ae55d6508d2651b5c8ed" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref=""
    role="button" aria-label="Switch branches or tags" tabindex="0">
    <span class="octicon octicon-git-branch"></span>
    <i>tree:</i>
    <span class="js-select-button">0e2ce7be57</span>
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
              <a href="/apache/cordova-plugin-file/blob/3.1.0/src/ios/CDVFile.h"
                 data-name="3.1.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="3.1.0">3.1.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file/blob/bb10/src/ios/CDVFile.h"
                 data-name="bb10"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="bb10">bb10</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file/blob/dev/src/ios/CDVFile.h"
                 data-name="dev"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="dev">dev</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file/blob/master/src/ios/CDVFile.h"
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
              <a href="/apache/cordova-plugin-file/tree/r0.2.5/src/ios/CDVFile.h"
                 data-name="r0.2.5"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="r0.2.5">r0.2.5</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file/tree/r0.2.4/src/ios/CDVFile.h"
                 data-name="r0.2.4"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="r0.2.4">r0.2.4</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file/tree/r0.2.3/src/ios/CDVFile.h"
                 data-name="r0.2.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="r0.2.3">r0.2.3</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file/tree/r0.2.1/src/ios/CDVFile.h"
                 data-name="r0.2.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="r0.2.1">r0.2.1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file/tree/3.0.0rc1/src/ios/CDVFile.h"
                 data-name="3.0.0rc1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="3.0.0rc1">3.0.0rc1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/apache/cordova-plugin-file/tree/3.0.0/src/ios/CDVFile.h"
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
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/apache/cordova-plugin-file/tree/0e2ce7be57607b87d852ae55d6508d2651b5c8ed" data-branch="0e2ce7be57607b87d852ae55d6508d2651b5c8ed" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">cordova-plugin-file</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/apache/cordova-plugin-file/tree/0e2ce7be57607b87d852ae55d6508d2651b5c8ed/src" data-branch="0e2ce7be57607b87d852ae55d6508d2651b5c8ed" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">src</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/apache/cordova-plugin-file/tree/0e2ce7be57607b87d852ae55d6508d2651b5c8ed/src/ios" data-branch="0e2ce7be57607b87d852ae55d6508d2651b5c8ed" data-direction="back" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">ios</span></a></span><span class="separator"> / </span><strong class="final-path">CDVFile.h</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="src/ios/CDVFile.h" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>



  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://2.gravatar.com/avatar/d36d914b008583afdf7ea19d1e9a143e?d=https%3A%2F%2Fidenticons.github.com%2F20b36960e6b50d1e0d764b446a64b040.png&amp;r=x&amp;s=140" width="24" />
    <span class="author"><a href="/stevengill" rel="author">stevengill</a></span>
    <time class="js-relative-date" datetime="2013-06-17T17:26:31-07:00" title="2013-06-17 17:26:31">June 17, 2013</time>
    <div class="commit-title">
        <a href="/apache/cordova-plugin-file/commit/66ab05e7a1c44ee9b2b44289b8868de6dbe7ebaa" class="message" data-pjax="true" title="updated ios native files">updated ios native files</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>2</strong> contributors</a></p>
          <a class="avatar tooltipped downwards" title="stevengill" href="/apache/cordova-plugin-file/commits/master/src/ios/CDVFile.h?author=stevengill"><img height="20" src="https://2.gravatar.com/avatar/d36d914b008583afdf7ea19d1e9a143e?d=https%3A%2F%2Fidenticons.github.com%2F20b36960e6b50d1e0d764b446a64b040.png&amp;r=x&amp;s=140" width="20" /></a>
    <a class="avatar tooltipped downwards" title="hermwong" href="/apache/cordova-plugin-file/commits/master/src/ios/CDVFile.h?author=hermwong"><img height="20" src="https://2.gravatar.com/avatar/f2f3e064e9faa97cca36eed14d3288f9?d=https%3A%2F%2Fidenticons.github.com%2F6fe40750ce6f40902cfa6595c0b89ff8.png&amp;r=x&amp;s=140" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img height="24" src="https://2.gravatar.com/avatar/d36d914b008583afdf7ea19d1e9a143e?d=https%3A%2F%2Fidenticons.github.com%2F20b36960e6b50d1e0d764b446a64b040.png&amp;r=x&amp;s=140" width="24" />
            <a href="/stevengill">stevengill</a>
          </li>
          <li class="facebox-user-list-item">
            <img height="24" src="https://2.gravatar.com/avatar/f2f3e064e9faa97cca36eed14d3288f9?d=https%3A%2F%2Fidenticons.github.com%2F6fe40750ce6f40902cfa6595c0b89ff8.png&amp;r=x&amp;s=140" width="24" />
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
          <span>108 lines (94 sloc)</span>
        <span>4.195 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
              <a class="minibutton disabled js-entice" href=""
                 data-entice="You must be on a branch to make or propose changes to this file">Edit</a>
          <a href="/apache/cordova-plugin-file/raw/0e2ce7be57607b87d852ae55d6508d2651b5c8ed/src/ios/CDVFile.h" class="button minibutton " id="raw-url">Raw</a>
            <a href="/apache/cordova-plugin-file/blame/0e2ce7be57607b87d852ae55d6508d2651b5c8ed/src/ios/CDVFile.h" class="button minibutton ">Blame</a>
          <a href="/apache/cordova-plugin-file/commits/0e2ce7be57607b87d852ae55d6508d2651b5c8ed/src/ios/CDVFile.h" class="button minibutton " rel="nofollow">History</a>
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

            </td>
            <td class="blob-line-code">
                    <div class="highlight"><pre><div class='line' id='LC1'><span class="cm">/*</span></div><div class='line' id='LC2'><span class="cm"> Licensed to the Apache Software Foundation (ASF) under one</span></div><div class='line' id='LC3'><span class="cm"> or more contributor license agreements.  See the NOTICE file</span></div><div class='line' id='LC4'><span class="cm"> distributed with this work for additional information</span></div><div class='line' id='LC5'><span class="cm"> regarding copyright ownership.  The ASF licenses this file</span></div><div class='line' id='LC6'><span class="cm"> to you under the Apache License, Version 2.0 (the</span></div><div class='line' id='LC7'><span class="cm"> &quot;License&quot;); you may not use this file except in compliance</span></div><div class='line' id='LC8'><span class="cm"> with the License.  You may obtain a copy of the License at</span></div><div class='line' id='LC9'><br/></div><div class='line' id='LC10'><span class="cm"> http://www.apache.org/licenses/LICENSE-2.0</span></div><div class='line' id='LC11'><br/></div><div class='line' id='LC12'><span class="cm"> Unless required by applicable law or agreed to in writing,</span></div><div class='line' id='LC13'><span class="cm"> software distributed under the License is distributed on an</span></div><div class='line' id='LC14'><span class="cm"> &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY</span></div><div class='line' id='LC15'><span class="cm"> KIND, either express or implied.  See the License for the</span></div><div class='line' id='LC16'><span class="cm"> specific language governing permissions and limitations</span></div><div class='line' id='LC17'><span class="cm"> under the License.</span></div><div class='line' id='LC18'><span class="cm"> */</span></div><div class='line' id='LC19'><br/></div><div class='line' id='LC20'><span class="cp">#import &lt;Foundation/Foundation.h&gt;</span></div><div class='line' id='LC21'><span class="cp">#import &lt;Cordova/CDVPlugin.h&gt;</span></div><div class='line' id='LC22'><br/></div><div class='line' id='LC23'><span class="k">enum</span> <span class="n">CDVFileError</span> <span class="p">{</span></div><div class='line' id='LC24'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NO_ERROR</span> <span class="o">=</span> <span class="mi">0</span><span class="p">,</span></div><div class='line' id='LC25'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NOT_FOUND_ERR</span> <span class="o">=</span> <span class="mi">1</span><span class="p">,</span></div><div class='line' id='LC26'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">SECURITY_ERR</span> <span class="o">=</span> <span class="mi">2</span><span class="p">,</span></div><div class='line' id='LC27'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ABORT_ERR</span> <span class="o">=</span> <span class="mi">3</span><span class="p">,</span></div><div class='line' id='LC28'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NOT_READABLE_ERR</span> <span class="o">=</span> <span class="mi">4</span><span class="p">,</span></div><div class='line' id='LC29'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ENCODING_ERR</span> <span class="o">=</span> <span class="mi">5</span><span class="p">,</span></div><div class='line' id='LC30'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NO_MODIFICATION_ALLOWED_ERR</span> <span class="o">=</span> <span class="mi">6</span><span class="p">,</span></div><div class='line' id='LC31'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">INVALID_STATE_ERR</span> <span class="o">=</span> <span class="mi">7</span><span class="p">,</span></div><div class='line' id='LC32'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">SYNTAX_ERR</span> <span class="o">=</span> <span class="mi">8</span><span class="p">,</span></div><div class='line' id='LC33'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">INVALID_MODIFICATION_ERR</span> <span class="o">=</span> <span class="mi">9</span><span class="p">,</span></div><div class='line' id='LC34'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">QUOTA_EXCEEDED_ERR</span> <span class="o">=</span> <span class="mi">10</span><span class="p">,</span></div><div class='line' id='LC35'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">TYPE_MISMATCH_ERR</span> <span class="o">=</span> <span class="mi">11</span><span class="p">,</span></div><div class='line' id='LC36'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">PATH_EXISTS_ERR</span> <span class="o">=</span> <span class="mi">12</span></div><div class='line' id='LC37'><span class="p">};</span></div><div class='line' id='LC38'><span class="k">typedef</span> <span class="kt">int</span> <span class="n">CDVFileError</span><span class="p">;</span></div><div class='line' id='LC39'><br/></div><div class='line' id='LC40'><span class="k">enum</span> <span class="n">CDVFileSystemType</span> <span class="p">{</span></div><div class='line' id='LC41'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">TEMPORARY</span> <span class="o">=</span> <span class="mi">0</span><span class="p">,</span></div><div class='line' id='LC42'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">PERSISTENT</span> <span class="o">=</span> <span class="mi">1</span></div><div class='line' id='LC43'><span class="p">};</span></div><div class='line' id='LC44'><span class="k">typedef</span> <span class="kt">int</span> <span class="n">CDVFileSystemType</span><span class="p">;</span></div><div class='line' id='LC45'><br/></div><div class='line' id='LC46'><span class="k">extern</span> <span class="n">NSString</span><span class="o">*</span> <span class="k">const</span> <span class="n">kCDVAssetsLibraryPrefix</span><span class="p">;</span></div><div class='line' id='LC47'><br/></div><div class='line' id='LC48'><span class="k">@interface</span> <span class="nc">CDVFile</span> : <span class="nc">CDVPlugin</span> <span class="p">{</span></div><div class='line' id='LC49'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">appDocsPath</span><span class="p">;</span></div><div class='line' id='LC50'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">appLibraryPath</span><span class="p">;</span></div><div class='line' id='LC51'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">appTempPath</span><span class="p">;</span></div><div class='line' id='LC52'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">persistentPath</span><span class="p">;</span></div><div class='line' id='LC53'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSString</span><span class="o">*</span> <span class="n">temporaryPath</span><span class="p">;</span></div><div class='line' id='LC54'><br/></div><div class='line' id='LC55'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kt">BOOL</span> <span class="n">userHasAllowed</span><span class="p">;</span></div><div class='line' id='LC56'><span class="p">}</span></div><div class='line' id='LC57'><span class="o">-</span> <span class="p">(</span><span class="n">NSNumber</span><span class="o">*</span><span class="p">)</span><span class="n">checkFreeDiskSpace</span><span class="o">:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="n">appPath</span><span class="p">;</span></div><div class='line' id='LC58'><span class="k">-</span> <span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nf">getAppPath:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">pathFragment</span><span class="p">;</span></div><div class='line' id='LC59'><span class="c1">// -(NSString*) getFullPath: (NSString*)pathFragment;</span></div><div class='line' id='LC60'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">requestFileSystem:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC61'><span class="k">-</span> <span class="p">(</span><span class="n">NSDictionary</span><span class="o">*</span><span class="p">)</span><span class="nf">getDirectoryEntry:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">fullPath</span> <span class="nf">isDirectory:</span><span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nv">isDir</span><span class="p">;</span></div><div class='line' id='LC62'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">resolveLocalFileSystemURI:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC63'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">getDirectory:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC64'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">getFile:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC65'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">getParent:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC66'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">getMetadata:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC67'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">removeRecursively:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC68'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">remove:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC69'><span class="k">-</span> <span class="p">(</span><span class="n">CDVPluginResult</span><span class="o">*</span><span class="p">)</span><span class="nf">doRemove:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">fullPath</span><span class="p">;</span></div><div class='line' id='LC70'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">copyTo:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC71'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">moveTo:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC72'><span class="k">-</span> <span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nf">canCopyMoveSrc:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">src</span> <span class="nf">ToDestination:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">dest</span><span class="p">;</span></div><div class='line' id='LC73'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">doCopyMove:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span> <span class="nf">isCopy:</span><span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nv">bCopy</span><span class="p">;</span></div><div class='line' id='LC74'><span class="c1">// - (void) toURI:(CDVInvokedUrlCommand*)command;</span></div><div class='line' id='LC75'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">getFileMetadata:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC76'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">readEntries:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC77'><br/></div><div class='line' id='LC78'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">readAsText:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC79'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">readAsDataURL:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC80'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">readAsArrayBuffer:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC81'><span class="k">-</span> <span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nf">getMimeTypeFromPath:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">fullPath</span><span class="p">;</span></div><div class='line' id='LC82'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">write:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC83'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">testFileExists:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC84'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">testDirectoryExists:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC85'><span class="c1">// - (void) createDirectory:(CDVInvokedUrlCommand*)command;</span></div><div class='line' id='LC86'><span class="c1">// - (void) deleteDirectory:(CDVInvokedUrlCommand*)command;</span></div><div class='line' id='LC87'><span class="c1">// - (void) deleteFile:(CDVInvokedUrlCommand*)command;</span></div><div class='line' id='LC88'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">getFreeDiskSpace:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC89'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">truncate:</span><span class="p">(</span><span class="n">CDVInvokedUrlCommand</span><span class="o">*</span><span class="p">)</span><span class="nv">command</span><span class="p">;</span></div><div class='line' id='LC90'><br/></div><div class='line' id='LC91'><span class="c1">// - (BOOL) fileExists:(NSString*)fileName;</span></div><div class='line' id='LC92'><span class="c1">// - (BOOL) directoryExists:(NSString*)dirName;</span></div><div class='line' id='LC93'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">writeToFile:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">fileName</span> <span class="nf">withData:</span><span class="p">(</span><span class="n">NSData</span><span class="o">*</span><span class="p">)</span><span class="nv">data</span> <span class="nf">append:</span><span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nv">shouldAppend</span> <span class="nf">callback:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">callbackId</span><span class="p">;</span></div><div class='line' id='LC94'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">writeToFile:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">fileName</span> <span class="nf">withString:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">data</span> <span class="nf">encoding:</span><span class="p">(</span><span class="n">NSStringEncoding</span><span class="p">)</span><span class="nv">encoding</span> <span class="nf">append:</span><span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nv">shouldAppend</span> <span class="nf">callback:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">callbackId</span><span class="p">;</span></div><div class='line' id='LC95'><span class="k">-</span> <span class="p">(</span><span class="kt">unsigned</span> <span class="kt">long</span> <span class="kt">long</span><span class="p">)</span><span class="nf">truncateFile:</span><span class="p">(</span><span class="n">NSString</span><span class="o">*</span><span class="p">)</span><span class="nv">filePath</span> <span class="nf">atPosition:</span><span class="p">(</span><span class="kt">unsigned</span> <span class="kt">long</span> <span class="kt">long</span><span class="p">)</span><span class="nv">pos</span><span class="p">;</span></div><div class='line' id='LC96'><br/></div><div class='line' id='LC97'><span class="k">@property</span> <span class="p">(</span><span class="n">nonatomic</span><span class="p">,</span> <span class="n">strong</span><span class="p">)</span> <span class="n">NSString</span><span class="o">*</span> <span class="n">appDocsPath</span><span class="p">;</span></div><div class='line' id='LC98'><span class="k">@property</span> <span class="p">(</span><span class="n">nonatomic</span><span class="p">,</span> <span class="n">strong</span><span class="p">)</span> <span class="n">NSString</span><span class="o">*</span> <span class="n">appLibraryPath</span><span class="p">;</span></div><div class='line' id='LC99'><span class="k">@property</span> <span class="p">(</span><span class="n">nonatomic</span><span class="p">,</span> <span class="n">strong</span><span class="p">)</span> <span class="n">NSString</span><span class="o">*</span> <span class="n">appTempPath</span><span class="p">;</span></div><div class='line' id='LC100'><span class="k">@property</span> <span class="p">(</span><span class="n">nonatomic</span><span class="p">,</span> <span class="n">strong</span><span class="p">)</span> <span class="n">NSString</span><span class="o">*</span> <span class="n">persistentPath</span><span class="p">;</span></div><div class='line' id='LC101'><span class="k">@property</span> <span class="p">(</span><span class="n">nonatomic</span><span class="p">,</span> <span class="n">strong</span><span class="p">)</span> <span class="n">NSString</span><span class="o">*</span> <span class="n">temporaryPath</span><span class="p">;</span></div><div class='line' id='LC102'><span class="k">@property</span> <span class="kt">BOOL</span> <span class="n">userHasAllowed</span><span class="p">;</span></div><div class='line' id='LC103'><br/></div><div class='line' id='LC104'><span class="k">@end</span></div><div class='line' id='LC105'><br/></div><div class='line' id='LC106'><span class="cp">#define kW3FileTemporary @&quot;temporary&quot;</span></div><div class='line' id='LC107'><span class="cp">#define kW3FilePersistent @&quot;persistent&quot;</span></div></pre></div>
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
      <li>&copy; 2013 <span title="0.05552s from github-fe120-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
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
                 data-url="/apache/cordova-plugin-file/suggestions/commit">
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

