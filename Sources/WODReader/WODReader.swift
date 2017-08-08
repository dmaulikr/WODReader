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
    
    internal var service: FeedService!
    
    // MARK: Init
    
    public convenience init(feeds: [Feed]) {
        self.init(feeds: feeds, serviceProvider: DefaultFeedServiceProvider())
    }
    
    internal init(feeds: [Feed], serviceProvider: FeedServiceProvider) {
        self.feeds = feeds
        
        initialize(from: serviceProvider)
        prepareFeeds(feeds)
    }
    
    private func initialize(from serviceProvider: FeedServiceProvider) {
        self.service = serviceProvider.serviceType.init()
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
