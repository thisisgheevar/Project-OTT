//
//  Language.swift
//  Project OTT
//
//  Created by RP-34 on 28/02/23.
//

import UIKit

class Language: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    var language = ["English","Hindi","Malayalam","Tamil","Telugu","Kannada","Korean","Spanish","English","Tamil","Hindi","English"]
    var movie = ["1","2","3","4","5","6","7","8","9","10","11","12"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return language.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let mycell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)as! Cell
        mycell.movieLanguage.image = UIImage(named: movie[indexPath.row])
        mycell.language.text = language[indexPath.row]
        mycell.movieLanguage.layer.cornerRadius = 20
        return mycell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w = collectionView.frame.size.width / 2 - 15
        return CGSize(width: w, height: 100)
        
        }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
        
    


}
