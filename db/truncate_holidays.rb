begin
  ActiveRecord::Base.establish_connection

  #This will truncate all tables
#  ActiveRecord::Base.connection.tables.each do |table|
#    ActiveRecord::Base.connection.execute("TRUNCATE #{table}")
#  end
  ActiveRecord::Base.connection.execute("DELETE FROM vacations")
  ActiveRecord::Base.connection.execute("DELETE FROM user_days")


rescue Exception => e
  $stderr.puts "Error while truncating" + e.message
end