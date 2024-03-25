package com.example.basico

import java.time.LocalDate

class Basico {}


fun printOlaMundo() : Unit {
    println("Olá Mundo")
}
fun dataAtual() : LocalDate {
    return  LocalDate.now()
}

fun concaternarStringComVirgula(string1: String, string2 : String) : String {
    return "$string1, $string2"
}

fun multiplicaNumero(valor : Double, multiplicador : Int = 2) : Double {
    return valor * multiplicador
}
fun main() {

    //No Kotlin é opcional o ;
    print("Olá mundo")

    //Para saltar linhas use
    println("Ola")
    println("Mundo")

    //Tipo de variaveis
    val numero : Int = 10
    val numeroComVirgula : Double = 3.14
    val altura: Float = 1.74F
    val boleado : Boolean = false

    //Variáveis que podem sem null
    var cpf : String? = null
    var idade : Int = 0

    //modificando variáveis
    idade = idade +1
    idade++
    idade--



    /*
    Comentário em várias linhas
    Chamando uma função
     */

    printOlaMundo()

    val dataAtual = dataAtual()

    println("Data: " + dataAtual)
    println("Data atual $dataAtual")
    println("Data: \"$dataAtual\"")

    val nome = concaternarStringComVirgula("Fernnado", "Dias")
    println(nome)

    //Argumentos padrão
    val resultadoMult = multiplicaNumero(2.0)
    println(resultadoMult)

    //Argumentos nomeados e alterando a ordem dos parâmetros
    val resultadoMultNomeado = multiplicaNumero(multiplicador = 3, valor = 2.0)
    println(resultadoMultNomeado)








}
