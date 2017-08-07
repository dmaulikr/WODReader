//
//  WODReader.swift
//  WODReader
//
//  Created by Merrick Sapsford on 07/08/2017.
//  Copyright © 2017 AMRAP Labs. All rights reserved.
//

import Foundation

public class WODReader {
    
    // MARK: Properties
    
    let feeds: [Feed]
    
    // MARK: Init
    
    public init(feeds: [Feed]) {
        self.feeds = feeds
        prepareFeeds(feeds)
    }
    
    // MARK: Feed Management
    
    private func prepareFeeds(_ feeds: [Feed]) {
        feeds.forEach { (feed) in
            feed.responder = self
        }
    }
}

extension WODReader: FeedResponder {
    
    func feed(requiresReload feed: Feed) {
        
    }
}
