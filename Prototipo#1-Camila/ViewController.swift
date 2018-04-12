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
class ViewController: UIViewController, UICollectionViewDataSource {
  
  @IBOutlet weak var moradoresDaCasa: UICollectionView!
  @IBOutlet weak var moradoresDaCasa1: UICollectionView!
  @IBOutlet weak var moradoresDaCasa2: UICollectionView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.moradoresDaCasa.dataSource = self
    self.moradoresDaCasa1?.dataSource = self
    self.moradoresDaCasa2?.dataSource = self
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // Da collection view de Moradores (topo)
  // numero de celulas
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    if collectionView == moradoresDaCasa {
      return bancoDeMoradores.count
    }
    else if collectionView == moradoresDaCasa1 {
      return banco2.count
    }
    else{ // então é moradoresDaCasa2
      return banco3.count
    }
  }
  
  //
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let celulacriada : MoradorCelula = moradoresDaCasa.dequeueReusableCell(withReuseIdentifier: "fotosMoradores", for: indexPath) as! MoradorCelula
    
    celulacriada.moradorIconeButton.setBackgroundImage(bancoDeMoradores[indexPath.row].imagem, for: .normal)
    
    //mudanças
    
    return celulacriada
  }
  
  
  
  
}

