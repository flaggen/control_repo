class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC0wv8+VeE69EnU1it6X0WO8juXo/YGAhnkgr/A8s02axBZEGTQ4ajFndGL64UxAgu6sHPC9szJbTLTRJ5MSG8jvdBPsThKHKlvK4HHtqREw0N5TTa/jJVIYj4rO8svHSm4OKDttn6HwIJpsJhy2vFntKpErz8HQmN3EyIZQsPfRQRVq2lRT0fdfBIERP+Z9g3OvhBVG3lK07ZJN4hLO5PXl2ghIt85/q1wdnC1iFB/F0CQPgER6wVZrJ7CgehkjhoT0GT77UrqQ1RxHfEMVXx4ettdFpFDJ7S2AnF5PiovF4OcR+SsUivwW7FjAbgRprQQgg9vBJKhwVFwylqRLGlB',
  }  
}
