//
//  MyDonationsViewController.swift
//  UIPractice
//
//  Created by Ibragim Akaev on 29/03/2021.
//

import UIKit

class MyDonationsViewController: UIViewController {

    private var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureCollectionView()
    }
    
    func configureViewController() {
        title = "Мои пожертвования"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createFlowLayout())
        view.addSubview(collectionView)
        collectionView.backgroundColor = Colors.brandBG
        collectionView.delegate         = self
        collectionView.dataSource       = self
        collectionView.register(MyDonationsCell.self, forCellWithReuseIdentifier: MyDonationsCell.reuseID)
    }
    
    private func createFlowLayout() -> UICollectionViewFlowLayout {
        let itemWidth           = view.bounds.width - 32
        let flowLayout          = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 4, right: 0)
        flowLayout.itemSize     = CGSize(width: itemWidth, height: 120)
        return flowLayout
    }
}


extension MyDonationsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: MyDonationsCell.reuseID, for: indexPath) as! MyDonationsCell
        return item
    }
}
