#' Fusionner deux bases de données
#'
#' cette foncion vous permet de fusionner deux bases de données.
#'
#' @param B1 Nom de la première base de données
#' @param B2 Nom de la deuxième base de données
#' @param B1_key cle d'identification de la première base de données
#' @param B2_key cle d'identification de la deuxième base de donnése
#'
#' @return Retoourne un dataframe
#'
#' @export
#'
#' @examples fusionne("data1", "data2",  B1_key= data1$ID1, B2_key= data2$ID2)

fusionne= function(B1=base1, B2=base2, B1_key=key_ID, B2_key=key_ID, all.x="T", all.y="F"){
  Base_fusion=merge(B1,B2, by.x=B1_key, by.y=B2_key, all.x=T)
  return(Base_fusion)
}

# Fonction qui détecte les valeurs manquates
value_Na= function(dt=data){
  sapply(dt, function(x) sum(is.na(x)))
}
