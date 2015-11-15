# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks


task :routes do
  Doggg::API.routes.each do |r|
    method = r.route_method.ljust(10)
    path   = r.route_path
    description = "%-55s..." % r.route_description if r.route_description.present? 
    puts "#{description}   #{method} #{path}"
  end
end
