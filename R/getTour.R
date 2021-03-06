#' @title Extracts the best tour found from an \code{AntResult} object.
#'
#' @param x [\code{AntResult}]\cr
#'   Result object of a run of the \code{\link{runACOTSP}} function.
#' @param close [\code{logical(1)}]\cr
#'   Close the tour, i. e., append the last city to the end? Default is \code{FALSE}.
#' @param ... [any]\cr
#'    Currenly not used.
#' @return [numeric]
#'
#' @export
getTour = function(x, close = FALSE, ...) {
  tour = x$best.tour
  if (close) {
    tour = c(tour, tour[1])
  }
  return(tour)
}
