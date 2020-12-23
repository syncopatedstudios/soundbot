#!/usr/bin/env ruby
# frozen_string_literal: true

class Files < ROM::Relation[:sql]
 schema(infer: true)

 def by_id(id)
   where(id: id)
 end

 def by_type
   select(:id, :filename, :location, :type).order(:type)
 end

end

# [14] pry(main)> x = MAIN_CONTAINER.relations[:files].by_type
# => #<Files name=ROM::Relation::Name(files) dataset=#<Sequel::SQLite::Dataset: "SELECT `files`.`id`, `files`.`filename`, `files`.`location`, `files`.`type` FROM `files` ORDER BY `type`">>
