//
// OffsetImsak.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum OffsetImsak: Codable, JSONEncodable, Hashable {
    case typeDouble(Double)
    case typeString(String)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeDouble(let value):
            try container.encode(value)
        case .typeString(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Double.self) {
            self = .typeDouble(value)
        } else if let value = try? container.decode(String.self) {
            self = .typeString(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of OffsetImsak"))
        }
    }
}

