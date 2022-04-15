//
//  CryptoTableViewCell.swift
//  CryptoTrack
//
//  Created by Gizem Turker on 14.04.2022.
//

import UIKit

struct CryptoTableViewCellModel {
    let name:String
    let symbol:String
    let price:String
}

class CryptoTableViewCell: UITableViewCell {

    static let identifier = "CryptoTableViewCell"
    
    
    //Subviews
    private let nameLabel:UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize:20, weight:.medium)
        return label
        
    }()
        
    private let symbolLabel:UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize:17, weight:.regular)
        return label
        
    }()
    
    private let priceLabel:UILabel = {
        let label = UILabel()
        label.textColor = .systemGreen
        label.font = .systemFont(ofSize:20, weight:.semibold)
        
        return label
        
    }()
        
    
    //Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(nameLabel)
        contentView.addSubview(symbolLabel)
        contentView.addSubview(priceLabel)
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    //Layout
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    // Configure
    
    func configure(with viewModels:CryptoTableViewCell) {
        
        
    }

  
    
    
}
