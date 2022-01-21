# Input str in "##:##" format
# Output number of minutes before/after midnight

HOURS_PER_DAY = 24
MIN_PER_HOUR = 60
MIN_PER_DAY = HOURS_PER_DAY * MIN_PER_HOUR

def normalize_time(minutes)
  minutes % MIN_PER_DAY
end

def after_midnight(time)
  hours, minutes = time.split(':').map { |digit| digit.to_i }
  normalize_time((hours * MIN_PER_HOUR) + minutes)
end

p after_midnight("00:00")
p after_midnight("12:34")
p after_midnight("24:00")

def before_midnight(time)
  hours, minutes = time.split(':').map { |digit| digit.to_i }
  total = MIN_PER_DAY - normalize_time((hours * MIN_PER_HOUR) + minutes)
  total == 1440 ? 0 : total
  end

p before_midnight('00:00')
p before_midnight('12:34')
p before_midnight('24:00')

# Further Exploration
# Skipping again until more exposure to Date and Time
