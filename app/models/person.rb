class Person < ActiveRecord::Base
  def sleeper
    ActiveRecord::Base.connection.execute("select pg_sleep(2);")
    "thing!"
  end
end
