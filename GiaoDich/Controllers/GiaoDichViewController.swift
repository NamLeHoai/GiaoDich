//
//  GiaoDichViewController.swift
//  GiaoDich
//
//  Created by Nam on 7/20/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import Stevia
class GiaoDichViewController: UIViewController {
    
    var currency = ["Số tiền", "phí giao dịch", "Thuế", "Tổng phí, thuế"]
    var value = ["50,000,000 VND", "0 VND", "0 VND", "0 VND"]
    var descripts = ["Hình thức chuyển tiền", "Ngày hiệu lực"]
    var details = ["Chuyển tiền ngày giá trị hiện tại", "Chuyen luong T03 2020", "20/04/2020"]
    
    
    let deleteButton: UIButton = {
       let button = UIButton()
        button.setTitle("Xoá", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .gray
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        
        return button
    }()
    
    let editButton: UIButton = {
       let button = UIButton()
        button.setTitle("Thay đổi", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        return button
    }()
    
    let transferTable: UITableView = {
       let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(CurrencyTableViewCell.self, forCellReuseIdentifier: "CurrencyTableViewCell")
        tableView.register(TransferTableViewCell.self, forCellReuseIdentifier: "TransferTableViewCell")
        tableView.register(InforTableViewCell.self, forCellReuseIdentifier: "InforTableViewCell")
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Chuyển tiền cùng chủ"
        let backButton = UIBarButtonItem(image: UIImage(named: "back"), style: .done, target: self, action: #selector(goBack))
        backButton.tintColor = .black
        self.navigationItem.leftBarButtonItem = backButton
        navigationController?.presentTransparentNavigationBar()
        
        addComponent()
        setupLayout()
        setupTable()
        setupButton()
    }
    
    func setupTable() {
        transferTable.delegate = self
        transferTable.dataSource = self
        
    }
    
    func addComponent() {
        [transferTable, deleteButton, editButton].forEach{ view.addSubview($0) }
    }
    
    func setupButton() {
        editButton.addTarget(self, action: #selector(onEdit), for: .touchUpInside)
    }
    
    func setupLayout() {
        transferTable.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        transferTable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        transferTable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        transferTable.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    
        deleteButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        deleteButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16).isActive = true
        deleteButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        deleteButton.widthAnchor.constraint(equalToConstant: (view.frame.width - 40) / 2).isActive = true
        
        editButton.leadingAnchor.constraint(equalTo: deleteButton.trailingAnchor, constant: 8).isActive = true
        editButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16).isActive = true
        editButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        editButton.widthAnchor.constraint(equalToConstant: (view.frame.width - 40) / 2).isActive = true
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func onEdit() {
        let editVC = EditViewController()
        navigationController?.pushViewController(editVC, animated: true)
    }
    
}

extension GiaoDichViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        } else if section == 1 {
            return 4
        } else {
            return 5
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TransferTableViewCell", for: indexPath) as! TransferTableViewCell
            cell.descriptLabel.text = descripts[indexPath.row]
            cell.detailLabel.text = details[indexPath.row]
            return cell
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CurrencyTableViewCell", for: indexPath) as! CurrencyTableViewCell
            cell.keyLabel.text = currency[indexPath.row]
            cell.valueLabel.text = value[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "InforTableViewCell", for: indexPath) as! InforTableViewCell
            return cell
        }
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "transfer"
        } else if section == 1 {
            return "currency"
        } else {
            return "info"
        }
    }
    
    
}
