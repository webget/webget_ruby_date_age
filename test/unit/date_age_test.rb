require 'test/unit'
require 'date_age'

class DateAgeTest < Test::Unit::TestCase

  BIRTHDATE     = Date.new(1980,10,31)
  VALENTINES    = Date.new(2008,02,14)
  HALLOWEEN     = Date.new(2008,10,31)
  NEW_YEARS_EVE = Date.new(2008,12,31)

 def test_age_in_years
   assert_equal(27,BIRTHDATE.age_years(VALENTINES),    '< birthday')
   assert_equal(28,BIRTHDATE.age_years(HALLOWEEN),     '= birthday')
   assert_equal(28,BIRTHDATE.age_years(NEW_YEARS_EVE), '> birthday')
 end

 def test_age__in_days
   assert_equal( 9967,BIRTHDATE.age_days(VALENTINES),     '< birthday')
   assert_equal(10227,BIRTHDATE.age_days(HALLOWEEN),      '= birthday')
   assert_equal(10288,BIRTHDATE.age_days(NEW_YEARS_EVE),  '> birthday')
 end

end

