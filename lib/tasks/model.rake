namespace :model do
  desc <<~DESC
    Print model. Usage: `rails model:print[User]`
  DESC
  task :print, [:klass] => :environment do |task, args|
    klass = args.klass
    puts klass.constantize.print_model
  end
end
