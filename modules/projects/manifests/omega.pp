class projects::omega {

  # browsers
  include chrome
  # alternates: chrome::beta, chrome::dev, chrome:canary, chrome::chromium
  include firefox
  # alternates: firefox::nightly

  include java    # installs Java JRE 7u21.  I want 7u45

}
