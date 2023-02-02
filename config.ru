# frozen_string_literal: true

require 'bundler/setup'
Bundler.require(:default)

require 'mapkick-rb'
require 'roda'

class App < Roda
  plugin :public
  plugin :render

  include ::Mapkick::Helper

  route do |r|
    r.public

    r.root do
      render('index')
    end
  end
end

run App.freeze.app
