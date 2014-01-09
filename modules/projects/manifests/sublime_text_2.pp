class projects::sublime_text_2 {

  include sublime_text_2

  file { "${home}/bin":
     ensure => directory,
  }

  # file { "${home}/bin/subl":
  #    ensure => 'link',
  #    target => '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl',
  #    require => [ Package[SublimeText2], File["${home}/bin"] ]
  # }

  ########################################
  #
  # Sublime Text 2 Packages
  #   (initial set ranked by popularity: https://sublime.wbond.net/browse/popular )
  ########################################

  sublime_text_2::package { 'Package Control':
    source => 'wbond/sublime_package_control'
  }

  sublime_text_2::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }

  sublime_text_2::package { 'Sublime Linter':
    source => 'SublimeLinter/SublimeLinter'
  }

  # Open Komodo [JavaScript, Mason, XBL, XUL, RHTML, SCSS, Python, HTML, Ruby, Python3, XML, Sass, XSLT, Django, HTML5, Perl, CSS, Twig, Less, Smarty, Node.js, Tcl, TemplateToolkit, PHP]
  # sublime_text_2::package { 'SublimeCodeIntel':
  #   source => 'SublimeCodeIntel/SublimeCodeIntel'
  # }

  sublime_text_2::package { 'BracketHighlighter':
    source => 'facelessuser/BracketHighlighter'
  }

  # sublime_text_2::package { 'sublime-text-git':
  #   source => 'kemayo/sublime-text-git'
  # }

  sublime_text_2::package { 'Prefixr':
    source => 'wbond/sublime_prefixr'
  }

  # sublime_text_2::package { 'Sass':
  #   source => 'russCloak/SublimePuppet'
  # }

  # sublime_text_2::package { 'Tag':
  #   source => 'SublimeText/Tag'
  # }

  sublime_text_2::package { 'IndentXML':
    source => 'alek-sys/sublimetext_indentxml'
  }

  sublime_text_2::package { 'Sublime-PrettyJson':
    source => 'dzhibas/SublimePrettyJson'
  }

  ## Packages handy for BStreet
  sublime_text_2::package { 'AsciiDoc':
    source => 'SublimeText/AsciiDoc'
  }

  sublime_text_2::package { 'Awk':
    source => 'JohnNilsson/awk-sublime'
  }

  sublime_text_2::package { 'CSScomb':
    source => 'csscomb/csscomb-for-sublime'
  }

  sublime_text_2::package { 'Puppet':
    source => 'russCloak/SublimePuppet'
  }

  sublime_text_2::package { 'Vlt':
    source => 'tomalec/Sublime-Text-2-Vlt-Plugin'
  }

}
