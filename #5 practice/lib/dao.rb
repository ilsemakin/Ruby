require 'psych'

class Dao
  def read_db
    pp Psych::load_file(File.expand_path("../data/data.yaml", __dir__))
  end
end