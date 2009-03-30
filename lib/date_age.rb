# = WebGet.com Ruby Date age methods
#
# Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
# Copyright:: Copyright (c) 2006-2009 Joel Parker Henderson
# License:: CreativeCommons License, Non-commercial Share Alike
# License:: LGPL, GNU Lesser General Public License
#
# Ruby Date age methods to calculate an age in years or days.
##

require 'date'

class Date


 # Return the age in years for a given date.
 #
 # ==Example
 #
 #   birthdate=Date.new(1980,10,31)
 #   birthdate.age_years => 28 (where 28 is the correct age for today)
 #
 # ==Example of custom dates
 #
 #   birthdate=Date.new(1980,10,31)
 #
 #   valentines = Date.new(2008,02,14)
 #   birthdate.age_years(valentines) => 27  # before the birthday
 #
 #   halloween = Date.new(2008,10,31)
 #   birthdate.age_years(halloween) => 28   # on the birthday
 #
 #   new_years_eve = Date.new(2008,12,31)
 #   birthdate.age_years(new_years_eve) => 28  # after the birthday

 def age_years(compare_date=Date.today)
  age=compare_date.year-year
  age-=1 if compare_date.month < month or (compare_date.month==month and compare_date.day < day)
  age
 end


 # Return the age in days for a given date.

 def age_days(compare_to_date=Date.today)
  (compare_to_date-self).to_i
 end

end
