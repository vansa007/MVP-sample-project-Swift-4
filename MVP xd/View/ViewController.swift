//
//  ViewController.swift
//  MVP xd
//
//  Created by Vansa Pha on 11/7/17.
//  Copyright © 2017 Vansa Pha. All rights reserved.
//

import UIKit

protocol CounterViewControllerDelegate: class {
    func onCounterChange(number: Int)
}

class ViewController: UIViewController {

    //connection outlet
    @IBOutlet weak var lbResult: UILabel!
    
    //visual
    var counterPresenter: CounterPresenter?
    var counter: Counter!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        counterPresenter?.initLabel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = Counter()
        counterPresenter = CounterPresenter(view: self, model: counter)
    }

    @IBAction func onDownAction(_ sender: UIButton) {
        counterPresenter?.onCountDown()
    }
    @IBAction func onUpAction(_ sender: UIButton) {
        counterPresenter?.onCountUp()
    }
}

extension ViewController: CounterViewControllerDelegate {
    func onCounterChange(number: Int) {
        lbResult.text = String(number)
    }
}

