require 'csv'

namespace :import do
  desc 'Import communes from CSV'
  task communes: :environment do
    file_path = 'comunas.csv'

    CSV.foreach(file_path, headers: true) do |row|
      Commune.create!(
        id: row['id'],
        name: row['name']
      )
    end

    puts 'CSV imported successfully.'
  end
end
