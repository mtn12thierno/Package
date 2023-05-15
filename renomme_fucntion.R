#' Renommer les variables
#'
#' cette foncion vous permet de renommer les variables d'une base de données.
#'
#' @param data_name Nom de la base de données
#' @param y vecteur representatant les nouveaux noms de vos variables
#'
#' @return
#'
#' @export
#'
#' @examples renomme("data", y=c("var1","var2","var3"))

renomme = function(data_name,y=vector_name){
  colnames(data_name)[1:length(data_name)]=y
  View(data_name)
}
