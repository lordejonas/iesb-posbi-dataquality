install.packages("dplyr") #instalar a biblioteca "dplyr"
library(dplyr) #verificar se a biblioteca foi instalada
censo <- read.csv2("data/Censo.csv") #importar o arquivo csv
source("src/principal.R") #inportar as funcoes do arquivo princiapal.R
censo <- reformata_censo(censo) #formatar os campos de data que está em texto
                                #para data e salario para numero de acordo com
                                #a fucoes em 'src/principal.R'


summary(censo$DataNasc)#Exibe o formato comvertido do campo data
class(censo$DataNasc) #Exibe o tipo de dado do requerido campo

#Incluir coluna (no caso de IMC)
censo$Imc <- censo$Peso.kg / ((censo$Altura.cm/100)^2)
summary(censo$Imc)

#Excluir coluna
censo$Imc <- NULL

#'Selecs' no R
fumantes.por.sexo <- censo %>% 
  filter(Fuma == 1) %>% 
  group_by(Sexo) %>% 
  summarise(quantidade = n())

fumantes.por.sexo

head(censo)
tail(censo)

censo[1:10 , ]
censo[1:10, c(2,3)]


#gráficos
boxplot(censo$Altura.cm)
barplot(censo$Altura.cm)
hist(censo$Altura.cm , )
