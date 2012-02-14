module ClamAV

  def clamav(options = {})
    package 'clamav', :ensure => :latest

    cron "clamav",
      :command => "clamscan / -ir --exclude-dir=^/sys --exclude-dir=^/dev --exclude-dir=^/proc --log=/var/log/clamav/clamscan.log",
      :user    => 'root',
      :hour    => 1,
      :minute  => 0,
      :weekday => 0
    
    cron "freshclam",
      :command => "freshclam",
      :user    => 'root',
      :hour    => 0,
      :minute  => 0,
      :weekday => 0
  end



end