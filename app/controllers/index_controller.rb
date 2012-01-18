# -*- coding: utf-8 -*-
require 'signed_request'

class IndexController < ApplicationController
  include SignedRequest

  # for Facebook pagetab
  # GET /index
  # GET /index.json
  def show
    puts '>' * 4 + ' GET /index'

    sr = parse_signed_request(request, ENV["FACEBOOK_SECRET"])
    puts 'signed_request=' + sr.to_s

    respond_to do |format|
      format.html {render template: 'index/show', layout: 'pagetab'}
    end
    puts '<' * 4 + ' GET /index'
  end

  def create
    puts '>' * 4 + ' POST /index'

    sr = parse_signed_request(request, ENV["FACEBOOK_SECRET"])
    puts 'signed_request=' + sr.to_s

    respond_to do |format|
      format.html {render template: 'index/show', layout: 'canvas'}
    end

    puts '<' * 4 + ' POST /index'
  end
end
