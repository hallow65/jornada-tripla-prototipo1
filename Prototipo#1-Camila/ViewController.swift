//
//  ViewController.swift
//  Prototipo#1-Camila
//
//  Created by Aluno on 4/5/18.
//  Copyright © 2018 Camila Simões. All rights reserved.
//  flaticon

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
  
  
 
  // numero de celulas
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return bancoDeMoradores.count
  }
  
  //
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let celulacriada : MoradorCelula = moradoresDaCasa.dequeueReusableCell(withReuseIdentifier: "fotosMoradores", for: indexPath) as! MoradorCelula
    
    celulacriada.moradorIconeButton.setBackgroundImage(bancoDeMoradores[indexPath.row].imagem, for: .normal)
    
    
    //mudanças
    
    return celulacriada
  }
  
  
  @IBOutlet weak var moradoresDaCasa: UICollectionView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.moradoresDaCasa.dataSource = self
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  
  
  
  
}

