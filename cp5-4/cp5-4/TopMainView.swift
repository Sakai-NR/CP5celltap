//
//  TopMainView.swift
//  cp5-4
//
//  Created by 酒井典昭 on 2019/09/14.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol TopMainViewDelegate: NSObjectProtocol{
    func selectedRow(indexPath:IndexPath)
    
}

extension TopMainViewDelegate {
    
}
// MARK: - Property
class TopMainView: BaseView {
    weak var delegate: TopMainViewDelegate? = nil
    @IBOutlet weak var tableView: UITableView!
    var labelNum : [String] = ["1","2","3","4","5","6","7"]
}

// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        tableView.dataSource = self
        tableView.delegate = self
        loadTableViewCellFromXib(tableView: tableView, cellName: "TopMainTableViewCell")
    }
}

// MARK: - Protocol
extension TopMainView:UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labelNum.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: TopMainTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TopMainTableViewCell", for: indexPath)as? TopMainTableViewCell else {return UITableViewCell() }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        delegate?.selectedRow(indexPath: indexPath)
    }
    
}

// MARK: - method
extension TopMainView {
    
}

