#!/usr/bin/env ruby
# frozen_string_literal: true

require 'rom-sql'
require 'rom-repository'
require 'sqlite3'

DATABASE_CONFIG = ROM::Configuration.new(:sql, "sqlite://#{DB}")

class Sounds < ROM::Relation[:sql]
 schema(infer: true)
end

DATABASE_CONFIG.register_relation(Sounds)

class SoundRepo < ROM::Repository[:sounds]
 commands :create, update: :by_pk, delete: :by_pk
end

# a container...
main_container = ROM.container(DATABASE_CONFIG)

# a repository
sr = SoundRepo.new(ROM.container(DATABASE_CONFIG))


# a class to access the container with or in
# the repository
class Library
  attr_reader :main_container, :sr

  def initialize(main_container, sr)
    @main_container = main_container
    @sr = sr
  end

  def sounds
    main_container.relations[:sounds]
  end

  # def tasks
  #   main_container.relations[:tasks]
  # end
end

#----
# DB = Pathname.new(File.join(CONFIGPATH, "soundbot.db"))
# DB.cleanpath.to_s
#
# module SoundDB
#   module_function
#
#
# end

# class Sounds < ROM::Relation[:sql]
#   # register_as :sounds
#
#   schema(:sounds, infer: true) do
#
#   # associations do
#     #   has_many :
#     # end
#   end
#
# end



# class SoundRepo < ROM::Repository[:sounds]
#   commands :create, update: :by_pk, delete: :by_pk
#
#   # def query(conditions)
#   #   sounds.where(conditions)
#   # end
#   # def ids
#   #   sounds.pluck(:uuid)
#   # end
# end


# DATABASE_CONFIG.gateways[:default].create_table(:sounds) do
#   primary_key :id
#   column :filename, String
# end
# DATABASE_CONFIG.plugin(:sql, relations: :auto_restrictions)
# DATABASE_CONFIG.register_relation(Sounds)



# rom = ROM.container(DATABASE_CONFIG) do |conf|
#   conf.default.create_table(:sounds) do
#     primary_key :id
#     column :filename, String, null: false
#   end
#   class Sounds < ROM::Relation[:sql]
#     schema(infer: true)
#   end
#   conf.register_relation(Sounds)
# end
#
# class SoundRepo < ROM::Repository[:sounds]
# end



# sound_repo = SoundRepo.new(rom)
# sound_repo.methods
# sound_repo.create(filename: "/path")
