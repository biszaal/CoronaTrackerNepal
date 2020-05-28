//
//  DistrictData.swift
//  CoronaTracker
//
//  Created by Bishal Aryal on 5/19/20.
//  Copyright © 2020 Bishal Aryal. All rights reserved.
//

import Foundation

struct NewsData: Codable, Identifiable
{
   
   let id = UUID()
   let data: [EachData]
}

struct EachData: Codable
{

    var title: String
    var summary: String
    var source: String
    var image_url: String?
    var url: String?
    
}
