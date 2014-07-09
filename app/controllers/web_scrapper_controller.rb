class WebScrapperController < ApplicationController
  
	skip_before_filter :verify_authenticity_token  

	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

  def index
  end

  def scrapping
  	if params[:url]
  		url = params[:url]
  		puts url
  		#page = Nokogiri::HTML(open(url))
  		#puts page.class   # => Nokogiri::HTML::Document
  		@doc = url
  		render :scrapping
  	else
  		redirect_to "/web_scrapper/index"
  	end
  end
end
