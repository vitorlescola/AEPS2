algoritmo "semnome"

var
 nome: caracter
 idade: inteiro
 sexo: caracter
 
 febre: caracter //fizemos a escolha de cada sintoma ser uma vatiavel inves de apenas uma variavel que se acrescenta quando "S" é marcado como uma somatoria pois é possível de uma pessoa ter um sintoma não comum de uma doença e para não desconsiderar isso variais variaveis foram criadas
 tosse: caracter
 dorDeGarganta: caracter
 dorDeCabeca: caracter
 faltaDeAr: caracter
 dorNoPeito: caracter
 nauseaVomito: caracter
 diarreia: caracter
 dorAbdominal: caracter
 dorMuscular: caracter
 congestaoNasal: caracter
 perdaDeOlfatoEPaladar: caracter
 cansacoFraqueza: caracter
 tontura: caracter
 
 tempo:inteiro
 
 hipertensao: caracter
 diabetes: caracter
 asma: caracter
 doencaCardiaca: caracter
 gravida: caracter
 
 i: inteiro
inicio
  i<-0

  repita
    escreva("Escreva o seu nome: ")
    leia(nome)
  ate(nome<>"")
  
  repita
    escreva("Escreva a sua idade: ")
    leia(idade)
    se(idade<0)entao
      escreval("Idade invalida")
    fimse
  ate(idade>=0)

  repita
    escreva("Escreva o seu genero (M/F): ")
    leia(sexo)
    se(sexo<>"M")e(sexo<>"F")entao
      escreval("Opção invalida")
    fimse
  ate(sexo="M")ou(sexo="F")
  
  escreval
  escreval("----------------------------------------------------------------------------------------------------------------------------------------------------------")
  escreval("                                 INICIO DA TRIAGEM                                                                         ")
  
  escreval
  escreval("Responda 'S' para sim ou 'N' para não nas seguintes perguntas: ")
  escreval
  
  repita
    escreva("Você teve febre?: ")
    leia(febre)
  ate(febre="S")ou(febre="N")
  
  repita
    escreva("Você teve tosse?: ")
    leia(tosse)
  ate(tosse="S")ou(tosse="N")
  
  repita
    escreva("Você teve dor de garganta?: ")
    leia(dorDeGarganta)
  ate(dorDeGarganta="S")ou(dorDeGarganta="N")
  
  repita
    escreva("Você teve dor de cabeça?: ")
    leia(dorDeCabeca)
  ate(dorDeCabeca="S")ou(dorDeCabeca="N")
  
  repita
    escreva("Você teve falta de ar?: ")
    leia(faltaDeAr)
  ate(faltaDeAr="S")ou(faltaDeAr="N")
  
  repita
    escreva("Você teve dor no peito?: ")
    leia(dorNoPeito)
  ate(dorNoPeito="S")ou(dorNoPeito="N")
  
  repita
    escreva("Você teve nausea/vomito?: ")
    leia(nauseaVomito)
  ate(nauseaVomito="S")ou(nauseaVomito="N")
  
  repita
    escreva("Você teve diarreia?: ")
    leia(diarreia)
  ate(diarreia="S")ou(diarreia="N")
  
  repita
    escreva("Você teve dor abdominal?: ")
    leia(dorAbdominal)
  ate(dorAbdominal="S")ou(dorAbdominal="N")
  
  repita
    escreva("Você teve dor muscular?: ")
    leia(dorMuscular)
  ate(dorMuscular="S")ou(dorMuscular="N")
  
  repita
    escreva("Você teve congestão nasal?: ")
    leia(congestaoNasal)
  ate(congestaoNasal="S")ou(congestaoNasal="N")
  
  repita
    escreva("Você teve perda de olfato ou paladar?: ")
    leia(perdaDeOlfatoEPaladar)
  ate(perdaDeOlfatoEPaladar="S")ou(perdaDeOlfatoEPaladar="N")
  
  repita
    escreva("Você teve cansaço/fraqueza?: ")
    leia(cansacoFraqueza)
  ate(cansacoFraqueza="S")ou(cansacoFraqueza="N")
  
  repita
    escreva("Você teve tontura?: ")
    leia(tontura)
  ate(tontura="S")ou(tontura="N")
  
  escreval
  escreval("----------------------------------------------------------------------------------------------------------------------------------------------------------")
  
  repita
    escreva("A quantos dias você esta com esses sintomas (com hoje sendo 0)? : ")
    leia(tempo)
  ate(tempo>=0)

  escreval
  escreval("----------------------------------------------------------------------------------------------------------------------------------------------------------")
  
  escreval
  escreval("Responda 'S' para sim ou 'N' para não nas seguintes perguntas: ")
  escreval
  
  repita
    escreva("Você tem hipertensao?: ")
    leia(hipertensao)
  ate(hipertensao="S")ou(hipertensao="N")
  
  repita
    escreva("Você tem diabetes?: ")
    leia(diabetes)
  ate(diabetes="S")ou(diabetes="N")
  
  repita
    escreva("Você tem asma ou outra doença pulmonar?: ")
    leia(asma)
  ate(asma="S")ou(asma="N")
  
  repita
    escreva("Você tem alguma doença cardiaca?: ")
    leia(doencaCardiaca)
  ate(doencaCardiaca="S")ou(doencaCardiaca="N")
  
  se(sexo="F")entao
    repita
      escreva("Você esta gravida?: ")
      leia(gravida)
    ate(gravida="S")ou(gravida="N")
  fimse
  
  limpatela()
  escreval("----------------------------------------------------------------------------------------------------------------------------------------------------------")
  escreval("                        POSSÍVEIS CONDIÇÕES E RECOMENDAÇÕES                                                                         ")
  escreval

  se(febre="S")e(dorDeGarganta="S")e(tosse="S")e(congestaoNasal="S")e(dorMuscular="S")entao  //os if estão separados pois doenças podem ter os mesmos sintomas, então por exemplo se uma doença tem 3 sintomas e outra tem os mesmos 3+1, com apenas um if else encadiado só a primeira na ordem ia aparecer
    escreval("Você apresenta sintomas que podem ser da gripe comum, repouso,")
    escreval(" hidratação e lavamento nasal são importantes")
    escreval
    i<-i+1
  fimse
  
  se(febre="S")e(dorDeCabeca="S")e(dorMuscular="S")e(cansacoFraqueza="S")e(dorAbdominal="S")entao
    escreval("Você apresenta sintomas que podem ser da dengue, hidradação e")
    escreval(" cuidado medico são essenciais")
    escreval
    i<-i+1
  fimse
  
  se(febre="S")e(congestaoNasal="S")e(tosse="S")e(dorDeGarganta="S")e(tempo<7)e(dorMuscular="N")entao
    escreval("Você apresenta sintomas que podem ser do resfriado,")
    escreval(" remedios anti-inflamatórios e descongestionantes normalmente")
    escreval(" são usados")
    escreval
    i<-i+1
  fimse
  
  se(febre="S")e(tosse="S")e(dorMuscular="S")e(congestaoNasal="S")e(dorDeCabeca="S")e(perdaDeOlfatoEPaladar="S")e(dorDeGarganta="S")entao
    escreval("Você apresenta sintomas que podem ser da covid-19, repouso e")
    escreval(" cuidado medico são essenciais")
    escreval
    i<-i+1
  fimse
  
   se(febre="S")e(tosse="S")e(faltaDeAr="S")e(dorNoPeito="S")entao
    escreval("Você apresenta sintomas que podem ser da pneumonia")
    escreval(" prucurar cuidado medico e se vacinar é recomendado")
    escreval
    i<-i+1
  fimse
  
   se(febre="S")e(tosse="S")e(faltaDeAr="S")e(idade<2)entao
    escreval("Você apresenta sintomas que podem ser da bronquiolite")
    escreval(" prucurar cuidado medico é recomendado")
    escreval
    i<-i+1
  fimse
  
  se(febre="S")e(diarreia="S")e(nauseaVomito="S")e(dorAbdominal="S")entao
    escreval("Você apresenta sintomas que podem ser de gastroenterite")
    escreval(" é recomendado hidratação, repouso e procurar ajuda")
    escreval("  medica se os sintomas continuarem")
    escreval
    i<-i+1
  fimse
  
  se(dorNoPeito="S")e(faltaDeAr="S")e(tontura="S")e(cansacoFraqueza="S")e(febre="N")e(tempo<2)entao
    escreval("Você apresenta sintomas relacionados a ansiedade")
    escreval("Considere procurar apoio psicológico")
    escreval
    i<-i+1
  fimse
  
  se(i=0)entao
    escreval("Os sintomas que você apresenta não indicam uma doença especifica")
    escreval(" buscar ir ao medico para ter um diagnostico mais preciso é recomendado")
    escreval
  fimse

  se(i>1)entao
    limpatela()
    escreval("Você apresenta sintomas que possam ser de mais de uma doença")
    escreval(" buscar ir ao medico para ter um diagnostico mais preciso é recomendado")
    escreval
  fimse
fimalgoritmo
