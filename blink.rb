# This is a simple blinking led
require 'artoo'

# setup
connection :raspi, adaptor: :raspi
device :board, driver: :device_info
device :led, driver: :led, pin: 11

work do
  puts "********************************************************************************"
  puts "This is a simple blinking led example"
  puts "Firmware : #{ board.firmware_name }"
  puts "********************************************************************************"

  every 1.second do
    led.toggle
  end

end
