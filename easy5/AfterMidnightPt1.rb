# The time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm).
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# INPUTS: a positive or negative integer? 
# OUTPUTS: a string denoting the time of day in 24 hour format (hh:mm)
# RULES:
#   - Can't use ruby's Date and Time classes
#
# ALGORITHM:
# Create method, `time_of_day` that accepts one argument, `minutes_to_midnight`
#   If `minutes_to_midnight` is negative:
#     Set `hours` = 24
#     Set `minutes` = 60 
#     Create hours_time_to_midnight, set to `minutes_to_midnight` / 60
#     Create minutes_time_to_midnight, set to `minutes_to_midnight` % 60
#     Add `hours_time_to_midnight` to `hours` and convert to string --> `hours_final_string`
#     Add `minutes_time_to_midnight` to `minutes` and convert to string --> `minutes_final_string`
#   If `minutes_to_midnight` is positive or zero:
#     Set `hours` = 0
#     Set `minutes` = 0 
#     Create `hours_time_to_midnight`, set to `minutes_to_midnight` / 60
#     Create `minutes_time_to_midnight`, set to `minutes_to_midnight` % 60
#     Add `hours_time_to_midnight` to `hours` and convert to string --> `hours_final_string`
#     Add `minutes_time_to_midnight` to `minutes` and convert to string --> `minutes_final_string`
#   Combine `hours_final_string` and `minutes_final_string`

def time_of_day(minutes_to_midnight)
  if minutes_to_midnight < 0 
    hours = 24
    minutes = 60
    hours_time_to_midnight = - minutes_to_midnight / 60
    minutes_time_to_midnight = - minutes_to_midnight % 60
  else
    hours = 0
    minutes = 0
    hours_time_to_midnight = minutes_to_midnight / 60
    minutes_time_to_midnight = minutes_to_midnight % 60
  end
  hours_final_string = (hours_time_to_midnight + hours).to_s
  minutes_final_string = (minutes_time_to_midnight + minutes).to_s
  time_final = hours_final_string + ":" + minutes_final_string
  time_final
end

# Examples:
p time_of_day(0) # == "00:00"
p time_of_day(-3) # == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
