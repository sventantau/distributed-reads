class Person < ActiveRecord::Base
  replicated_model
  def sleeper
    # we sleep for 2 so something shows up in the slow query logs
    Person.connection.execute("select pg_sleep(3);")
    "name read from follower: #{name}"
  end
end
