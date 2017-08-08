//
//  FeedServiceProvider.swift
//  WODReader
//
//  Created by Merrick Sapsford on 07/08/2017.
//  Copyright © 2017 AMRAP Labs. All rights reserved.
//

import Foundation

internal protocol FeedServiceProvider {
    
    var serviceType: FeedService.Type { get }
}
