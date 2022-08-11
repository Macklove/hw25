//
//  DetailViewController.swift
//  hw25
//
//  Created by  Евгений on 11.08.2022.
//

import UIKit

class DetailViewController: UIViewController {

    var card: MtgDisplayable?

    private var detailMtgView: DetailMtgCardView? {
        guard isViewLoaded else { return nil }
        return view as? DetailMtgCardView
    }
    
    override func loadView() {
        super.loadView()
        view = DetailMtgCardView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
    }
    
    private func commonInit() {
        detailMtgView?.configure(with: card)
    }

}
