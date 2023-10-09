# 732A94_Lab5
This package is made for 732A94 Advanced Programming in R course.

<!-- badges: start -->
[![R-CMD-check](https://github.com/Hytreueroot/732A94_Lab5/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Hytreueroot/732A94_Lab5/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

## Description
The package provides data sets on various election results by municipalities in Sweden (Stockholm, Uppsala, Malmö, Göthenburg). The data was called from [Kolada](https://www.kolada.se/) with using web API.

### participation_rate()
This function returns a data set,which is about the percentage of voter turnout in the last parliamentary election for every 4 years in between 1998 to 2022, according to a city in Sweden. (Kpi: N05403)

```ruby
el <- election("Gothenburg")
el$participation_rate()
```

### political_party()
This function returns a data set,which is about the percentage of votes for the various political party in the last parliamentary election for every 4 years in between 2014 to 2022, according to a city in Sweden. (Kpi: N65841-N65849 respectively; Center Party, Christian Democrats, Liberals, Green Party, Moderates, Social Democrats, Sweden Democrats, Left Party, Other Parties)

```ruby
el <- election("Stockholm")
el$political_party()
```

### first_vote()
This function returns a data set,which is about the percentage of first-time voters who voted in the last election to the Riksdag in 2018 and 2022, according to a city in Sweden. (Kpi: U17410)

```ruby
el <- election("Uppsala")
el$first_vote()
```


## Installation
Install the package using the following code in R.

```ruby
devtools::install_github("Hytreueroot/732A94_Lab5", build_vignettes=TRUE)
```
For browse vignette:
```ruby
browseVignettes(package="election")
```

## Contributors
SILA KILICOGLU        **silki753**          silki573@student.liu.se <br>
SAMI FURKAN YILDIRIM  **samyi572**          samyi572@student.liu.se
