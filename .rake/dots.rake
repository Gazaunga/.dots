#!/usr/bin/env ruby

require 'fileutils'
require 'pathname'

namespace :home do
desc ""
task :dots do
dest = Pathname.new("#{Dir.home}/")
#Dir.glob("#{Dir.home}/.dots/*").each { |f| FileUtils.cp_r(f, dest, :verbose => true) }
FileUtils.copy_entry(Dir["#{Dir.home}/.dots/**"], dest, :verbose => true)
ende)
