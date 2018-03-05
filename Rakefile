#!/usr/bin/env ruby

# coding: utf-8
require 'rake'

# Load all tasks in the directory '.rake' with the extension '.rake'
Dir.glob(".rake/**.rake").each { |f| import f }

# Confirm
task :confirm do
  confirm_token = rand(36**6).to_s(36)
  STDOUT.puts "Confirm [ACTION]? Enter '#{confirm_token}' to confirm:"
  input = STDIN.gets.chomp
  raise "Aborting [ACTION]. You entered #{input}" unless input == confirm_token
end
