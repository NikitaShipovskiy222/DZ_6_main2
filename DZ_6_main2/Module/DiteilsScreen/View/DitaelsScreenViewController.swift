//
//  DitaelsScreenViewController.swift
//  DZ_6_main2
//
//  Created by Nikita Shipovskiy on 14/04/2024.
//

import UIKit

final class DitaelsScreenViewController: UIViewController {
    

var item: Item?
    
   private lazy var photosItem: UITableView = {
        $0.register(DitaelsScreenTableViewCell.self, forCellReuseIdentifier: "photos")
        $0.dataSource = self
        $0.delegate = self
        $0.separatorStyle = .none
        return $0
    }(UITableView(frame: CGRect(x: 0, y: 496, width: view.frame.width, height: 900)))
    
    var mainText = ""
    lazy var mainLabel: UILabel = {
        $0.text = mainText
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        return $0
    }(UILabel(frame: CGRect(x: 85, y: 74, width: view.frame.width, height: 44)))
    
    var mainImage = ""
    lazy var mainImageView: UIImageView = {
        $0.image = UIImage(named: mainImage)
        $0.layer.cornerRadius = 30
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView(frame: CGRect(x: 30, y: 143, width: view.frame.width - 60, height: 189)))
    
    var discriptText = ""
    lazy var discriptLabel: UILabel = {
        $0.text = discriptText
        $0.textColor = .black
        $0.numberOfLines = 0
        $0.textAlignment = .center
        return $0
    }(UILabel(frame: CGRect(x: 30, y: 357, width: view.frame.width - 60, height: 97)))
    
    private lazy var photoLabel: UILabel = {
        $0.text = "Photos"
        $0.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        $0.textColor = .black
        return $0
    }(UILabel(frame: CGRect(x: 30, y: 458, width: view.frame.width - 60, height: 24)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(photosItem)
        view.addSubview(mainLabel)
        view.addSubview(mainImageView)
        view.addSubview(discriptLabel)
        view.addSubview(photoLabel)

        navigationItem.backButtonDisplayMode = .minimal
        navigationController?.navigationBar.tintColor = .black
        
    }
    
}

extension DitaelsScreenViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        item?.lilImage.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let photoCell = photosItem.dequeueReusableCell(withIdentifier: "photos", for: indexPath) as? DitaelsScreenTableViewCell else {return UITableViewCell()}
        photoCell.SetupImage(photo: item?.lilImage ?? [""])
       photoCell.selectionStyle = .none
        
        return photoCell
    }
    
    
    
}
extension DitaelsScreenViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        view.frame.width
    }
}
