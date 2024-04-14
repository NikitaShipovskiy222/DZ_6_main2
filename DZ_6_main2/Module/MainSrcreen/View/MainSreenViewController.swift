//
//  ViewController.swift
//  DZ_6_main
//
//  Created by Nikita Shipovskiy on 14/04/2024.
//

import UIKit

final class MainScreenViewController: UIViewController {
   
    private var item = Item.mockData()

    private lazy var itemTabel: UITableView = {
        $0.register(MainScreenItemTableViewCell.self, forCellReuseIdentifier: "item")
        $0.dataSource = self
        $0.delegate = self
        $0.separatorStyle = .none
        return $0
    }(UITableView(frame: view.bounds))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(itemTabel)
        title = "List"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.backButtonDisplayMode = .minimal
        navigationController?.navigationBar.tintColor = .black
        
        
    }


}

extension MainScreenViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        item.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let itemCell = itemTabel.dequeueReusableCell(withIdentifier: "item", for: indexPath) as? MainScreenItemTableViewCell else {return UITableViewCell()}
        itemCell.SetupItem(item: item[indexPath.row])
        
        
        
        itemCell.selectionStyle = .none
        
        itemCell.complition = { [weak self] in
            
            guard let self = self else {return}
            
            let diteilsVC = DitaelsScreenViewController()
            diteilsVC.mainText = self.item[indexPath.row].name
            diteilsVC.mainImage = self.item[indexPath.row].mainImage
            diteilsVC.discriptText = self.item[indexPath.row].description
            self.navigationController?.pushViewController(diteilsVC, animated: true)
        }
        return itemCell
    }
    
    
}

extension MainScreenViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        view.frame.width + 36
    }
}
