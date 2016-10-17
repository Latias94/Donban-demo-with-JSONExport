//
//	Tag.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Tag{

	var count : Int!
	var name : String!
	var title : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		count = dictionary["count"] as? Int
		name = dictionary["name"] as? String
		title = dictionary["title"] as? String
	}

	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> NSDictionary
	{
		var dictionary = NSMutableDictionary()
		if count != nil{
			dictionary["count"] = count
		}
		if name != nil{
			dictionary["name"] = name
		}
		if title != nil{
			dictionary["title"] = title
		}
		return dictionary
	}

}