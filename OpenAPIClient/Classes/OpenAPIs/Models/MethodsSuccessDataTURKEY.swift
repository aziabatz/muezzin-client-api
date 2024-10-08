//
// MethodsSuccessDataTURKEY.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MethodsSuccessDataTURKEY: Codable, JSONEncodable, Hashable {

    public var id: Int?
    public var name: String?
    public var params: MethodsSuccessDataMWLParams?
    public var location: MethodsSuccessDataMWLLocation?

    public init(id: Int? = nil, name: String? = nil, params: MethodsSuccessDataMWLParams? = nil, location: MethodsSuccessDataMWLLocation? = nil) {
        self.id = id
        self.name = name
        self.params = params
        self.location = location
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case params
        case location
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(params, forKey: .params)
        try container.encodeIfPresent(location, forKey: .location)
    }
}

