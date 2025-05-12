//
//  HoroscopeViewCell.swift
//  Horoscope
//
//  Created by Mañanas on 12/5/25.
//

import UIKit

class HoroscopeViewCell: UITableViewCell {
    
    @IBOutlet weak var horoscopeImageView: UIImageView!
    @IBOutlet weak var horoscopeNameLabel: UILabel!
    @IBOutlet weak var horoscopeDateLabel: UILabel!
    
    func render (horoscope: Horoscope) {
        horoscopeImageView.image = horoscope.image
        horoscopeNameLabel.text = horoscope.name
        horoscopeDateLabel.text = horoscope.dates
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
