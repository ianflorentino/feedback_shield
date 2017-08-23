require 'api/helpers'
require 'doorkeeper/grape/helpers'

class ApplicationAPI < Grape::API

  #################################
  #### CONTENT_TYPES AND FORMATTERS
  #################################
  content_type :json, 'application/json'
  format :json
  formatter :json, Grape::Formatter::ActiveModelSerializers
  content_type :xml, 'application/xml'
  formatter :xml, proc { |object|
    if object.is_a?(Hash)
      object[object.keys.first].to_xml root: object.keys.first
    elsif object.is_a?(String)
      object
    else
      object.to_xml
    end
  }
  content_type :msgpack, 'application/x-msgpack'
  format :msgpack

  ############
  #### LOGGING
  ############
  require 'log_stasher/grape_middleware'
  use LogStasher::GrapeMiddleware

  ############
  #### HELPERS
  ############
  helpers API::Helpers
  helpers Doorkeeper::Grape::Helpers
  helpers do
    def current_user
      return unless doorkeeper_token
      user = User.find(doorkeeper_token.resource_owner_id)
      env[:current_user_id] = user.id
      env[:current_user_email] = user.email
      user
    end

    def route_options
      env['api.endpoint'].options[:route_options]
    end
  end

  ##############
  #### CALLBACKS
  ##############
  before do
    if !route_options[:skip_authorization]
      doorkeeper_authorize!
    end
  end

  ###########
  #### MOUNTS
  ###########
  mount V1::Base
end
