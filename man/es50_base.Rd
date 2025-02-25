% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/es50.R
\name{es50_base}
\alias{es50_base}
\title{Record number of records and attempt an overall es50 calculation}
\usage{
es50_base(mpa, key, records)
}
\arguments{
\item{mpa}{a single row of an mpa records table}

\item{key}{the wdpaid of the mpa}

\item{records}{an object containing obis records}
}
\value{
the same mpa row with total_records, total_phyla, total_species, es50_overall
}
\description{
Record number of records and attempt an overall es50 calculation
}
