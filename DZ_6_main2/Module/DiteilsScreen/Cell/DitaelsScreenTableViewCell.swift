//
//  DitaelsScreenTableViewCell.swift
//  DZ_6_main2
//
//  Created by Nikita Shipovskiy on 14/04/2024.
//

import UIKit

final class DitaelsScreenTableViewCell: UITableViewCell {
    
    
    private lazy var viewPhoto: UIView = {
        return $0
    }(UIView(frame: bounds))
    
    private lazy var vStack: UIStackView = {
        $0.axis = .vertical
        $0.alignment = .center
        $0.spacing = 25
        $0.distribution = .fillEqually
        return $0
    }(UIStackView(frame: CGRect(x: 30, y: 44, width: viewPhoto.bounds.width - 60, height: 207)))


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        clipsToBounds = true
    }
    
    
    func SetupImage(photo: [String]) {
        
        photo.forEach{
            self.vStack.addArrangedSubview(getImage(name: $0))
        }
        
        addSubview(viewPhoto)
        addSubview(vStack)

        }
    
    
    private func getImage(name: String) -> UIImageView {
        {
            $0.image = UIImage(named: name)
            $0.contentMode = .scaleAspectFill
            $0.layer.cornerRadius = 20
            $0.clipsToBounds = true
            return $0
        }(UIImageView())
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
