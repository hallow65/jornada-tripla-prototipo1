//
//  ViewController.swift
//  Prototipo#1-Camila
//
//  Created by Aluno on 4/5/18.
//  Copyright © 2018 Camila Simões. All rights reserved.
//  flaticon

import UIKit


var banco2 : [Int] = [1]
var banco3 : [Int] = []
class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
  
  @IBOutlet weak var moradoresDaCasaCollection: UICollectionView!
  @IBOutlet weak var tarefasEscolhidasCollection: UICollectionView!
  @IBOutlet weak var tarefasLivresCollection: UICollectionView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.moradoresDaCasaCollection.dataSource = self
    self.tarefasEscolhidasCollection.dataSource = self
    self.tarefasLivresCollection.dataSource = self
    
    self.moradoresDaCasaCollection.delegate = self
    self.tarefasEscolhidasCollection.delegate = self
    self.tarefasLivresCollection.delegate = self
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  // Seta o numero de celulas pra cada collection view percorrendo o array do banco de dadods
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    if collectionView == moradoresDaCasaCollection {
      return bancoDeMoradores.count
    }
    else if collectionView == tarefasEscolhidasCollection {
      return bancoDeTarefasEscolhidas.count
    }
    else { // então é tarefasLivresCollection
      return bancoDeTarefasLivres.count
    }
  }
  
  
  // Identifica qual célula vai ser desenhada em cada posição da collection view
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if collectionView == moradoresDaCasaCollection {
      
      let celulaMorador : MoradorCelula = moradoresDaCasaCollection.dequeueReusableCell(withReuseIdentifier: "fotosMoradores", for: indexPath) as! MoradorCelula
      celulaMorador.moradorIconeButton.setBackgroundImage(bancoDeMoradores[indexPath.row].imagem, for: .normal)
      //mudanças
      
      return celulaMorador
      
    } else if collectionView == tarefasEscolhidasCollection {
      
      let celulaEscolhida:TarefasEscolhidasCell = tarefasEscolhidasCollection.dequeueReusableCell(withReuseIdentifier: "fotosAtividadesEscolhidasCell", for: indexPath) as! TarefasEscolhidasCell
      
      celulaEscolhida.tarefaEscolhidaButton.setBackgroundImage(bancoDeTarefasEscolhidas[indexPath.row].imagem, for: .normal)
      
      return celulaEscolhida
    } else { // entao é tarefasLivresCollection
      
      let celulaLivre : TarefasDaCasaCell = tarefasLivresCollection.dequeueReusableCell(withReuseIdentifier: "tarefasLivresCell", for: indexPath) as! TarefasDaCasaCell
      
      celulaLivre.tarefasLivresImagem.image = bancoDeTarefasLivres[indexPath.row].imagem
      
      return celulaLivre
      
    }
  }
  
  
  // Diz o que acontece quando cada célula do collection view for selecionada
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
    if collectionView == moradoresDaCasaCollection {
      
      let moradorCelula:MoradorCelula = moradoresDaCasaCollection.dequeueReusableCell(withReuseIdentifier: "fotosMoradores", for: indexPath) as! MoradorCelula
      
      // if moradorCelula.moradorIconeButton.ba
      
      // popup de add morador
      
    } else if collectionView == tarefasEscolhidasCollection {
      
      let escolhidaCelula:TarefasEscolhidasCell = tarefasEscolhidasCollection.dequeueReusableCell(withReuseIdentifier: "fotosAtividadesEscolhidasCell", for: indexPath) as! TarefasEscolhidasCell
      
      // popup de "fez tarefa?"
      
    } else { // então é tarefasLivresCollection
      
      let livresCelula:TarefasDaCasaCell = tarefasLivresCollection.dequeueReusableCell(withReuseIdentifier: "tarefasLivresCell", for: indexPath) as! TarefasDaCasaCell
      
      // if livresCelula.tarefasLivresImagem.image == UIImage(named: "add-tarefa.png") {
        // popup de "pegar tarefa?"
      // }
      
    
    }
    
    
    
    
  } // </func>
  
  
  
  
  
}

