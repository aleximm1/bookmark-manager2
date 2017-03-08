require 'data_mapper'
require 'dm-postgres-adapter'

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}", production:, "postgres://fwktnisodzlfxg:a84187a327fda9ade642babfe5dc617b6b91f68ae11b7a0c704e4a7cca500b24@ec2-54-243-185-123.compute-1.amazonaws.com:5432/db9jql5h3vrtmh")
DataMapper.finalize
DataMapper.auto_upgrade!
