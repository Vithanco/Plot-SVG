//
//  SVGElements.swift
//  plotSVG
//
//  Created by Klaus Kneupner on 25/03/2020.
//

import Plot


///// Add a `<aside>` HTML element within the current context.
///// - parameter nodes: The element's attributes and child elements.
//static func aside(_ nodes: Node<HTML.BodyContext>...) -> Node {
//    .element(named: "aside", nodes: nodes)
//}
//
///// Enum namespace that contains Plot's built-in `ElementDefinition` implementations.
//public extension ElementDefinitions {
//    /// Definition for the `<article>` element.
//    enum Aside: ElementDefinition { public static var wrapper = Node.aside }
//}
//
///// A container component that's rendered using the `<article>` element.
//public typealias Aside = ElementComponent<ElementDefinitions.Aside>



public extension Node where Context : SVGBaseContext {

    static func svg(_ nodes: Node<SVGStructuralElementContext>...) -> Node<SVGBaseContext>  {
        return .element(named:"svg:svg", nodes: nodes)
    }
}

public extension ElementDefinitions {
    /// Definition for the `<article>` element.
    enum SVG: ElementDefinition {
        public static var wrapper = Node.svg }
}

//public typealias Aside = ElementComponent<ElementDefinitions.Aside>

public extension Node where Context : SVGStructuralElementContext {
    /// Add a `<url>` element within the current context.
    /// - parameter nodes: The element's child elements.
    static func g(_ nodes: Node<SVGDoc.GContext>...) -> Node {
        .element(named: "svg:g", nodes: nodes)
    }
    
    static func svg(_ nodes: Node<SVGDoc.SVGContext>...) -> Node {
           .element(named: "svg:svg", nodes: nodes)
       }

    static func path(_ nodes: Node<SVGDoc.PathContext>...) -> Node {
        .element(named: "svg:path", nodes: nodes)
    }
}



