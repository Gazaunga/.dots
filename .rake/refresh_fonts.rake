# refresh fonts

namespace :fonts do
desc "Updates font cache"
task :refresh do
FileUtils.mkdir_p("#{Dir.home}/.fonts") unless File.directory?("#{Dir.home}/.fonts")
system("mkfontdir ~/.fonts")
system("mkfontscale ~/.fonts")
system("xset +fp ~/.fonts")
system("xset fp rehash")
system("fc-cache -fv") # does this need sudo?
puts "Fonts are ready!"
end
