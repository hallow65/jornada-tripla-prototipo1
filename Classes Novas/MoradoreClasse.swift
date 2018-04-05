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
  var pontuacao:Int
  var estaGanhando:Bool = false
  
  init (imagem:UIImage, nome:String, pontuação:Int) {
    self.imagem = imagem
    self.nome = nome
    self.pontuacao = pontuação
  }
  
}


var ninguem = Morador(imagem: UIImage(named: "add-morador.png")!, nome:"Ninguem", pontuação: 0)
