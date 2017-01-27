
#' @export
#' 
compose <- 
function(.f, .g)
{
  f <- deparse(substitute(.f))
  g <- deparse(substitute(.g))
  h <- function(.) {}
  body(h) <- parse(text = paste0(f, "(", g, "(.))"))
  h
}


#' @export
#' 
"%.%" <- compose
