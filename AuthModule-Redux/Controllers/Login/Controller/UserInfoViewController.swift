//
//  UserInfoViewController.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 25.05.2023.
//

import UIKit
import ReSwift

final class UserInfoViewController: BaseController {
    
    private let infoLabel: UILabel = {
        let label = UILabel()
        label.text = mainStore.state.loginState.address
        return label
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mainStore.subscribe(self) {
            $0.select {
                $0.userInfoState
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainStore.dispatch(UserInfoAction())
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        mainStore.unsubscribe(self)
    }
}

extension UserInfoViewController {
    
    override func setupViews() {
        super.setupViews()
        view.addView(infoLabel)
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
            infoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            infoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
}

extension UserInfoViewController: StoreSubscriber {
    func newState(state: UserInfoState) {
        // Do smth w/ income data from the backend/local storage
        self.infoLabel.text = state.address
    }
}

