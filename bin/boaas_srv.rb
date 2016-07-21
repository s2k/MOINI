#!/usr/bin/env ruby -w

require 'sinatra'
require_relative '../lib/boaas'

get '/:operation/:op1/:op2' do
  BOAAS.new.calculate params[:op1], params[:op2], params[:operation]
end