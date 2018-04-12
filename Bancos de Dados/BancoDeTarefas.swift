//
//  BancoDeTarefas.swift
//  Prototipo#1-Camila
//
//  Created by Aluno on 12/04/18.
//  Copyright © 2018 Camila Simões. All rights reserved.
//

import Foundation
import UIKit

var adicioneTarefa = TarefaDomestica(imagem: UIImage(named: "add-tarefa.png")!)
var nenhuma = TarefaDomestica(imagem: UIImage(named: "sem-tarefa.png")!)

// mostrados em cada sessão
var bancoDeTarefasEscolhidas:[TarefaDomestica] = [nenhuma, nenhuma, nenhuma, nenhuma, nenhuma, nenhuma, nenhuma, nenhuma, nenhuma]
var bancoDeTarefasLivres:[TarefaDomestica] = [adicioneTarefa, nenhuma, nenhuma, nenhuma, nenhuma, nenhuma, nenhuma, nenhuma, nenhuma]


// geral
var bancoDeTarefas:[TarefaDomestica] = bancoDeTarefasEscolhidas + bancoDeTarefasLivres
