#!/usr/bin/env ruby

require 'rom-sql'
require 'rom-repository'

# Options Hash
opts = {
    username: 'postgres',
    password: 'example',
    encoding: 'UTF8'
  }

#connection to db
config = ROM::Configuration.new(:sql, 'postgres://192.168.36.23:5432/soundbot', opts)

p config
#create table(s)
rom = ROM.container(config) do |config|
  config.default.connection.create_table(:sounds) do
    primary_key :uuid
    columun :name, String, null: false
    columun :location, String, null: false
  end

  config.relation(:sounds) do
    schema(infer: true)
  end
end

class Sounds < ROM::Relation[:sql]
  schema(infer: true)
end


class SoundRepo < ROM::Repository[:sounds]
  commands :create
  def query(conditions)
    sounds.where(conditions)
  end
  def ids
    sounds.pluck(:uuid)
  end
end

sound_repo = SoundRepo.new(rom)
sound_repo.create(name: "FileName", location: "/mnt/tmp/import")
