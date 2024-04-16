//
//  DitaelsScreenTableViewCell.swift
//  DZ_6_main2
//
//  Created by Nikita Shipovskiy on 14/04/2024.
//

import UIKit

final class DitaelsScreenTableViewCell: UITableViewCell {
    
    
    private lazy var viewPhoto: UIImageView = {
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 20
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView(frame: CGRect(x: 30, y: 34, width: frame.width - 60, height: 207)))
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        clipsToBounds = true
    }
    
    
    func SetupImage(photo: String) {
        addSubview(viewPhoto)

        viewPhoto.image = UIImage(named: photo)
        

        }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
