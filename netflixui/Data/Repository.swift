//
//  Repository.swift
//  netflixui
//
//  Created by Dwi Randy Herdinanto on 26/02/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

class Repository {
    var typeList = [
        type(id: 0, name: "Ghoul", epname: "Ep - S1",image: "m1",percentage : 45),
        type(id: 1, name: "13 Reasons Why", epname: "Ep - S2",image: "m2",percentage: 90)
    ]
    
    var trendingList = ["b1","b2"]
    
    var episodes = [EpisodeType(id: 0, name: "The 'H' Word", time: "51 min", image: "d1", desc: "Matt Murdock, Jessica Jones, Luke Cage and Danny Rand investigate criminals and fight injustice, unaware their paths are about to cross."),
    EpisodeType(id: 1, name: "Mean RIght Hook", time: "44 min", image: "d2", desc: "As a new conspiracy takes shape, Matt finds old habits are hard to break, Jessica gets in over her head, Luke tracks a lead, and Danny meets his match.")]
}
