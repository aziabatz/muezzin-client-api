//
// DateGregorian.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DateGregorian: Codable, JSONEncodable, Hashable {

    public var date: String?
    public var format: String?
    public var day: String?
    public var weekday: WeekdayEn?
    public var month: MonthEn?
    public var year: String?
    public var designation: DesignationEn?

    public init(date: String? = nil, format: String? = nil, day: String? = nil, weekday: WeekdayEn? = nil, month: MonthEn? = nil, year: String? = nil, designation: DesignationEn? = nil) {
        self.date = date
        self.format = format
        self.day = day
        self.weekday = weekday
        self.month = month
        self.year = year
        self.designation = designation
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case date
        case format
        case day
        case weekday
        case month
        case year
        case designation
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(date, forKey: .date)
        try container.encodeIfPresent(format, forKey: .format)
        try container.encodeIfPresent(day, forKey: .day)
        try container.encodeIfPresent(weekday, forKey: .weekday)
        try container.encodeIfPresent(month, forKey: .month)
        try container.encodeIfPresent(year, forKey: .year)
        try container.encodeIfPresent(designation, forKey: .designation)
    }
}

