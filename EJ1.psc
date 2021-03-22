//Nombre: Jesús Huerta Aguilar
//Matricula: 202041509
//ARREGLO DE REGISTROS
Registro reg_libreria
cadena[50] codigo_libro
cadena[100] titulo
real precio
fin registro
arreglo[100] de reg_libreria lib
//DEFINIR VARIABLES
Entero i,j,x,libro,new,switch
caracter op
cadena[100] ordt,mayort,menort
cadena[50] ordc,mayorc,menorc
Real ordp,mayorp,menorp
//PRINCIPAL
inicio
libro <- 1
i <- 1
new <- 0
repita
mayorp <- 0
menorp <- 0
//MENU PRINCIPAL
escriba "SISTEMA DE ADMINISTRACION: LIBRERIA PLANISPHERE"
llamar nueva_linea
llamar nueva_linea
escriba "¿Que desea hacer?"
llamar nueva_linea
llamar nueva_linea
escriba "1- Registrar Libro"
llamar nueva_linea
escriba "2- Ordenar por precio en forma ascendente"
llamar nueva_linea
escriba "3- Ordenar por precio en forma descendente"
llamar nueva_linea
escriba "4- Buscar el libro de mayor precio"
llamar nueva_linea
escriba "5- Buscar el libro de menor precio"
llamar nueva_linea
escriba "6- SALIR"
llamar nueva_linea
llamar nueva_linea
escriba ">> "
lea x
llamar nueva_linea
caso x
1: //REGRISTRO DE LIBROS
	llamar limpiar_pantalla
	escriba "||| REGISTRO DE LIBROS |||"
	llamar nueva_linea
	llamar nueva_linea
	repita
	si new <> 0 entonces
		//Registro de otros libros
		libro <- libro + 1
		i <- libro
		escriba "Titulo del libro #",libro,": "
		lea lib[i].titulo
		escriba "Codigo: "
		lea lib[i].codigo_libro
		escriba "Precio: $"
		lea lib[i].precio
		llamar nueva_linea
		Escriba "¿Desea registrar otro libro? (S/N) >> "
		lea op
		llamar nueva_linea
	SiNo
		//Registro del primer libro
		escriba "Titulo del libro #1: "
		lea lib[1].titulo
		escriba "Codigo: "
		lea lib[1].codigo_libro
		escriba "Precio: $"
		lea lib[1].precio
		llamar nueva_linea
		Escriba "¿Desea registrar otro libro? (S/N) >> "
		lea op
		llamar nueva_linea
		new <- 1
	Fin Si
	hasta (op = 'n') o (op = 'N')
	llamar limpiar_pantalla
2: //ORDENAR ASCENDENTEMENTE
	llamar limpiar_pantalla
	Para i <- 1 Hasta libro - 1 Haga
		para j <- i + 1 hasta libro haga
			si lib[j].precio < lib[i].precio entonces
				//ORDENAR PRECIO
				ordp <- lib[i].precio
				lib[i].precio <- lib[j].precio
				lib[j].precio <- ordp
				//ORDENAR TITULO
				ordt <- lib[i].titulo
				lib[i].titulo <- lib[j].titulo
				lib[j].titulo <- ordt
				//ORDENAR CODIGO
				ordc <- lib[i].codigo_libro
				lib[i].codigo_libro <- lib[j].codigo_libro
				lib[j].codigo_libro <- ordc
			fin si
		fin para
	Fin Para
	escriba "||| ORDEN ASCENDENTE POR PRECIOS |||"
	llamar nueva_linea
	llamar nueva_linea
	para i <- 1 hasta libro haga
		Escriba "Titulo: ",lib[i].titulo
		llamar nueva_linea
		Escriba "Codigo: ",lib[i].codigo_libro
		llamar nueva_linea
		Escriba "Precio: $",lib[i].precio
		llamar nueva_linea
		llamar nueva_linea
	fin para
	Escriba "¿Desea hacer algo mas? (S/N) >> "
	lea op
	si (op = 's') o (op = 'S') entonces
		llamar limpiar_pantalla
	sino
		x <- 6
		llamar nueva_linea
	fin si                    
3: //ORDENAR DESCENDENTEMENTE
	llamar limpiar_pantalla
	Para i <- 1 Hasta libro - 1 Haga
		para j <- i + 1 hasta libro haga
			si lib[j].precio > lib[i].precio entonces
				//ORDENAR PRECIO
				ordp <- lib[i].precio
				lib[i].precio <- lib[j].precio
				lib[j].precio <- ordp
				//ORDENAR TITULO
				ordt <- lib[i].titulo
				lib[i].titulo <- lib[j].titulo
				lib[j].titulo <- ordt
				//ORDENAR CODIGO
				ordc <- lib[i].codigo_libro
				lib[i].codigo_libro <- lib[j].codigo_libro
				lib[j].codigo_libro <- ordc
			fin si
		fin para
	Fin Para
	escriba "||| ORDEN DESCENDENTE POR PRECIOS |||"
	llamar nueva_linea
	llamar nueva_linea
	para i <- 1 hasta libro haga
		Escriba "Titulo: ",lib[i].titulo
		llamar nueva_linea
		Escriba "Codigo: ",lib[i].codigo_libro
		llamar nueva_linea
		Escriba "Precio: $",lib[i].precio
		llamar nueva_linea
		llamar nueva_linea
	fin para
	Escriba "¿Desea hacer algo mas? (S/N) >> "
	lea op
	si (op = 's') o (op = 'S') entonces
		llamar limpiar_pantalla
	sino
		x <- 6
		llamar nueva_linea
	fin si
4:  //EL LIBRO MAS CARO
	llamar limpiar_pantalla
	para i <- 1 hasta libro haga
		si lib[i].precio > mayorp entonces
			mayorp <- lib[i].precio
			mayort <- lib[i].titulo
			mayorc <- lib[i].codigo_libro
		fin si
	fin para
	escriba "||| EL LIBRO MAS CARO |||"
	llamar nueva_linea
	llamar nueva_linea
	Escriba "Titulo: ",mayort
	llamar nueva_linea
	Escriba "Codigo: ",mayorc
	llamar nueva_linea
	Escriba "Precio: $",mayorp
	llamar nueva_linea
	llamar nueva_linea
	Escriba "¿Desea hacer algo mas? (S/N) >> "
	lea op
	si (op = 's') o (op = 'S') entonces
		llamar limpiar_pantalla
	sino
		x <- 6
		llamar nueva_linea
	fin si
5: //EL LIBRO MAS BARATO
	llamar limpiar_pantalla
	switch <- 0
	repita
	si switch = 0 entonces
		menorp <- lib[1].precio
		switch <- 1
	sino
		para i <- 1 hasta libro haga
			si lib[i].precio < menorp entonces
				menorp <- lib[i].precio
				menort <- lib[i].titulo
				menorc <- lib[i].codigo_libro
			fin si
		fin para
		switch <- 0
	fin si
	hasta switch = 0
	escriba "||| EL LIBRO MAS BARATO |||"
	llamar nueva_linea
	llamar nueva_linea
	Escriba "Titulo: ",menort
	llamar nueva_linea
	Escriba "Codigo: ",menorc
	llamar nueva_linea
	Escriba "Precio: $",menorp
	llamar nueva_linea
	llamar nueva_linea
	Escriba "¿Desea hacer algo mas? (S/N) >> "
	lea op
	si (op = 's') o (op = 'S') entonces
		llamar limpiar_pantalla
	sino
		x <- 6
		llamar nueva_linea
	fin si
6: //PREGUNTA DE SEGURIDAD
	escriba "¿Seguro? >> "
	lea op
	si (op = 's') o (op = 'S') entonces
		llamar nueva_linea
	sino
		x <- 1
		llamar limpiar_pantalla
	fin si
sino://ERROR AL INGRESAR UNA OPCION 
	llamar limpiar_pantalla
	escriba "[!] INGRESA UNA OPCION VALIDA [!]"
	llamar nueva_linea
	llamar nueva_linea        
fin caso
hasta x=6
escriba ">> GRACIAS POR USAR NUESTROS SERVICIOS <<"
fin