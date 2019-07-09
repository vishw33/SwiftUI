//
//  ViewListViewController.swift
//  SwiftUI_PH
//
//  Created by vishwas ng on 08/07/19.
//  Copyright © 2019 vishwas ng. All rights reserved.
//

import UIKit
import SwiftUI

class ViewListViewController: UIViewController {
    
    var ViewArray = ["Text" , "Images" , "VStack" , "HStack"]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "SwiftUI Controls"
        // Do any additional setup after loading the view.
    }
    @IBSegueAction func show(_ coder: NSCoder, sender: Any?) -> UIViewController? {
        guard let indexPath = self.tableView.indexPathForSelectedRow else {
            fatalError("IndexPath is not defined")
        }
        switch indexPath.row {
        case 0:
            return UIHostingController(coder: coder, rootView: ViewTab())
        case 1:
            return UIHostingController(coder: coder, rootView: ImgContainer())
        case 2:
            return UIHostingController(coder: coder, rootView: VStackContainer())
        case 3:
            return UIHostingController(coder: coder, rootView: HStackContainer())
        default:
            return UIHostingController(coder: coder, rootView: Text("Nothing Pushed Here"))
        }
        
    }
}


extension ViewListViewController:UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ViewArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = ViewArray[indexPath.row]
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        cell.textLabel?.textColor = UIColor.red
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
}
