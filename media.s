#int Num1, Num2, Num3, soma;
#double media;
#Console.WriteLine("Digite um numero:");
#Num1 = int.Parse(Console.ReadLine());
#Console.WriteLine("Digite um numero:");
#Num2 = int.Parse(Console.ReadLine());
#Console.WriteLine("Digite um numero:");
#Num3 = int.Parse(Console.ReadLine());
#soma = (Num1 + Num2 + Num3);
#media = soma / 3;
#Console.WriteLine("A media é: " + media);
#Console.ReadKey();


.data
Mensagem0: .asciiz "Este programa calcula a media: \n"
Mensagem1: .asciiz "Digite um numero \n"
Mensagem2: .asciiz "Digite um numero \n"
Mensagem3: .asciiz "Digite um numero \n"
MensagemMedia: .asciiz "O valor da media: \n"
Num1: .word 1
Num2: .word 1
Num3: .word 1

.text
main: 	li $v0,4
	la $a0,Mensagem0 #Imprime a mensagem 0
	syscall
       

	li $v0,4
	la $a0,Mensagem1  #Imprime a mensagem 1
	syscall

      
	li $v0,5   #Recebe o valor que o usuário inseriu
	syscall
   	sw $v0, Num1($zero)


      	li $v0,4
     	la $a0,Mensagem2  #Imprime mensagem 2
    	syscall


  	li $v0,5  #Recebe o valor que o usuário inseriu
  	syscall
	sw $v0, Num2($zero)


   	li $v0,4	
  	la $a0,Mensagem3  #Imprime mensagem 3
   	syscall


  	li $v0,5 #Recebe o valor que o usuário inseriu
     	syscall
     	sw $v0, Num3($zero)
	

     	lw $s0,Num1($zero)  
     	lw $s1,Num2($zero)
     	lw $s2,Num3($zero)
	
	
   	li $v0,4	
  	la $a0,MensagemMedia
   	syscall
	

	add $t0, $s0, $s1  #Calculando a média
	add $t2, $t0, $s2
	addi $t3, $zero, 3
	div $a0, $t2,$t3
	
	
	li $v0,1
	syscall
	jr $ra
	


      
