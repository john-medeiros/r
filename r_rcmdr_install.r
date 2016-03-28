#
# Install Rcmdr packages
# Link: http://rstudio-pubs-static.s3.amazonaws.com/3822_ca7a1aee8d914dadba59f2a3256b9989.html

## Obtain names of all packages on CRAN
names.available.packages <- rownames(available.packages())

## Extract packages names that contain Rcmdr
Rcmdr.related.packages <- names.available.packages[grep("Rcmdr", names.available.packages)]
Rcmdr.related.packages

## Install these packages
install.packages(pkgs = Rcmdr.related.packages)
