//
//  TarefasDomesticasClasse.swift
//  Prototipo#1-Camila
//
//  Created by Aluno on 4/5/18.
//  Copyright © 2018 Camila Simões. All rights reserved.
//

import Foundation
import UIKit

class TarefaDomestica {
  var imagem:UIImage
  var descricao:String = ""
  var prazo:String
  var estaEscolhida:Bool = false // quando é criada
  var estaFeita:Bool = false
  var valor:Int
  var quemVaiFazer:Morador = ninguem
  var quemFez:Morador = ninguem
  
  // init com descrição
  init(imagem:UIImage, descrição:String, prazo:String, valor:Int) {
    self.imagem = imagem
    self.descricao = descrição
    self.prazo = prazo
    self.valor = valor
  }
  
  // init sem descrição
  init (imagem:UIImage, prazo:String, valor:Int) {
    self.imagem = imagem
    self.prazo = prazo
    self.valor = valor
  }
  
}



