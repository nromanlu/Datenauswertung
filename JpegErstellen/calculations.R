# n = anzahl files
n <- 3766

# anzahl Bilder kürzen
z <- 10
n <- n/z
j <- 0

for (i in seq(0,n)) {
	# Positionen 
	input = sprintf("pos/Pos%09d.csv", j)
	output = sprintf("pospdf/Pos%09d.jpeg", i)
	
	d <- read.csv(input)
	jpeg(filename = output)

	plot(d$x ~ d$y, col="red",
		main = "2D view 10'000er steps 1'000 stars",
		xlab = "X-Koordinate", ylab = "Y-Koordinate",
		ylim = c(-1e19, 1e19),
		xlim = c(-1e19, 1e19))
	grid()
	graphics.off() 
	
	# Energy & Radii
	input = sprintf("data/Data%09d.csv", i)
	output = sprintf("radpdf/Radius%09d.jpeg", i)
	
	d <- read.csv(input)
	jpeg(filename = output)

	barplot(d$r, col="red",
		main = "Radies Average 1'000 stars",
		xlab = "Steps", ylab = "Radi",
		ylim = c(0,2.5e21)) 
	grid()
	graphics.off() 

	output = sprintf("energpdf/Energy%09d.jpeg", i)

	jpeg(filename = output)
		plot(d$e, col="red", 
		main = "Energy Average",
		xlab = "Steps", ylab = "Energy")
	grid()
	graphics.off() 

	# Radii Hist
	input = sprintf("rad/Rad%09d.csv", i)
	output = sprintf("verpdf/Raddist%09d.jpeg", i)
	
	d <- read.csv(input)
	jpeg(filename = output)

	hist(d$r, breaks = "Sturges", col = "red",
		main = "Histogramm of Radii",
		xlab = "Radi", ylab = "Quantity") 
	grid()
	graphics.off() 

	j <- j+z
}

pdf("Startrace.pdf", 8, 8)

plot(0 ~ 0, col="white",
	main = "2D view 10'000er steps, trace 1 star",
	xlab = "X-Koordinate", ylab = "Y-Koordinate",
	ylim = c(-1e20, 1e20),
	xlim = c(-1e20, 1e20))
grid()

n <- n*z

for (i in seq(0,n)) {
	# Positionen 
	input = sprintf("data/Data%09d.csv", i)	
	d <- read.csv(input)
	lines(d$x ~ d$y, col="red") 
}
graphics.off()
