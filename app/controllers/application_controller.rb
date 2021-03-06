class ApplicationController < ActionController::Base
  attr_accessor :deck
  protect_from_forgery with: :exception

  before_action :set_deck
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def set_deck
    @deck = Deck.new(session[:deck])
  end

end
