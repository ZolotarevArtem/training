TAX = 5.42
class Car

	def initialize(value)
		
		@make = value[:make]
		@model = value[:model]
		@engine = value[:engine]
		@transmission = value[:transmission]		
		@year = value[:year]
		@color = value[:color]
		@customsClearnce = value[:customsClearnce]
		@price = value[:price]

	end

	attr_reader :make, :model, :engine, :transmission, :year, :color, :customsClearnce, :price

	def Show

		puts
		puts make + ' ' + model
		puts "Transmission: " + transmission
		puts "Engine: " + engine.to_s
		puts "Color: " + color
		puts "Year: " + year.to_s
		puts "CustomsClearnce: " + customsClearnce
		puts "Price: " + price.to_s

	end

	def Painting

		puts "Painting"
		puts "1: white, 2: black, 3: green, 4: red, 5: blue"
		col = gets.chomp
		case col.to_f

		when 1
			@color = "white"
		when 2
			@color = "black"
		when 3
			@color = "green"			
		when 4
			@color = "red"
		when 5
			@color = "blue"
		else
			puts "no color"

		end

	end

	def OnCustoms

		if customsClearnce == "yes"
			puts "Your car customs clearnce"
		else
			@price += engine * TAX
			@customsClearnce = "yes"
			puts
			puts "Complited. New price = " + price.to_s
		end

	end

end

id1 = Car.new( :make => "Toyota", :model => "Corolla", :engine => 1333, :transmission => "automatic", :year => 2000, :color => "white", :customsClearnce => "yes", :price => 200000)
id2 = Car.new( :make => "Mazda", :model => "RX-7", :engine => 1350, :transmission => "manual", :year => 2002, :color => "red", :customsClearnce => "yes", :price => 500000)
id3 = Car.new( :make => "Mazda", :model => "RX-8", :engine => 1300, :transmission => "manual", :year => 2010, :color => "black", :customsClearnce => "no", :price => 500000)
id1.Show
id2.Show
id3.Show

id1.Painting
id2.Painting
id1.Show
id2.Show

id3.OnCustoms
id3.Show
