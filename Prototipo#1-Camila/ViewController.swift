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
  
  // collection views
  @IBOutlet weak var moradoresDaCasaCollection: UICollectionView!
  @IBOutlet weak var tarefasEscolhidasCollection: UICollectionView!
  @IBOutlet weak var tarefasLivresCollection: UICollectionView!
  
  // pop-ups
  @IBOutlet weak var addMoradorPopUp: UIView!
  @IBOutlet weak var addTarefaPopUp: UIView!
  @IBOutlet weak var verTarefaPopUp: UIView!
  @IBOutlet weak var verPontosPopUp: UIView!
    
  //outlets das gambiarras
    @IBOutlet weak var fotoTarefaEscolhida: UIImageView!
    @IBOutlet weak var cameraPraEsconder: UIImageView!
    //
  
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
      
      let moradorCelula:MoradorCelula = moradoresDaCasaCollection.cellForItem(at: indexPath) as! MoradorCelula
      
      if moradorCelula.moradorIconeButton.imageView?.image == UIImage(named: "add-morador.png") {
        print("oi")
        self.addMoradorPopUp.center = self.view.center
        self.view.addSubview(self.addMoradorPopUp)
      }
    
      
    } else if collectionView == tarefasEscolhidasCollection {
      
      let escolhidaCelula:TarefasEscolhidasCell = tarefasEscolhidasCollection.cellForItem(at: indexPath) as! TarefasEscolhidasCell
      
      // popup de "fez tarefa?"
      
    } else { // então é tarefasLivresCollection
      
      let livresCelula:TarefasDaCasaCell = tarefasLivresCollection.cellForItem(at: indexPath) as! TarefasDaCasaCell
      
      if livresCelula.tarefasLivresImagem.image == UIImage(named: "add-tarefa.png") {
        print("oi")
        self.addTarefaPopUp.center = self.view.center
        self.view.addSubview(self.addTarefaPopUp)
      }
      
    
    }
    
    
    
    
  } // </func>
  
    @IBAction func addFotoTarefaButton(_ sender: Any) {
        fotoTarefaEscolhida.image = UIImage(named: "pratos.jpg")
        cameraPraEsconder.image = nil
    }
    
  //dismiss nos popups
    @IBAction func addTarefaButton(_ sender: Any) {
        addTarefaPopUp.removeFromSuperview()
      
        // append no array
        var tarefaNova = TarefaDomestica(imagem: UIImage(named: "pratos.jpg")!)
        bancoDeTarefasLivres.append(tarefaNova)
        tarefasLivresCollection.reloadData()
        fotoTarefaEscolhida.image = UIImage(named: "sem-tarefa.jpg")
      
    }
  
    
    
    
    
    
  
  
}

