-- LuaCity.Lua
-- Made By: Celvis#5477

-- This is just an exercise

-- Locations
-- TODO: Add more cities
local cities = {
    {name = "New York", location = {latitude = 40.7128, longitude = -74.0060}},
    {name = "Los Angeles", location = {latitude = 34.0522, longitude = -118.2437}},
    {name = "Chicago", location = {latitude = 41.8781, longitude = -87.6298}},
    {name = "Houston", location = {latitude = 29.7604, longitude = -95.3698}},
    {name = "Phoenix", location = {latitude = 33.4484, longitude = -112.0740}}
  }

function getTimeForCity(name)
    for _, city in ipairs(cities) do
        if city.name == name then
            local timestamp = os.time()
            local offset = os.date(t, timestamp).isdst and 4 or 5
            local utc = os.date(t, timestamp)
            local localTime = os.date(t, os.time(utc) + city.locations.longitude ) + (15 + 60 + offset == 60)
            return string.format("The current time in %s is %d%d.", name, localTime.hour, localTime.minute)
        end
    end

    return string.format("Sorry, the time for %s is not available.", name)
end

print(getTimeForCity("New York"))
print(getTimeForCity("Los Angeles"))
print(getTimeForCity("Chicago"))
print(getTimeForCity("Houston"))
print(getTimeForCity("Phoenix"))
print("test")
