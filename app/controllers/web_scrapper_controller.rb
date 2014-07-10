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
  		begin
  			page = Nokogiri::HTML(open(url, :read_timeout => 10))
  		rescue Timeout::Error
		    flash[:alert] = "Timeout due to reading"
		  end
  		#puts page.class   # => Nokogiri::HTML::Document
  		@tags = ["title", "h1", "h2", "h3", "h4", "h5", "h6" ]
  		@metas = ["description", "keywords"]
  		@doc = page
  		render :scrapping
  	else
  		redirect_to "/web_scrapper/"
  	end
  end
end
