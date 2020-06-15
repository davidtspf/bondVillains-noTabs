//
//  VillainConnectionViewController.swift
//  BondVillains
//
//  Created by DT on 6/14/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation
import UIKit

class VillainCollectionViewController: UICollectionViewController {
    
    // Get ahold of some villains, for the table
    // This is an array of Villain instances.
    let allVillains = Villain.allVillains
    
    // MARK: Life Cycle
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    // MARK: Collection View Data Source
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.allVillains.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath:IndexPath) {

        // Grab the DetailVC from Storyboard
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "VillainDetailViewController") as! VillainDetailViewController

        //Populate view controller with data from the selected item
        detailController.villain = allVillains[(indexPath as NSIndexPath).row]

        // Present the view controller using navigation
        navigationController!.pushViewController(detailController, animated: true)

    }
    
    
    
}
