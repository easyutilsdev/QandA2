//
//  TabTableViewController.swift
//  Hello
//
//  Created by Abraham Park on 2021/04/14.
//

import UIKit
import Foundation

class TabTableViewController: UITableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1")!
        
        let label1 = cell.viewWithTag(1) as! UILabel
        let label2 = cell.viewWithTag(2) as! UILabel
        let label3 = cell.viewWithTag(3) as! UILabel
        let viewImage = cell.viewWithTag(4) as! UIImageView
        let btnGazua = cell.viewWithTag(5) as! UIButton
        
        label1.text = "타이틀"
        label2.text = indexPath.description
        label3.text = "추가로 보이게 한다."
        
        viewImage.image = UIImage(systemName: "scribble")
        btnGazua.setTitle((indexPath.row % 2 == 1) ? "좋아요!" : "싫어요", for: .normal)
        
        return cell
    }
}
