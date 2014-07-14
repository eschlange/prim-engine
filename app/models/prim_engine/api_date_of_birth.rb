# Author::  Eric Schlange (mailto:eric.schlange@northwestern.edu)
# License:: GPLv2

# Description goes here.
module PrimEngine
  class ApiDateOfBirth < ActiveResource::Base
    self.site = Rails.application.papi_url
    self.prefix = '/participant/:external_id'
  end
end