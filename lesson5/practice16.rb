# Write method to return UUID when called (no params)
# UUID = 32 hex chars =  8-4-4-4-12 characters

def make_chars(times=1)
  hexes = ''
  times.times do
    hexes << rand(16).to_s(16)
  end
  hexes
end

def make_uuid
  "#{make_chars(8)}-#{make_chars(4)}-#{make_chars(4)}-"\
  "#{make_chars(4)}-#{make_chars(12)}"
end

p make_uuid
p make_uuid
p make_uuid
