//
//  BusinessCell.swift
//  Yelp
//
//  Created by Naveen Kashyap on 1/22/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var ratingImage: UIImageView!
    @IBOutlet weak var restarauntLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var numOfRatingLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    var business: Business! {
        didSet {
            print("Preparing cell for \(business.name!)")
            thumbnailImage.setImageWith(business.imageURL!)
            ratingImage.setImageWith(business.ratingImageURL!)
            restarauntLabel.text = business.name
            addressLabel.text = business.address
            categoryLabel.text = business.categories
            numOfRatingLabel.text = "\(business.reviewCount!) Reviews"
            priceLabel.text = "$$"
            distanceLabel.text  = business.distance
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        thumbnailImage.layer.cornerRadius = 3
        thumbnailImage.clipsToBounds = true
        
        restarauntLabel.preferredMaxLayoutWidth = restarauntLabel.frame.size.width
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        restarauntLabel.preferredMaxLayoutWidth = restarauntLabel.frame.size.width
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
