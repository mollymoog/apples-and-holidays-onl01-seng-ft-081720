require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << "Balloons"
  end
  holiday_hash

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  holiday_hash
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[:fall][:halloween] = ["pumpkins", "costumes", "candy"]
  holiday_hash[:fall].keys
end

def all_winter_holiday_supplies(holiday_hash)
  list_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
    list_supplies << supplies.flatten
  end
  list_supplies.to_s
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    seasons = "#{season.capitalize}:" 
    holiday.each do |holiday, supplies|
      holidays = "#{holiday.capitalize}:"
        supplies.each do |supplies|
          supply = "#{supplies.capitalize}"
        end
    end
  end
  puts seasons + holidays + supply
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash[:season].each do |holiday, supplies|
    if holiday.values.include? ("BBQ")
      puts "#{holiday}"
    end
  end

end







