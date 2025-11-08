#include <stdio.h>
#include <locale.h>
#include <string.h>

void enunciado();

int main(){
 setlocale(LC_ALL, "Portuguese");	
 char nome[50];
 int idade;
 char sexo;
 char resposta;
 
 int diagnostico=0;
 int tempo;
 
 int i=0;
 
  do{
  	 printf("Escreva o seu nome: ");
     fgets(nome,sizeof(nome),stdin);
     nome[strlen(nome)-1]='\0';
  }while(strlen(nome)==0);
  
  do{
  	printf("Escreva a sua idade: ");
    scanf("%d",&idade);
    
    if(idade<0){
    	printf("\nIdade invalida\n");
	}
  }while(idade<0);
    
  do{
  	printf("Escreva o seu genero (M/F): ");
    scanf(" %c",&sexo);
    if(sexo!='M'&&sexo!='F'){
    	printf("Opção invalida\n");
	}
  }while(sexo!='M'&&sexo!='F');
  
  system("cls");
  
 //inicio triagem
  
  do{
  	system("cls");
  	enunciado();
  	
  	printf("\nVocê teve febre?: ");
    scanf(" %c",&resposta);
  }while(resposta!='S'&&resposta!='N');
   
   if(resposta=='S'){
   	diagnostico+=1;
   } 
  
  do{
  	system("cls");
  	enunciado();
  	
  	printf("\nVocê teve tosse?: ");
    scanf(" %c",&resposta);
  }while(resposta!='S'&&resposta!='N');

  if(resposta=='S'){
   	diagnostico+=2;
   } 
  
  do{
  	system("cls");
  	enunciado();
  	
  	printf("\nVocê teve dor de garganta?: ");
    scanf(" %c",&resposta);
  }while(resposta!='S'&&resposta!='N');
  
  if(resposta=='S'){
   	diagnostico+=4;
   } 
  
  do{
  	system("cls");
  	enunciado();
  	
  	printf("\nVocê teve dor de cabeça?: ");
    scanf(" %c",&resposta);
  }while(resposta!='S'&&resposta!='N');
  
  if(resposta=='S'){
   	diagnostico+=8;
   } 
  
  do{
  	system("cls");
  	enunciado();
  	
  	printf("\nVocê teve falta de ar: ");
    scanf(" %c",&resposta);
  }while(resposta!='S'&&resposta!='N');
  
  if(resposta=='S'){
   	diagnostico+=16;
   } 
  
  do{
  	system("cls");
  	enunciado();
  	
  	printf("\nVocê teve dor de no peito?: ");
    scanf(" %c",&resposta);
  }while(resposta!='S'&&resposta!='N');
  
  if(resposta=='S'){
   	diagnostico+=32;
   } 
  
  do{
  	system("cls");
  	enunciado();
  	
  	printf("\nVocê teve nausea/vomito?: ");
    scanf(" %c",&resposta);
  }while(resposta!='S'&&resposta!='N');
  
  if(resposta=='S'){
   	diagnostico+=64;
   } 
  
  do{
  	system("cls");
  	enunciado();
  	
  	printf("\nVocê teve diarreia?: ");
    scanf(" %c",&resposta);
  }while(resposta!='S'&&resposta!='N');
  
  if(resposta=='S'){
   	diagnostico+=128;
   } 
  
  do{
  	system("cls");
  	enunciado();
  	
  	printf("\nVocê teve dor abdominal?: ");
    scanf(" %c",&resposta);
  }while(resposta!='S'&&resposta!='N');
  
  if(resposta=='S'){
   	diagnostico+=256;
   } 
  
  do{
  	system("cls");
  	enunciado();
  	
  	printf("\nVocê teve dor muscular?: ");
    scanf(" %c",&resposta);
  }while(resposta!='S'&&resposta!='N');
  
  if(resposta=='S'){
   	diagnostico+=512;
   } 
  
  do{
  	system("cls");
  	enunciado();
  	
  	printf("\nVocê teve congestão nasal?: ");
    scanf(" %c",&resposta);
  }while(resposta!='S'&&resposta!='N');
  
  if(resposta=='S'){
   	diagnostico+=1024;
   } 
  
  do{
  	system("cls");
  	enunciado();
  	
  	printf("\nVocê teve perda de olfato ou paladar?: ");
    scanf(" %c",&resposta);
  }while(resposta!='S'&&resposta!='N');
  
  if(resposta=='S'){
   	diagnostico+=2048;
   } 
  
  do{
  	system("cls");
  	enunciado();
  	
  	printf("\nVocê teve cansaço/fraqueza?: ");
    scanf(" %c",&resposta);
  }while(resposta!='S'&&resposta!='N');
  
  if(resposta=='S'){
   	diagnostico+=4096;
   } 
  
  do{
  	system("cls");
  	enunciado();
  	
  	printf("\nVocê teve tontura?: ");
    scanf(" %c",&resposta);
  }while(resposta!='S'&&resposta!='N');
  
  if(resposta=='S'){
   	diagnostico+=8192;
   } 
  
   //tempo
  do{
  	system("cls");
  	enunciado();
  	
  	printf("\nA quantos dias você esta com esses sintomas (com hoje sendo 0)? : ");
    scanf("%d",&tempo);
  }while(tempo<=0);
  
  //diagnostico
  
  system("cls");
  printf("------------------------------------------------------------------------------------------------------------------------\n                        POSSÍVEIS CONDIÇÕES E RECOMENDAÇÕES                                                                         \n");

  if(diagnostico==1543){
  	printf("\nVocê apresenta sintomas que podem ser da gripe comum, repouso, hidratação e lavamento nasal são importantes\n");
  	i++;
  }
    
  if(diagnostico==4873){
  	printf("\nVocê apresenta sintomas que podem ser da dengue, hidradação e cuidado medico são essenciais\n");
    i++;
  }
  
  if(diagnostico==1031&&tempo<7){
  	printf("\nVocê apresenta sintomas que podem ser do resfriado, remedios anti-inflamatórios e descongestionantes normalmente\nsão usados\n");
    i++;
  }
  
  if(diagnostico==3599){
  	printf("\nVocê apresenta sintomas que podem ser da covid-19, repouso e cuidado medico são essenciais\n");
    i++;
  }
  
   if(diagnostico==51){
   	printf("\nVocê apresenta sintomas que podem ser da pneumonia prucurar cuidado medico e se vacinar é recomendado\n");
    i++;
   }
  
   if(diagnostico==19&&idade<2){
   	printf("\nVocê apresenta sintomas que podem ser da bronquiolite prucurar cuidado medico é recomendado\n");
    i++;
   }
  
  if(diagnostico==449){
  	printf("\nVocê apresenta sintomas que podem ser de gastroenterite é recomendado hidratação, repouso e procurar ajuda\nmedica se os sintomas continuarem\n");
    i++;
  }
  
  if(diagnostico==12336&&tempo<2){
  	printf("\nVocê apresenta sintomas relacionados a ansiedade, considere procurar apoio psicológico\n");
    i++;
  }
  
  if(i==0){
  	printf("\nOs sintomas que você apresenta não indicam uma doença especifica buscar ir ao medico para ter um diagnostico mais preciso é recomendado\n");
  }
  
  return 0;
}

void enunciado(){
	printf("------------------------------------------------------------------------------------------------------------------------\n\n                                 INICIO DA TRIAGEM                                                                         \n\nResponda 'S' para sim ou 'N' para não nas seguintes perguntas: \n");
}
