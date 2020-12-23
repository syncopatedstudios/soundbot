#!/usr/bin/env ruby
# frozen_string_literal: true

class DeleteFile < ROM::Commands::Delete[:sql]
  relation :files
  register_as :delete
end
