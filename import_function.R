#' Importation de base de données
#'
#' cette foncion vous permet d'importer une base de donnée.
#'
#' @param chemin le chemin d'accès de la base de données
#' @param nom_fichier le nom de la base de données
#'
#' @return la fonction retourne un dataframe qui est la base de donnés
#'
#' @export
#'
#' @examples import("C:\\Users\\user\\Desktop\\RSTUDIO2023", "data")

import<- function(chemin, nom_fichier, extention="csv", sep=";", quote="\\"){
  base=read.csv2(paste0(chemin, "\\", nom_fichier, ".csv"))
  View(base)
  return(base)
}
