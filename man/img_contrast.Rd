% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/contrast.R
\name{img_contrast}
\alias{img_contrast}
\title{Image contrast}
\usage{
img_contrast(img)
}
\arguments{
\item{img}{An image in form of a matrix or array of numeric values. Use e.g.
\code{\link{img_read}()} to read an image file into \code{R}.}
}
\value{
a numeric value (RMS contrast)
}
\description{
\code{img_contrast} returns the RMS contrast of an image \code{img}. A higher
value indicates higher contrast.
}
\details{
The function returns the RMS contrast of an image \code{img}. The
  RMS contrast is defined as the standard deviation of the normalized pixel
  intensity values. A higher value indicates higher contrast. The image is
  automatically normalized if necessary (i.e., normalization into range [0,
  1]).

  For color images, the weighted average between each color channel's values
  is computed.
}
\examples{
# Example image with relatively high contrast: berries
berries <- img_read(system.file("example_images", "berries.jpg", package = "imagefluency"))
#
# display image
grid::grid.raster(berries)
#
# get contrast
img_contrast(berries)

# Example image with relatively low contrast: bike
bike <- img_read(system.file("example_images", "bike.jpg", package = "imagefluency"))
#
# display image
grid::grid.raster(bike)
#
# get contrast
img_contrast(bike)

}
\references{
Peli, E. (1990). Contrast in complex images. \emph{Journal of the
  Optical Society of America A}, \emph{7}, 2032--2040.
  \doi{10.1364/JOSAA.7.002032}
}
\seealso{
\code{\link{img_read}}, \code{\link{img_complexity}},
  \code{\link{img_self_similarity}}, \code{\link{img_simplicity}},
  \code{\link{img_symmetry}}, \code{\link{img_typicality}},
}
