# -*- coding: utf-8 -*-
require 'signed_request'

class IndexController < ApplicationController
  include SignedRequest

  # for Facebook pagetab
  # GET /index
  # GET /index.json
  def show
    puts '=' * 8 + ' GET /index'
  end
end
