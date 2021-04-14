//
//  TabTableViewController.swift
//  Hello
//
//  Created by Abraham Park on 2021/04/14.
//

import UIKit
import Foundation

class TabTableViewCell: UITableViewCell {
    @IBOutlet weak var label1 :UILabel!
    @IBOutlet weak var label2 :UILabel!
    @IBOutlet weak var label3 :UILabel!
    @IBOutlet weak var viewImage :UIImageView!
    @IBOutlet weak var btnGazua :UIButton!
}

class TabTableViewController: UITableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1") as! TabTableViewCell
                
        cell.label1.text = "타이틀"
        cell.label2.text = indexPath.description
        cell.label3.text = "추가로 보이게 한다."
        
        cell.viewImage.image = UIImage(systemName: "scribble")
        cell.btnGazua.setTitle((indexPath.row % 2 == 1) ? "좋아요!" : "싫어요", for: .normal)
        
        return cell
    }
}
