TAX = 5.42
class Car

	attr_reader :make, :model, :engine, :transmission, :year, :color, :customsClearnce, :price

  def initialize(make, model, value)		
		@make = make
		@model = model
		@engine = value[:engine]
		@transmission = value[:transmission]		
		@year = value[:year]
		@color = value[:color]
		@customsClearnce = value[:customsClearnce]
		@price = value[:price]
	end
	

	def show
		puts
		puts "#{make} #{model}"
		puts "Transmission: #{transmission}"
		puts "Engine: #{engine}"
		puts "Color: #{color}"
		puts "Year: #{year}"
		puts "CustomsClearnce: #{customsClearnce}"
		puts "Price: #{price.to_s}"
	end


	def painting
		puts "Painting"
		colors = ["white", "black", "green", "red", "blue"]
		for i in 0..colors.size - 1
			print (i + 1).to_s + ": #{colors[i]} "
		end 
		col = gets
		if col.to_f > colors.size
			puts "no color"
		else @color = colors[col.to_f - 1]
		end
	end

	def onCustoms
		if customsClearnce == "yes"
			puts "Your car customs clearnce"
		else
			@price += engine * TAX
			@customsClearnce = "yes"
			puts
			puts "Complited. New price = #{price}"
		end
	end

end

id1 = Car.new(
	"Toyota", "Corolla",
	:engine =>          1333, 
	:transmission =>    "automatic", 
	:year =>            2000, 
	:color =>           "white", 
	:customsClearnce => "yes", 
	:price =>           200000)

id2 = Car.new(
	"Mazda", "RX-7", 
	:engine =>          1350, 
	:transmission =>    "manual", 
	:year =>            2002, 
	:color =>           "red", 
	:customsClearnce => "yes", 
	:price =>           500000)

id3 = Car.new(
	"Mazda", "RX-8", 
	:engine => 					1300, 
	:transmission => 		"manual", 
	:year => 						2010, 
	:color => 					"black", 
	:customsClearnce => "no", 
	:price => 					500000)

id1.show
id2.show
id3.show

id1.painting
id2.painting
id1.show
id2.show

id3.onCustoms
id3.show