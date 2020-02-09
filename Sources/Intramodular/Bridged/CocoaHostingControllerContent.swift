//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

#if os(iOS) || os(tvOS) || targetEnvironment(macCatalyst)

public struct CocoaHostingControllerContent<Content: View>: View  {
    var content: Content
    
    weak var parent: CocoaHostingController<Content>?
    
    init(content: Content) {
        self.content = content
    }
    
    public var body: some View {
        content
            .environment(\.dynamicViewPresenter, parent)
    }
}

#endif
