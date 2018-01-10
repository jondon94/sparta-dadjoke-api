require 'httparty'
require 'json'

class JokeData
  include HTTParty
  headers 'Accept' => 'application/json'

  attr_accessor :joke_ran
  attr_accessor :joke_ser

  base_uri 'https://icanhazdadjoke.com'

  def get_random_joke
    @joke_ran = JSON.parse(self.class.get("/").body)
  end

  def get_joke_id
    get_random_joke['id']
  end

  def get_joke_joke
    get_random_joke['joke']
  end

  def get_joke_status
    get_random_joke['status']
  end

  def search_joke(id)
    @joke_ser = JSON.parse(self.class.get("/j/#{id}").body)
  end

  def ser_joke_res
    search_joke('kbUv4T0Ddxc')
  end

  def ser_joke_res_stat
    ser_joke_res['status']
  end

  def ser_joke_res_joke
    ser_joke_res['joke']
  end

  def ser_joke_res_id
    ser_joke_res['id']
  end

end

x = JokeData.new

p x.ser_joke_res
