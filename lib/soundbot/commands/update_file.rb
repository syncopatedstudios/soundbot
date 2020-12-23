#!/usr/bin/env ruby
# frozen_string_literal: true

class UpdateFile < ROM::Commands::Update[:sql]
  relation :files
  register_as :update
end
