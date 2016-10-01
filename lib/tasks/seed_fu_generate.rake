namespace :seed_fu_generate do
  desc 'generae seed-fu fle for line.'

  task :line => :environment do |t|
    SeedFu::Writer.write('./db/fixtures/line_gen.rb', class_name: 'Journal', constraints: [:line_id]) do |w|
      Journal.all.each do |x|
        w << x.as_json(except: [:created_at, :updated_at])
      end
    end
  end
end
