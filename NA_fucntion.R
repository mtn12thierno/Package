#' Valeurs manquantes
#'
#' cette foncion vous permet de detecter toutes les valeurs manquantes d'une base de données et et d'imputer celles de la variables choisie.
#'
#' @param dt Nom de la base de données
#' @param var nom de la variable
#'
#' @return vector et dataframe
#'
#' @export
#'
#' @examples impute_NA(dt= "data", var= data$var1)

impute_NA= function(dt=data,var=variable){
  if (is.numeric(dt[[var]])) {
    met_var <- mean(dt[[var]], na.rm = TRUE)
    dt[[var]][is.na(dt[[var]])] <- met_var
  } else {
    counts <- table(dt[[var]])
    mode_index <- which.max(counts)
    mode <- names(counts)[mode_index]
    dt[[var]][is.na(dt[[var]])] <- mode
  }
  sapply(dt, function(x) sum(is.na(x)))
  return(dt)
}
