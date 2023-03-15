//
//  Home Cell.swift
//  Project OTT
//
//  Created by RP-34 on 08/03/23.
//

import UIKit

class NewRelease: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   var newmovies = ["Uncharted","Thunivu","Chathuram","Drstrange","Varisu","Christopher"]

    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let mycell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewReleaseCollectionView", for: indexPath)as! NewReleaseCollectionView
        //mycell.backgroundColor = .yellow
        mycell.newRls.image = UIImage(named: newmovies[indexPath.row])
        mycell.newRls.layer.cornerRadius = 30
        return mycell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w = collectionView.frame.size.width / 3 - 12
        return CGSize(width: w, height: 220)
        }
    
}
