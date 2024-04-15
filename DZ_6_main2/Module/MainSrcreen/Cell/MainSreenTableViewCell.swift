//
//  MainScreenItemTableViewCell.swift
//  DZ_6_main
//
//  Created by Nikita Shipovskiy on 14/04/2024.
//

import UIKit

final class MainScreenItemTableViewCell: UITableViewCell {
    
    private lazy var  itemVie: UIView = {
        $0.backgroundColor = .background
        $0.layer.cornerRadius = 30
        $0.clipsToBounds = true
        $0.isUserInteractionEnabled = true
        return $0
    }(UIView(frame: CGRect(x: 30, y: 26, width: frame.width - 60, height: 370)))
    
    
    private lazy var  itemImage: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 30
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView(frame: CGRect(x: 25, y: 15, width: itemVie.bounds.width - 50, height: itemVie.bounds.height - 212)))
    
    private lazy var name: UILabel = {
        $0.font = UIFont.systemFont(ofSize: 20, weight: .black)
        $0.textColor = .white
        return $0
    }(UILabel(frame: CGRect(x: 20, y: 70, width: itemImage.frame.width, height: 24)))
    
    private lazy var descript: UILabel = {
        $0.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        $0.textColor = .white
        $0.numberOfLines = 0
        return $0
    }(UILabel(frame: CGRect(x: 20, y: name.frame.maxY + 4, width: itemImage.bounds.width - 25, height: 51)))
    
    
    private lazy var hStack: UIStackView = {
        $0.axis = .horizontal
        $0.spacing = 11
        $0.distribution = .fillEqually
        return $0
    }(UIStackView(frame: CGRect(x: 25, y: itemImage.frame.maxY + 12, width: itemVie.frame.width - 50 , height: 99)))
    
    
    var complition: (() -> Void)?
    
    private lazy var  showButton: UIButton = {
        $0.setTitle("show details", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .black
        $0.layer.cornerRadius = 25
        return $0
    }(UIButton(frame: CGRect(x: 25, y: 306, width: itemVie.bounds.width - 50, height: 49), primaryAction: showAction))
               
   lazy var showAction = UIAction { [weak self] _ in
       guard let self = self else {return}
       self.complition?()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        clipsToBounds = true
    }
    
    
    
    func SetupItem(item: Item){
        
        itemImage.image = UIImage(named: item.mainImage)

        item.lilImage.forEach{
            self.hStack.addArrangedSubview(createImage(name: $0))
        }

        
        name.text = "\(item.name)"
        descript.text = "\(item.description)"
        
        [itemImage, showButton, hStack].forEach{
            itemVie.addSubview($0)
        }
  
        itemImage.addSubview(descript)
        itemImage.addSubview(name)
        addSubview(itemVie)
    }
    
    private func createImage (name: String) -> UIImageView {
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
