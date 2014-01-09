class projects::sublime_text_2 {

  include sublime_text_2

  file { "${home}/bin":
     ensure => directory,
  }

  file { "${home}/bin/subl":
     ensure => 'link',
     target => '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl',
     require => [ Package[SublimeText2], File["${home}/bin"] ]
  }


  ########################################
  #
  # Sublime Text 2 Packages
  #
  ########################################

  sublime_text_2::package { 'Package Control':
    source => 'wbond/sublime_package_control'
  }

  # sublime_text_2::package { 'Emmet':
  #   source => 'sergeche/emmet-sublime'
  # }

  # sublime_text_2::package { 'Sublime Linter':
  #   source => 'SublimeLinter/SublimeLinter'
  # }

  # sublime_text_2::package { 'SublimeCodeIntel':
  #   source => 'SublimeCodeIntel/SublimeCodeIntel'
  # }

  # sublime_text_2::package { 'sublime-text-git':
  #   source => 'kemayo/sublime-text-git'
  # }

  # sublime_text_2::package { 'SublimePrettyJson':
  #   source => 'dzhibas/SublimePrettyJson'
  # }

}
