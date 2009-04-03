require "rubygems"
require "pathname"

$:.unshift(Pathname(__FILE__).dirname.expand_path)

require "wheels/logging"
require "wheels/shellwords"
require "wheels/container"
require "wheels/router"
require "wheels/application"
require "wheels/cascade"