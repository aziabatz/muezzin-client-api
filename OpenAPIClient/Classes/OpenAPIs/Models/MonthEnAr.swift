//
// MonthEnAr.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MonthEnAr: Codable, JSONEncodable, Hashable {

    public var number: Int?
    /** English name of the month  */
    public var en: String?
    /** Arabic name of the month  */
    public var ar: String?

    public init(number: Int? = nil, en: String? = nil, ar: String? = nil) {
        self.number = number
        self.en = en
        self.ar = ar
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case number
        case en
        case ar
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(number, forKey: .number)
        try container.encodeIfPresent(en, forKey: .en)
        try container.encodeIfPresent(ar, forKey: .ar)
    }
}

