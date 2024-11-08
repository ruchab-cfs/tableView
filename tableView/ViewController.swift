//
//  ViewController.swift
//  tableView
//
//  Created by apple on 04/11/24.
//

import UIKit

class ViewController: UIViewController,
    UITableViewDataSource, UITableViewDelegate {
    
    var arrdata = ["One", "Two", "Three"]
    var tblView:UITableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainscreen = UIScreen.main.bounds
        let screenwidth = mainscreen.width
        let screenheight = mainscreen.height
        tblView.frame = CGRect(x: 0, y: 0, width: screenwidth,
                                 height: screenheight)
        tblView.dataSource = self
        tblView.delegate = self
        tblView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        view.addSubview(tblView)
    }

    func tableView(_ tableView: UITableView,numberOfRowsInSection setion: Int) -> Int {
        return arrdata.count
    }
    func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = arrdata[indexPath.row]
        return cell
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }

}

