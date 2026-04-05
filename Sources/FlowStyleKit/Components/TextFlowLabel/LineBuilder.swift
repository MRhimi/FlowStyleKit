//
//  LineBuilder.swift
//  FlowStyleKit
//
//  Created by MRhimi on 05/04/2026.
//

import UIKit

@resultBuilder
public struct LineBuilder {
    
    public  static func buildBlock(_ components: [LineConfig]...) -> [LineConfig] {
        components.flatMap { $0 }
    }
    
    public  static func buildExpression(_ expression: LineConfig) -> [LineConfig] {
        [expression]
    }
    
    public  static func buildExpression(_ expression: [LineConfig]) -> [LineConfig] {
        expression
    }
    
    public   static func buildOptional(_ component: [LineConfig]?) -> [LineConfig] {
        component ?? []
    }
    
    public   static func buildEither(first component: [LineConfig]) -> [LineConfig] {
        component
    }
    
    public  static func buildEither(second component: [LineConfig]) -> [LineConfig] {
        component
    }
    
    public  static func buildArray(_ components: [[LineConfig]]) -> [LineConfig] {
        components.flatMap { $0 }
    }
}

