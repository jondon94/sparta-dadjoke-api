require 'spec_helper'

describe TestJokes do

  context 'requesting information on a random joke works correctly' do

    before(:all) do
      @jokeinfo = JokeData.new
    end

    it "should have the information of the joke as a Hash" do
      expect(@jokeinfo.get_random_joke).to be_kind_of(Hash)
    end

    it "should have a hash length of 3" do
      expect(@jokeinfo.get_random_joke.length).to eq(3)
    end

    it "should have a String for the id value" do
      expect(@jokeinfo.get_joke_id).to be_kind_of(String)
    end

    it "should have a string for the joke and punchline" do
      expect(@jokeinfo.get_joke_joke).to be_kind_of(String)
    end

    it "should have a status code for a succesful request eq to 200" do
      expect(@jokeinfo.get_joke_status).to eq(200)
    end
  end

  context 'requesting information when searched by id for a specific joke' do

    before(:all) do
      @jokeinfo = JokeData.new
    end

    it "should have the information of the joke as a Hash" do
      expect(@jokeinfo.ser_joke_res).to be_kind_of(Hash)
    end

    it "should have a hash length of 3" do
      expect(@jokeinfo.ser_joke_res.length).to eq(3)
    end

    it "should have a succesful request show status of 200" do
      expect(@jokeinfo.ser_joke_res_stat).to eq(200)
    end

    it "should have a String for the id value" do
      expect(@jokeinfo.ser_joke_res_id).to be_kind_of(String)
    end

    it "should have a string for the joke and punchline" do
      expect(@jokeinfo.ser_joke_res_joke).to be_kind_of(String)
    end
  end
end
