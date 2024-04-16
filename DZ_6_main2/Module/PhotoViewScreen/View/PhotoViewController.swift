//
//  PhotoViewController.swift
//  DZ_6_main2
//
//  Created by Nikita Shipovskiy on 16/04/2024.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image = ""
    
    private lazy var imageFull: UIImageView = {
        $0.image = UIImage(named: image)
        $0.contentMode = .scaleAspectFit
        return $0
    }(UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)))

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        view.addSubview(imageFull)
    }

}
