require "artoo"

connection :raspi, adaptor: :raspi
device :board, driver: :device_info
device :led, driver: :led, pin: 11
device :button, driver: :button, pin: 12, :interval => 0.01

work do
  puts "Firmware : #{ board.firmware_name }"
  puts "Press the button"

  on button, :push  => proc { puts "Button pushed" }
  on button, :release => proc { puts "Button released" }

end
