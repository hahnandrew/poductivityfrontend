//
//  TasksController.swift
//  final hack
//
//  Created by Andrew Jae Hahn on 5/4/22.
//

import Foundation
import UIKit
import SwiftUI

class TasksController: UIViewController {
    
    let dBlue = UIColor(red: 2/255, green: 114/255, blue: 198/255, alpha: 100)
    let lBlue = UIColor(red: 159/255, green: 212/255, blue: 252/255, alpha: 100)
    
    let cellPadding: CGFloat = 30
    let lrPadding: CGFloat = 5
    
    var tableData: [String] = []
    
    var numberOfTasks = 0
    
    @objc func refresh() { NetworkManager.getPodTotalTasks { posts in self.numberOfTasks = posts }
    }
    
    lazy var tasksView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.register(TaskCell.self, forCellReuseIdentifier: TaskCell.id)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tasksView)
        view.backgroundColor = .white
        setupConstraints()
    }
    
//    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints(){
        //constraints for signUpField
        NSLayoutConstraint.activate([])
    }
    
//    @objc func pushViewController(){
//        navigationController?.pushViewController(??(), animated: true)
//    }
    
}

let parameters = ["totaltask": "bar"]


extension TasksController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10 //number of rows, should be get all tasks int
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TaskCell.id, for: indexPath) as! TaskCell
        let cell = tableView.dequeueReusableCell(withIdentifier: TaskCell.id, for: indexPath)
//        cell.layer.cornerRadius = 15
        return cell
    }
}

extension TasksController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {return 10}
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) -> {}
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
    {}
}

//NetworkManager.getPodTotalTasks { posts in
//    self.???
//}
