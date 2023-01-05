//
//  ButtonForLeaderboard.swift
//  Leaderboard
//
//  Created by Amadea Noemi Pal on 05/01/2023.
//

import UIKit

struct ButtonForLeaderboard{
    let primaryText: String
    let secondaryText: String
    
}

final class ButtonForLeaderboard :UIButton {
    private var firstPlaceButton: UILabel {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = center
        label.textColor = .black
        label.backgroundColor = .gray
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        return label
    }()
    
    override init(frame:CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(with viewModel: ButtonForLeaderboard) {
        
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}
