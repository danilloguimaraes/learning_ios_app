//
//  main.swift
//  Swift101
//
//  Created by Arthur Santos on 10/03/19.
//  Copyright © 2019 Arthur Santos. All rights reserved.
//

import Foundation

// # Hello World
print("Hello, World!")


// # Declaração de variaveis

// ## implicita
var sMensagem = "Hello, World!"
var iContador = 10
var bAtivo = true

print(sMensagem,iContador,bAtivo)

// ## explicita
var iPosicao:Int = 10;
var dMedia:Double = 7.8
var fAltura:Float = 1.86
var bLogico:Bool = true
var sLetra:String = "A"
// ## safe
var iPosicao2 = Int(dMedia)

print("A altura do atleta era de \(fAltura) metros")

// ## Variação de tipos
let ui8Bits:UInt8 = 255
let ui64Bits:UInt64 = 20000000000
let i8Bits:Int8 = 127
let i64Bits:Int64 = 200_000_000_00
// ### Maximo de cada
print(UInt8.max)
print(Int8.max)

// ## Tudo é objeto
print(5.advanced(by: 1))
print("a".uppercased())

