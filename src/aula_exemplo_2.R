unique(censo$Sexo) #

barplot(censo$Sexo)
barplot(censo$Sexo)

unique(censo$CodReg)

?merge

is.null(censo$Sexo)
any(is.na(censo$CPF))

censo[ is.na(censo$CPF), ]

source("src/principal.R")
censo <- reformata_censo(censo)
summary(censo$DataNasc)
class(censo$DataNasc)

length(censo$CPF)
