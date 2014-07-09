class WebScrapperController < ApplicationController
  
	skip_before_filter :verify_authenticity_token  

	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

  def index
  end

  def scrapping
  	if params[:website]
  		url = params[:website]["url"]
  		page = Nokogiri::HTML(open(url, :read_timeout => 10))
  		#puts page.class   # => Nokogiri::HTML::Document
  		@doc = page.class
  		render :scrapping
  	else
  		redirect_to "/web_scrapper/"
  	end
  end
end
