//
//  ViewController.swift
//  XFeed
//
//  Created by ali cihan on 19.09.2024.
//

import UIKit
import Combine

class FeedViewController: UIViewController {
   
    var mainView: UITableView!
    var viewModel = ViewModel()
    private var cancellables: Set<AnyCancellable> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        
        mainView = UITableView()
        mainView.register(FeedCell.self, forCellReuseIdentifier: FeedCell.identifier)
        mainView.dataSource = self
        mainView.delegate = self
        mainView.rowHeight = UITableView.automaticDimension
        mainView.estimatedRowHeight = 400
        view.addSubview(mainView)
        
        mainView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top)
            make.leading.equalTo(view.snp.leading)
            make.trailing.equalTo(view.snp.trailing)
            make.bottom.equalTo(view.snp.bottom)
        }
    }
    
    func bindViewModel() {
        viewModel.$tweets.receive(on: DispatchQueue.main)
            .sink { [weak self] _ in
                self?.mainView.reloadData()
            }
            .store(in: &cancellables)
    }
}

extension FeedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.tweets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FeedCell.identifier, for: indexPath) as! FeedCell
               
        let tweet = viewModel.tweets[indexPath.row]
        cell.configure(with: FeedCellViewModel(tweet: tweet))
       return cell
    }
    
    
}

