require 'active_resource'

module PrimEngine
  class ApiParticipant < ActiveResource::Base
    self.site = Rails.application.config.papi_url
  end
end
