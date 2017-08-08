//
//  DefaultFeedServiceProvider.swift
//  WODReader
//
//  Created by Merrick Sapsford on 07/08/2017.
//  Copyright © 2017 AMRAP Labs. All rights reserved.
//

import Foundation

internal class DefaultFeedServiceProvider: FeedServiceProvider {
    
    var serviceType: FeedService.Type = DefaultFeedService.self
}
