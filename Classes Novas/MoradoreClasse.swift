//
//  MoradoresClasse.swift
//  Prototipo#1-Camila
//
//  Created by Aluno on 4/5/18.
//  Copyright © 2018 Camila Simões. All rights reserved.
//

import Foundation
import UIKit

class Morador {
  var imagem:UIImage
  var nome:String = ""
  var pontuacao:Int = 0
  var estaGanhando:Bool = false
  
  init (imagem:UIImage, nome:String) {
    self.imagem = imagem
    self.nome = nome
  }
  
}


var ninguem = Morador(imagem: UIImage(named: "add-morador.png")!, nome:"Ninguem")

//var penelope = Morador(
//penelope.imagem
//Morador(<#T##imagem: UIImage##UIImage#>, nome: <#T##String#>, pontuação: <#T##Int#>)

