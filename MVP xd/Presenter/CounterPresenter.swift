//
//  CounterPresenter.swift
//  MVP xd
//
//  Created by Vansa Pha on 11/7/17.
//  Copyright © 2017 Vansa Pha. All rights reserved.
//

import Foundation

class CounterPresenter {
    
    private let view: CounterViewControllerDelegate
    private let model: Counter
    
    required init(view: CounterViewControllerDelegate, model: Counter) {
        self.view = view
        self.model = model
    }
    
    func onCountUp() {
        model.onUp()
        view.onCounterChange(number: model.baseCount)
    }
    
    func onCountDown() {
        model.onDown()
        view.onCounterChange(number: model.baseCount)
    }
    
    func initLabel() {
        view.onCounterChange(number: model.baseCount)
    }
}
