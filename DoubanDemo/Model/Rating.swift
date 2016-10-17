//
//	Rating.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Rating{

	var average : String!
	var max : Int!
	var min : Int!
	var numRaters : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		average = dictionary["average"] as? String
		max = dictionary["max"] as? Int
		min = dictionary["min"] as? Int
		numRaters = dictionary["numRaters"] as? Int
	}

	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> NSDictionary
	{
		var dictionary = NSMutableDictionary()
		if average != nil{
			dictionary["average"] = average
		}
		if max != nil{
			dictionary["max"] = max
		}
		if min != nil{
			dictionary["min"] = min
		}
		if numRaters != nil{
			dictionary["numRaters"] = numRaters
		}
		return dictionary
	}

}