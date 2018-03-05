# Confirm
task :confirm do
  confirm_token = rand(36**6).to_s(36)
  STDOUT.puts "Confirm [ACTION]? Enter '#{confirm_token}' to confirm:"
  input = STDIN.gets.chomp
  raise "Aborting [ACTION]. You entered #{input}" unless input == confirm_token
end

# Git 
namespace :git do
  desc "let's you clone a git repo by passing username and repo"
  task :clone, :user, :repo do |t, args| => :confirm do
    user = args[:user]
    repo = args[:repo]
    if system "git clone https://github.com/#{user}/#{repo}.git"
      puts "Repository: #{repo} cloned successfully"
    else
      puts "There was a problem with your request, please try again later."
    end
  end
end
