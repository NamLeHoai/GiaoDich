//
//  EditViewController.swift
//  GiaoDich
//
//  Created by Nam on 7/21/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit
import Stevia

class EditViewController: UIViewController {
    var checked: Bool = true
    let scrollView = UIScrollView()
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .grayView()
        return view
    }()
    let editButton: UIButton = {
        let button = UIButton()
        button.setTitle("Thực hiện", for: .normal)
        button.backgroundColor = .redButton()
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        return button
    }()
    
    //form view
    let formalView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let descriptLabel: UILabel = {
        let label = UILabel()
        label.text = "Hình thức chuyển tiền"
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let downButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "down"), for: .normal)
        return button
    }()
    
    let detailLabel: UILabel = {
        let label = UILabel()
        label.text = "Chuyển tiền ngày giá trị hiện tại"
        label.font = .boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //info view
    let inforView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let iconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "icon")
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Tài khoản nguồn"
        return label
    }()
    
    let seriNumber: UILabel = {
        let label = UILabel()
        label.text = "0120 0000 1081 41"
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "LTS software"
        return label
    }()
    
    let downButton1: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "down"), for: .normal)
        return button
    }()
    
    let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let balanceLabel: UILabel = {
        let label = UILabel()
        label.text = "Số dư khả dụng"
        label.font = .systemFont(ofSize: 13)
        return label
    }()
    
    let valueLabel: UILabel = {
        let label = UILabel()
        label.text = "200.000.000 VND"
        label.textAlignment = .right
        label.textColor = .red
        label.font = .boldSystemFont(ofSize: 13)
        return label
    }()
    
    //reciver view
    let reciverView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let iconImageReciver: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "icon")
        return imageView
    }()
    
    let titleLabelReciver: UILabel = {
        let label = UILabel()
        label.text = "Tài khoản nguồn"
        return label
    }()
    
    let seriNumberReciver: UILabel = {
        let label = UILabel()
        label.text = "0120 0000 1081 41"
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    let nameLabelReciver: UILabel = {
        let label = UILabel()
        label.text = "LTS software"
        return label
    }()
    
    let downButton2: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "down"), for: .normal)
        return button
    }()
    
    let separatorView2: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    //content view
    let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    let iconImageContent: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "icon")
        return imageView
    }()
    let titleLabelContent: UILabel = {
        let label = UILabel()
        label.text = "Nội dung chuyển tiền"
        
        return label
    }()
    let valueContentLabel: UILabel = {
        let label = UILabel()
        label.text = "50,000,000"
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    let currencyUnitLabel: UILabel = {
        let label = UILabel()
        label.text = "VND"
        label.textAlignment = .right
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    let reasonLabel: UILabel = {
        let label = UILabel()
        label.text = "Chuyen luong T03 2020"
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    let ratioLabel: UILabel = {
        let label = UILabel()
        label.text = "21/140"
        label.textAlignment = .right
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    let rangeTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "Ngày hiệu lực"
        label.textColor = .lightGray
        return label
    }()
    let rangeTimeLabel1: UILabel = {
        let label = UILabel()
        label.text = "20/04/2020"
        label.textAlignment = .right
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    let separatorView3: UIView = {
        let view = UIView()
        view.backgroundColor = .grayText()
        return view
    }()
    let separatorView4: UIView = {
        let view = UIView()
        view.backgroundColor = .grayText()
        return view
    }()
    let separatorView5: UIView = {
        let view = UIView()
        view.backgroundColor = .grayText()
        return view
    }()
    
    //prioritize view
    let prioritizeView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    let checkboxButton: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(named: "checkbox"), for: .normal)
        return button
    }()
    let titleLabelPriority: UILabel = {
        let label = UILabel()
        label.text = "Ưu tiên duyệt"
        return label
    }()
    
    //state view
    let stateView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    let stateLabel: UILabel = {
        let label = UILabel()
        label.text = "Trạng thái"
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    let typeStateLabel: UILabel = {
        let label = UILabel()
        label.text = "Chờ duyệt"
        label.font = .boldSystemFont(ofSize: 14)
        label.textAlignment = .right
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        setupNavigationBar()
        setupLayout()
        setupLabel()
        setupButton()
    }
    
    func setupNavigationBar() {
        title = "Sửa thông tin giao dịch"
        let backButton = UIBarButtonItem(image: UIImage(named: "back"), style: .done, target: self, action: #selector(goBack))
        backButton.tintColor = .black
        self.navigationItem.leftBarButtonItem = backButton
        let cancelButton = UIBarButtonItem(image: UIImage(named: "delete"), style: .done, target: self, action: #selector(goBack))
        cancelButton.tintColor = .black
        self.navigationItem.rightBarButtonItem = cancelButton
        navigationController?.presentTransparentNavigationBar()
        navigationController?.navigationBar.backgroundColor = .white
    }
    
    func setupLayout() {
        view.sv(scrollView, editButton)
        view.layout(
            96,
            |scrollView|,
            16,
            |-16-editButton.height(48)-16-|,
            24)
        scrollView.sv(containerView)
        scrollView.layout(
            0,
            |containerView|,
            0)
        containerView.Width == view.Width
        //        containerView.Height == view.Height*3/2
        containerView.height(900)
        containerView.sv( formalView, inforView, reciverView, contentView, prioritizeView, stateView)
        containerView.layout(
            8,
            |formalView| ~ 64,
            8,
            |inforView|,
            8,
            |reciverView|,
            8,
            |contentView|,
            8,
            |prioritizeView|,
            8,
            |stateView|
            
        )
        //formal view
        formalView.sv(descriptLabel, detailLabel, downButton)
        formalView.layout(
            8,
            |-descriptLabel-| ~ 28,
            |-detailLabel-downButton.width(20).height(20)-| ~ 28,
            8)
        
        //info view
        inforView.sv(iconImage,titleLabel, seriNumber, nameLabel, downButton1, separatorView, balanceLabel, valueLabel)
        inforView.layout(
            16,
            |-8-iconImage.width(30).height(30)-titleLabel-|,
            8,
            |-seriNumber-|,
            8,
            |-nameLabel-downButton1.width(20).height(20)-|,
            8,
            |-separatorView.height(1)-|,
            8,
            |-balanceLabel-valueLabel-|,
            16)
        
        //reciver view
        reciverView.sv(iconImageReciver, titleLabelReciver, separatorView2, seriNumberReciver, nameLabelReciver, downButton2)
        reciverView.layout(
            16,
            |-8-iconImageReciver.width(30).height(30)-titleLabelReciver-|,
            8,
            |-separatorView2.height(1)-|,
            8,
            |-seriNumberReciver-|,
            8,
            |-nameLabelReciver-downButton2.width(20).height(20)-|,
            16)
        
        //content view
        contentView.sv(iconImageContent, titleLabelContent, valueContentLabel, currencyUnitLabel, reasonLabel, ratioLabel, rangeTimeLabel, rangeTimeLabel1, separatorView3, separatorView4, separatorView5)
        contentView.layout(
            16,
            |-8-iconImageContent.width(30).height(30)-titleLabelContent-|,
            16,
            |-separatorView3.height(1)-|,
            16,
            |-valueContentLabel-currencyUnitLabel-|,
            16,
            |-separatorView4.height(1)-|,
            16,
            |-reasonLabel-ratioLabel-|,
            16,
            |-separatorView5.height(1)-|,
            16,
            |-rangeTimeLabel-rangeTimeLabel1-|,
            16)
        //prioritize view
        prioritizeView.sv(checkboxButton, titleLabelPriority)
        prioritizeView.layout(
            16,
            |-8-checkboxButton.width(30).height(30)-titleLabelPriority-|,
            16)
        
        //state view
        stateView.sv(stateLabel, typeStateLabel)
        stateView.layout(
            16,
            |-stateLabel-typeStateLabel-|,
            16)
    }
    
    func setupLabel() {
        
    }
    
    func setupButton() {
        checkboxButton.addTarget(self, action: #selector(setCheckbox), for: .touchUpInside)
    }
    
    @objc func setCheckbox() {
        if checked == true {
            checkboxButton.setImage(UIImage(named: "checkbox"), for: .normal)
            checkboxButton.backgroundColor = .clear
        } else {
            checkboxButton.backgroundColor = UIColor(red: 0.508, green: 0.835, blue: 0.0, alpha: 1.0)
            checkboxButton.setImage(nil, for: .normal)
        }
        
        checked = checked == true ? false : true
        
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
}
