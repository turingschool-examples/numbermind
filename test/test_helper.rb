lib_dir = File.expand_path('../lib', __dir__)
$LOAD_PATH.unshift(lib_dir)
require 'cli'

require 'minitest/autorun'
require 'minitest/pride'
