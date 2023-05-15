#' Valeurs aberrantes
#'
#' cette foncion vous permet de detecter les valeurs aberrantes de la variable d'une base de données et et de les corriger.
#'
#' @param dt Nom de la base de données
#' @param var nom de la variable
#'
#' @return
#'
#' @export
#'
#' @examples Value_aber(dt= "data", var= data$var1)

# Fonction qui détecte les valeurs aberrantes
Value_aber= function(dt=data, var=variable, coef=1.5){
  boxplot(dt[[var]])
  q1 = quantile(dt[[var]], 0.25, na.rm = TRUE)
  q3 =quantile(dt[[var]], 0.75, na.rm = TRUE)
  iqr = q3 - q1
  lower <- q1 - coef *iqr
  upper <- q3 + coef **iqr
  outliers <- dt[[var]][dt[[var]] < lower | dt[[var]] > upper]
  return(outliers)
  dt[[var]][dt[[var]] < lower | dt[[var]] > upper] <- median(dt[[var]], na.rm = TRUE)
  return(dt)
}
