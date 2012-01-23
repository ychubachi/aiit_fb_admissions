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
    puts 'sr=' + sr.to_s
    if sr && sr["page"] && sr["page"]["liked"] == false
      redirect_to message_index_url and return
    end

    respond_to do |format|
      format.html {render template: 'index/show', layout: 'pagetab'}
    end
    puts '<' * 4 + ' GET /index'
  end

  def create
    puts '>' * 4 + ' POST /index'
    show
    puts '<' * 4 + ' POST /index'
  end

  def message
    puts '>' * 4 + ' GET /message'

    respond_to do |format|
      format.html {render template: 'index/message', layout: 'pagetab'}
    end
    puts '<' * 4 + ' GET /message'
  end
end
