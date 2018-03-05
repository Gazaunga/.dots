#!/usr/bin/env ruby

require 'rake'

namespace :home
desc "Link all versioned files"
task :all => [:xresources, :tmux, :asoundrc, :bash_aliases, :bash_functions, :bash_profile, :bashrc, :gemrc, :irbrc, :profile, :pryrc, :wgetrc, :xinitrc, :xserverrc, :xmodmap, :colors, :curlrc, :zshrc, :rtorrent, :xprofile]
puts "Linking All Files"
end

namespace :home
desc "Link versioned Xmodmap"
task :xmodmap do
file ln_s "/home/$USER/.dots/.Xmodmap", "/home/$USER/.Xmodmap", force: => true
end

namespace :home
desc "Link versioned Xresources"
task :xresource do
file ln_s "/home/$USER/.dots/.Xresources", "/home/$USER/.Xresources", force: => true
end

namespace :home
desc "Linkn versioned asoundrc"
task :asoundrc do
file ln_s "/home/$USER/.dots/.asoundrc", "/home/$USER/.asoundrc", force: => true
end

namespace :home
desc "Linkn versioned bash_aliases"
task :bash_aliases do
file ln_s "/home/$USER/.dots/.bash_aliases", "/home/$USER/.bash_aliases, force: => true
end

namespace :home
desc "Linkn versioned bash_functions"
task :bash_functions do
file ln_s "/home/$USER/.dots/.bash_functions", "/home/$USER/.bash_functions, force: => true
end

namespace :home
desc "Linkn versioned bash_profile"
task :bash_profile do
file ln_s "/home/$USER/.dots/.bash_profile", "/home/$USER/.bash_profile, force: => true
end

namespace :home
desc "Linkn versioned bashrc"
task :bashrc do
file ln_s "/home/$USER/.dots/.bashrc", "/home/$USER/.bashrc, force: => true
end

namespace :home
desc "Linkn versioned colors"
task :colors do
file ln_s "/home/$USER/.dots/.colors", "/home/$USER/.colors, force: => true
end

namespace :home
desc "Linkn versioned curlrc"
task :curlrc do
file ln_s "/home/$USER/.dots/.curlrc", "/home/$USER/.curlrc, force: => true
end

namespace :home
desc "Linkn versioned gemrc"
task :gemrc do
file ln_s "/home/$USER/.dots/.gemrc", "/home/$USER/.gemrc, force: => true
end

namespace :home
desc "Linkn versioned interrobangrc"
task :interrobangrc do
file ln_s "/home/$USER/.dots/.interrobangrc", "/home/$USER/.interrobangrc, force: => true
end

namespace :home
desc "Linkn versioned irbrc"
task :irbrc do
file ln_s "/home/$USER/.dots/.irbrc", "/home/$USER/.irbrc, force: => true
end

namespace :home
desc "Linkn versioned profile"
task :profile do
file ln_s "/home/$USER/.dots/.profile", "/home/$USER/.profile, force: => true
end

namespace :
desc "Linkn versioned pryrc"
task :pryrc do
file ln_s "/home/$USER/.dots/.pryrc", "/home/$USER/.pryrc, force: => true
end

namespace :home
desc "Link versioned wgetrc"
task :wgetrc do
file ln_s "/home/$USER/.dots/.wgetrc", "/home/$USER/.wgetrc, force: => true
end

namespace :home
desc "Link versioned xinitrc"
task :xinitrc do
file ln_s "/home/$USER/.dots/.xinitrc", "/home/$USER/.xinitrc, force: => true
end

namespace :home
desc "Link versioned xserverrc"
task :xserverrc do
file ln_s "/home/$USER/.dots/.xserverrc", "/home/$USER/.xserverrc, force: => true
end

namespace :home
desc "Link versioned tmux conf"
task :tmux do
file ln_s "/home/$USER/.dots/.tmux.conf", "/home/$USER/.tmux.conf, force: => true
end

namespace :home
desc "Link versioned rtorrent conf"
task :rtorrent do
file ln_s "/home/$USER/.dots/rottrent.rc", "/home/$USER/rottrent.rc, force: => true
end

namespace :home
desc "Link versioned zshrc"
task :zshrc do
file ln_s "/home/$USER/.dots/.zshrc", "/home/$USER/.zshrc, force: => true
end
