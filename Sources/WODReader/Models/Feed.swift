//
//  Feed.swift
//  WODReader
//
//  Created by Merrick Sapsford on 07/08/2017.
//  Copyright © 2017 AMRAP Labs. All rights reserved.
//

import Foundation

internal protocol FeedResponder: class {
    
    func feed(requiresReload feed: Feed)
}

public class Feed {
    
     // MARK: Properties
    
    public let url: URL
    
    private(set) var items: [Item]?
    
    internal weak var responder: FeedResponder?
    
    // MARK: Init
    
    public init(url: URL) {
        self.url = url
    }
    
    // MARK: Actions
    
    public func reload() {
        responder?.feed(requiresReload: self)
    }
}
