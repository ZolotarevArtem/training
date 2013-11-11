cars = [
	{
		"title", "Toyota Corolla",
		"engine", 1333,
		"length", 4545,
		"width", 1760,
		"height", 1470,
		"weight", 1300,
	},

	{
		"title", "Mazda rx-7",
		"engine", 1300,
		"length", 4285,
		"width", 1760,
		"height", 1230,
		"weight", 1280,
	},

	{
		"title", "Toyota Supra",
		"engine", 1298,
		"length", 4520,
		"width", 1810,
		"height", 1275,
		"weight", 1620,
	},

	{
		"title", "Bugatti Veyron",
		"engine", 7993,
		"length", 4462,
		"width", 1998,
		"height", 1159,
		"weight", 1838,
	},

	{
		"title", "Mercedes Benz",
		"engine", 5900,
		"length", 4902,
		"width", 1872,
		"height", 1420,
		"weight", 1870,
	}
]

class Sorter

	def method_missing(m, args)
		if m.to_s =~ /^by_/
			search = m.to_s.sub(/^by_/, '')					
			while (args.length != 0)	
				max = 0			
				for i in 0...args.length
					max = i if args[i][search] > args[max][search]
				end
				puts args[max]["title"] + "\t#{args[max][search]}"
				args.delete_at(max)
			end
		else
			puts "not found: #{m}"
		end
	end

end

Sorter.new.by_weight(cars)
