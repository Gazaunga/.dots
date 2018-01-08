#!/usr/bin/env ruby

require 'fileutils'

dest = Dir.home

Dir.glob(".dots/*") { |f| FileUtils.cp(f, dest, :verbose => true) }
