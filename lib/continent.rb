require 'yaml'

module Continent
  def self.data
    @@data ||= YAML.load_file(File.join(File.dirname(__FILE__), '..', 'share',
      'data.yml'))
  end

  def self.by_alpha_2_code country
    self.data[:base][country]
  end

  def self.by_alpha_3_code country
    self.data[:base][self.data[:by_alpha_3_code][country]]
  end

  def self.by_numeric_code country
    self.data[:base][self.data[:by_numeric_code][country]]
  end

  def self.by_continent_code continent
    return nil unless self.data[:by_continent_code][continent]
    self.data[:by_continent_code][continent].map do |c|
      self.data[:base][c]
    end
  end

  def self.continent_name continent
    self.data[:continent_names][continent]
  end
end
