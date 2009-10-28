namespace :admin do
  desc "create admin"
  task :create => :environment  do
      puts "create admins..."
      User.create!({
        :login => 'andyss',
        :email => 'joeyoooooo@gmail.com',
        :password => 'password4rojo',
        :display_name => 'Joey Lin',
        :password_confirmation => 'password4rojo'
      })

      User.create!({
        :login => 'roc',
        :email => 'rociiu.yu@gmail.com',
        :password => 'password4rojo',
        :display_name => 'Roc Yu',
        :password_confirmation => 'password4rojo'
      })
   end

   task :destroy => :environment do
     puts "destroy admins..."
     User.all.map(&:destroy)
   end
end
 
