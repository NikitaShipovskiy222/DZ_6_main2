//
//  DitaelsScreenTableViewCell.swift
//  DZ_6_main2
//
//  Created by Nikita Shipovskiy on 14/04/2024.
//

import UIKit

final class DitaelsScreenTableViewCell: UITableViewCell {
    
    private lazy var viewPhoto: UIView = {
        $0.backgroundColor = .red
        $0.clipsToBounds = true
        return $0
    }(UIView(frame: bounds))
    
   private lazy var imageFirst: UIImageView = {
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
       $0.contentMode = .scaleAspectFill
        return $0
   }(UIImageView(frame: CGRect(x: 30, y: 40, width: viewPhoto.frame.width - 60, height: viewPhoto.bounds.height - 60)))
    
 private lazy var imageSecond: UIImageView = {
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
     $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView(frame: CGRect(x: 30, y: imageFirst.frame.maxY + 25, width: frame.width - 60, height: 210)))
    
    private lazy var imageThird: UIImageView = {
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView(frame: CGRect(x: 30, y: imageSecond.frame.maxY + 25, width: frame.width - 60, height: 210)))

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        clipsToBounds = true
    }
    
    
    func SetupImage(photos: Photos) {
        imageFirst.image = UIImage(named: "\(photos.images)")
        imageSecond.image = UIImage(named: "\(photos.images)")
        imageThird.image = UIImage(named: "\(photos.images)")
        
        
        addSubview(viewPhoto)
        viewPhoto.addSubview(imageFirst)
        viewPhoto.addSubview(imageSecond)
        viewPhoto.addSubview(imageThird)
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
