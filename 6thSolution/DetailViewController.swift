//
//  DetailViewController.swift
//  6thSolution
//
//  Created by yaser on 10/27/18.
//  Copyright © 2018 Barsam. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class DetailViewController: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    
    fileprivate var viewModel = DetailViewModel() //normally injected as an interface
    fileprivate var bag = DisposeBag()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
//        tableView.register(DetailTableViewCell.self, forCellReuseIdentifier: "Cell")
        let nib = UINib.init(nibName: "DetailTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "Cell")
        
        tableView.separatorStyle = .none
        
//        tableView.rx.setDelegate(self).disposed(by: bag)
        tableView.delegate = self
        reloadTable()

    }
    
}

extension DetailViewController{
    func reloadTable(){
        viewModel.items.asObservable().bind(to: tableView.rx.items(cellIdentifier: "Cell")) { (index, item, cell: DetailTableViewCell) in
            cell.detailButton?.setTitle(item.title, for: .normal)
            
        }.disposed(by: bag)
    }
}

extension DetailViewController: UITableViewDelegate{
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.height / 20
    }
}



