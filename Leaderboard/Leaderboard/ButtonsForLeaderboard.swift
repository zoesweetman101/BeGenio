//
//  ButtonsForLeaderboard.swift
//  Leaderboard
//
//

import UIKit

struct ButtonsForLeaderboard{
    let primaryText: String
    let secondaryText: String
    
}
 weak var firstPlaceButton: UIButton?
 weak var secondPlaceButton: UIButton?
 weak var thirdPlaceButton: UIButton?


final class buttonsForLeaderboard :UIButton {
    private var firstPlaceButton: UILabel {
        let label = UILabel()
        label.numberOfLines = 1
        label.textColor = .black
        label.backgroundColor = .gray
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        return label
    }
    
    private var secondPlaceButton: UILabel {
        let label = UILabel()
        label.numberOfLines = 1
        label.textColor = .black
        label.backgroundColor = .gray
        label.font = .systemFont(ofSize: 40, weight: .semibold)
        return label
    }
    
    private var thirdPlaceButton: UILabel {
        let label = UILabel()
        label.numberOfLines = 1
        label.textColor = .black
        label.backgroundColor = .gray
        label.font = .systemFont(ofSize: 60, weight: .semibold)
        return label
    }
    
    override init(frame:CGRect) {
        super.init(frame: frame)
        addSubview(firstPlaceButton)
        addSubview(secondPlaceButton)
        addSubview(thirdPlaceButton)
        clipsToBounds = true
        layer.cornerRadius = 8
        layer.borderColor = UIColor.secondarySystemBackground.cgColor
        backgroundColor = .systemPurple
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(with viewModel: Any) {
        firstPlaceButton.text = "Blue Player"
        secondPlaceButton.text = "Green Player"
        thirdPlaceButton.text = "Yellow Player"
        
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        firstPlaceButton.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height/2)
        secondPlaceButton.frame = CGRect(x: 0, y: frame.size.height/2, width: frame.size.width, height: frame.size.height/2)
        thirdPlaceButton.frame = CGRect(x: 0, y: frame.size.height/3, width: frame.size.width, height: frame.size.height/3)
    }
}

