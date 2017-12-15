
//
//  MemoListVC.swift
//  Mymemory
//
//  Created by 정평두 on 2017. 11. 6..
//  Copyright © 2017년 moontomoon. All rights reserved.
//

import UIKit

class MemoListVC: UITableViewController{
    
    let animals = ["panda", "lion","elefant"]
    var delegate : ViewController?
    var modelList: [LocationModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viw")
        
    }
    
    // 디바이스 스크린에 뷰 컨트롤러가 나타날 때마다 호출되는 메소드
    override func viewWillAppear(_ animated: Bool) {
        // 테이블 데이터를 다시 읽어들인다. 이에 따라 행을 구성하는 로직이 다시 실행될 것이다.
        print("viewwillappear")
        self.tableView.reloadData()
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("tableView come")
        let count=self.animals.count
        print("count : ")
        print(count)
        // #warning Incomplete implementation, return the number of rows
        return count
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row=animals[indexPath.row]
       
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let row=animals[indexPath.row]
//
////        tableView.register(MemoCellTableViewCell.self, forCellReuseIdentifier: "Cell")
//        let cellIdentifier = "Cell"
//        let cell=tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MemoCellTableViewCell
//        print(cell)
//        print("mmmmmmm")
//        print(cell.subject)
//        cell.name?.text="aaa"
//        cell.subject?.text="row.title"
//        cell.contents?.text="row.contents"
//
//
//
//        return cell
        
        
        let row=animals[indexPath.row]
        let cellIdentifier = "memoCell"
        var cell=tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MemoCellTableViewCell
        
        if cell == nil {
            print("cell is nill")
            cell = MemoCellTableViewCell(style: .default, reuseIdentifier: cellIdentifier)
        }
        
        print(cell)
        print("mmmmmmm")
        
        cell.name?.text="aaa"
        cell.address?.text="haha"
        return cell
    }
    

    
   
}
