# -*- encoding : utf-8 -*-
require 'multi_json'
require 'nestful'

module Weixin

  class Menu < Api

    def gw_path(method)
      "/menu/#{method}?access_token=#{access_token}"
    end


    def get
      request = Nestful.get gw_url('get') rescue nil
      MultiJson.load(request.body) unless request.nil?
    end

    def create(menu)
      response = Nestful::Connection.new(@endpoint).post("/cgi-bin#{gw_path('create')}", MultiJson.dump(menu)) rescue nil
      check_response(response)
    end

    alias :add :create


    def delete
      response = Nestful.get gw_url('delete') rescue nil
      check_response(response)
    end

  end

end
