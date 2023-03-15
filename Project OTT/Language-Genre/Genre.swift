//
//  Genre.swift
//  Project OTT
//
//  Created by RP-34 on 07/03/23.
//

import UIKit

class Genre: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
  
    var genre = ["Crime","Drama","Sci-Fi","Action","Comedy","Horror","Thriller","Heist","Western"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return genre.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let mycell = collectionView.dequeueReusableCell(withReuseIdentifier: "Genre_Cell", for: indexPath)as! Genre_Cell
        mycell.Genre.text = genre[indexPath.row]
        return mycell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w = collectionView.frame.size.width / 3 - 15
        return CGSize(width: w, height: 100)
        
}
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 6
    }
      
}
