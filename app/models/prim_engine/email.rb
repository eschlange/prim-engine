# Author::  Eric Schlange (mailto:eric.schlange@northwestern.edu)
# License:: GPLv2

# Description goes here.
module PrimEngine
  class Email < ActiveRecord::Base
    belongs_to :participant
  end
end