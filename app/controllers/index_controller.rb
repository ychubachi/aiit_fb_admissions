# -*- coding: utf-8 -*-
require 'signed_request'

class IndexController < ApplicationController
  include SignedRequest

  # for Facebook pagetab
  # GET /index
  # GET /index.json
  def show
    puts '=' * 8 + ' GET /index'
    respond_to do |format|
      format.html {render template: 'index/show', layout: 'pagetab'}
    end
  end

  def create
    puts '=' * 8 + ' POST /index'
    respond_to do |format|
      format.html {render template: 'index/show', layout: 'canvas'}
    end
  end
end
