people::itgumby {

  include iterm2
  include sublime_text_2
  # include intellij
  # include osx
  include keepassx

  $home     = "/Users/${::boxen_user}"
  $srcdir   = "${home}/src"

  # $dotfiles = "${home}/dotfiles"
  # file { $my:
  #   ensure  => directory
  # }
  # repository { $dotfiles:
  #   source  => 'jbarnette/dotfiles',
  #   require => File[$my]
  # }

  repository { "${srcdir}/dotfiles" :
    source => 'git@bitbucket.org:itgumby/dotfiles.git',
    path => "${home}/dotfiles"
  }

  repository { "${srcdir}/bin" :
    source => 'git@bitbucket.org:itgumby/bin.git',
    path => "${home}/bin"
  }
}
