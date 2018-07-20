# pry session with your data models loaded

require 'pry'
require_relative 'db_config'
require_relative 'models/dish'
require_relative 'models/comment'

binding.pry