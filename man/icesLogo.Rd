% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/icesLogo.R
\name{icesLogo}
\alias{icesLogo}
\title{icesLogo.R
Adds ICES logo to a base R plot}
\usage{
icesLogo(logoType = c("acronym", "fullText"), x, y, size, alpha = 1)
}
\arguments{
\item{logoType}{= c("acronym", "fullText"), x, y, size, alpha = 1}
}
\value{
none
}
\description{
icesLogo.R
Adds ICES logo to a base R plot
}
\details{
none
}
\examples{
\dontrun{
 needList <- c("png")
 new.packages <- needList[!(needList \%in\% installed.packages()[,"Package"])]
 if(length(new.packages)) install.packages(new.packages)
 library(png)

 width <- 172.4
 height <- 162.6
 rows <- 2
 cols <- 1
 png(filename = "~/TESTlogo.png",
     width = width,
     height = height,
     units = "mm",
     res = 600)

 par(mar = c(2.15, 2.25, 0.45, 0.25),
     mfrow = c(rows, cols),
     oma = c(0, 0, 1.25, 0),
     mgp = c(3, .35, 0),
     tck = -0.01,
     family = "Calibri")

 plot(1:2,type="n")
 icesLogo(logoType = "acronym", x = 0.1, y = 0.9, size = .25, alpha = 1)
 plot(1:2,type="n")
 icesLogo(logoType = "fullText", x = 0.5, y = 0.5, size = 1, alpha = .1)
 dev.off()
 

# devtools::install_github("ices-dk/rICES")
library(rICES)
library(extrafont)
library(png)
library(RCurl)

icesOrange <- "#F15D2A"

png(filename = "~/git/ices-dk/rICES/rICESlogo.png",
    width = 25.4,
    height = 25.4,
    units = "mm",
    res = 600)
par(mar = c(0, 0, 0, 0),
    oma = c(0, 0, 0, 0),
    family = "Calibri", # requires library(extrafont), but matches ICES Advice format
    mgp = c(3, .35, 0))

plot(x = 0.55, y = 0.5, type="p", pch = "R", cex = 9, 
     col = icesOrange, xlim = c(0,1), ylim = c(0,1),
     axes = F, bty = "n")
icesLogo(logoType = "acronym", x = 0.5, y = 0.5, size = .55, alpha = .9)
#
dev.off()


}
}
\seealso{
none
}
\keyword{plot}

