/* -----------------------------------------------
* UNIVERSIDAD DEL VALLE DE GUATEMALA 
* Organización de computadoras y Assembler
* Ciclo 1 - 2022
* Diego Estuardo Lemus Lopez
* Andres Estuardo Montoya Wilhelm
* Lab5.s
* 
 ----------------------------------------------- */
 .global main
 .text
 .align 2
 .type main,%function

 main: 
 
    stmfd sp!, {lr}
    ldr r0,=nlados          @@ Carga la direccion de localidad de memoria donde esta nlados al r0
    ldr r4,[r0]             @@ Carga el valor contenido en r0 a r4

    /*---------PRIMER PERIMETRO-------- */
    ldr r0,=lado1           @@ Carga la direccion de localidad de memoria donde esta lado1 al r0
    ldr r1,[r0]             @@ Carga el valor contenido en r0 a r1
    mul r1,r4               @@ Multiplica r1 y r4 guardando el resultado en r1

    /*---------SEGUNDO PERIMETRO-------- */
    ldr r0,=lado2           @@ Carga la direccion de localidad de memoria donde esta lado2 al r0
    ldr r2,[r0]             @@ Carga el valor contenido en r0 a r2
    mul r2,r4               @@ Multiplica r2 y r4 guardando el resultado en r2

    /*---------TERCER PERIMETRO-------- */
    ldr r0,=lado3           @@ Carga la direccion de localidad de memoria donde esta lado3 al r0
    ldr r3,[r0]             @@ Carga el valor contenido en r0 a r3
    mul r3,r4               @@ Multiplica r3 y r4 guardando el resultado en r3

    /*---------PRINT-------- */
    ldr r0,=formato	        @@ Carga el inicio del mensaje a imprimir
    bl printf               @@ Imprime el formato junto a los valores en el orden r1, r2, r3

    /*--------SALIDA CORRECTA------- */
    mov r0, #0
    mov r1, #0
    mov r2, #0
    mov r3, #0
	mov r4, #0

    ldmfd sp!, {lr}	
	bx lr

.data
.align 2

formato:
	.asciz "El perimetro 1 es: %d \nEl perimetro 2 es: %d \nEl perimetro 3 es: %d\n"
lado1:
	.word 5
lado2:
	.word 6
lado3:
	.word 9
nlados:
    .word 4
