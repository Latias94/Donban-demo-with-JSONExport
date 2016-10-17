//
//	Image.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Image{

	var large : String!
	var medium : String!
	var small : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		large = dictionary["large"] as? String
		medium = dictionary["medium"] as? String
		small = dictionary["small"] as? String
	}

	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> NSDictionary
	{
		var dictionary = NSMutableDictionary()
		if large != nil{
			dictionary["large"] = large
		}
		if medium != nil{
			dictionary["medium"] = medium
		}
		if small != nil{
			dictionary["small"] = small
		}
		return dictionary
	}

}