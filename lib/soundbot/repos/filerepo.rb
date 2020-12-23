#!/usr/bin/env ruby
# frozen_string_literal: true
# require 'dry-types'
# require 'dry-struct'


class FileRepo < ROM::Repository[:files]
 commands :create, update: :by_pk, delete: :by_pk

 def all
   files.select(:filename).as(Files).to_a
 end

end

# [1] pry(main)> sr = SoundRepo.new(ROM.container(DATABASE_CONFIG))
# => #<SoundRepo struct_namespace=ROM::Struct auto_struct=true>
# [2] pry(main)> sr.all
# => [#<ROM::Struct::Sound filename="a different name">, #<ROM::Struct::Sound filename="yet another different name">]
