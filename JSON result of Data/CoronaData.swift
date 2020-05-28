//
//  CoronaData.swift
//  CoronaTracker
//
//  Created by Bishal Aryal on 5/17/20.
//  Copyright © 2020 Bishal Aryal. All rights reserved.
//
// Google AdMob
// App id: ca-app-pub-9776815710061950~3048069358
// Unit id: ca-app-pub-9776815710061950/7857542909

import Foundation

struct CoronaData: Codable, Identifiable
{
    
    let id = UUID()
    var tested_positive: Int
    var tested_negative: Int
    var tested_total: Int
    var tested_rdt: Int
    var recovered: Int
    var deaths: Int
    
}


