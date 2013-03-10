require 'test/unit'
require File.join(File.dirname(__FILE__), '..', 'lib', 'continent')

class TestContinent < Test::Unit::TestCase
  def test_data
    d = Continent.data
    assert_kind_of Hash, d
  end

  def test_by_alpha_3_code
    c = Continent.by_alpha_3_code 'AUS'
    assert_kind_of Hash, c
    assert_operator c.length, '>', 0
  end

  def test_by_alpha_2_code
    c = Continent.by_alpha_2_code 'AU'
    assert_kind_of Hash, c
    assert_operator c.length, '>', 0
  end

  def test_by_numeric_code
    c = Continent.by_numeric_code 36
    assert_kind_of Hash, c
    assert_operator c.length, '>', 0
  end

  def test_by_continent_code
    c = Continent.by_continent_code 'OC'
    assert_kind_of Array, c
    assert_operator c.length, '>', 0
  end

  def test_continent_name
    c = Continent.by_alpha_3_code 'AUS'
    con = c[:continent_codes].first
    assert_equal 'Oceania', Continent.continent_name(con)
  end
end