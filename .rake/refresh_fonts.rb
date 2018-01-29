#!/usr/bin/env ruby

def refresh_fonts
#check if "$HOME/.fonts" directory exists; then
unless File.directory?("#{Dir.home}/.fonts") == true
FileUtils.mkdir("#{Dir.home}/.fonts")
system("mkfontdir ~/.fonts")
system("mkfontscale ~/.fonts")
system("xset +fp ~/.fonts")
system("xset fp rehash")
system("fc-cache -fv")
puts "Fonts are ready!"
end
