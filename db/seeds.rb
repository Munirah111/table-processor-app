require_relative '../config/environment'
require 'csv'


CSV.foreach(Rails.root.join('db/seeds/Table_Input.csv'), headers: true) do |row|
  TableEntry.create(
    identifier: row['Index #'].strip,
    value: row['Value'].to_f
  )
end

