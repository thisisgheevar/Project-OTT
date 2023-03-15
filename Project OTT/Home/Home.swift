//
//  Home.swift
//  Project OTT
//
//  Created by RP-34 on 08/03/23.
//

import UIKit

class Home: UIViewController,UITableViewDelegate,UITableViewDataSource{
  
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mycell = tableView.dequeueReusableCell(withIdentifier: "NewRelease", for: indexPath)as! NewRelease
        //mycell.backgroundColor = .yellow
        return mycell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
        
    }

}
