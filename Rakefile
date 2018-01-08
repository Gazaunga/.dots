#!/usr/bin/env ruby

# coding: utf-8
require 'rake'

# Load all tasks in the directory '.rake' with the extension '.rake'
# ~/.rake/{clean.rake, blog.rake, system.rake}
Dir.glob(".rake/**.rake").each { |f| import f }

# These files will be ignored to create symlink
IGNORE_FILES = %w(
  .
  ..
  .git
  README.md
  Rakefile
  bin
)

BASE_PATH  = File.dirname(__FILE__)
BACKUP_DIR = "/tmp/dotfiles_#{Time.now.strftime("%Y%m%d%H%M%S")}"

# rake symlink [-v|--verbose] [noop=true|false] [force=true|false]
namespace :dotfiles do
  desc "create dotfiles symlink into user's home directory"
  task :symlink do
    force = ENV['force'] == "true"
    noop  = ENV['noop']  == "true"

    mkdir(BACKUP_DIR)

    # Create a Symbolic Link
    Dir.new(BASE_PATH).entries.reject{ |file| IGNORE_FILES.include?(file) }.each do |file|
      src  = File.join(BASE_PATH, file)
      dest = File.join(Dir.home, file)

      unless File.identical?(src, dest)
        options = { noop: noop, verbose: verbose }
        cp_r(src, BACKUP_DIR, options)
      end

      # otherwize it will be created dest/src
      next if File.exists?(dest) && Dir.exist?(src) && File.identical?(src, dest)

      options = { noop: noop, verbose: verbose, force: force }
      symlink(src, dest, options)
    end

    if Dir.empty?(BACKUP_DIR)
      Dir.rmdir(BACKUP_DIR)
    else
      puts "backuped at #{BACKUP_DIR}"
    end
  end
end

class Dir
  def Dir.empty?(path)
    Dir.entries(path) == %w(. ..)
  end
end

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
