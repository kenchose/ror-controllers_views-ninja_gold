class RpgController < ApplicationController
  def index
    session[:counter] ||= 0
    session[:message] ||= []
    @gold = session[:counter]
  end
  
  def farm
    reset_session
    d = Date.today.strftime("%B %m/%d/%Y")
    t = Time.now.strftime("%I:%M %p")
    @gold=rand(10..20)
    @timestamp= d + ' ' + t
    @message = ["Earned #{@gold} golds from the farm! (" + @timestamp + ")"]
    session[:counter] += @gold
    session[:message] << @message
    redirect_to '/'
  end

  def cave
    d = Date.today.strftime("%B %m/%d/%Y")
    t = Time.now.strftime("%I:%M %p")
    @gold=rand(5..10)
    @timestamp= d + ' ' + t
    @message = ["Earned #{@gold} golds from the farm! (" + @timestamp + ")"]
    session[:counter] += @gold
    session[:message] << @message
    redirect_to '/'
  end

  def house
    d = Date.today.strftime("%B %m/%d/%Y")
    t = Time.now.strftime("%I:%M %p")
    @gold=rand(2..5)
    @timestamp= d + ' ' + t
    @message = ["Earned #{@gold} golds from the farm! (" + @timestamp + ")"]
    session[:counter] += @gold
    session[:message] << @message
    redirect_to '/'
  end

  def casino
    d = Date.today.strftime("%B %m/%d/%Y")
    t = Time.now.strftime("%I:%M %p")
    @gold=rand(-50..50)
    @timestamp= d + ' ' + t
    @message = ["Earned #{@gold} golds from the farm! (" + @timestamp + ")"] unless @gold < 0
    @message = ["Lost #{@gold} golds from the farm! (" + @timestamp + ")"] unless @gold > 0
    session[:counter] += @gold
    session[:message] << @message
    redirect_to '/'
  end
end
