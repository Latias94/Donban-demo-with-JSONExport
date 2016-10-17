//
//	SearchBook.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct SearchBook{

	var books : [Book]!
	var count : Int!
	var start : Int!
	var total : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		books = [Book]()
		if let booksArray = dictionary["books"] as? [NSDictionary]{
			for dic in booksArray{
				let value = Book(fromDictionary: dic)
				books.append(value)
			}
		}
		count = dictionary["count"] as? Int
		start = dictionary["start"] as? Int
		total = dictionary["total"] as? Int
	}

	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> NSDictionary
	{
		var dictionary = NSMutableDictionary()
		if books != nil{
			var dictionaryElements = [NSDictionary]()
			for booksElement in books {
				dictionaryElements.append(booksElement.toDictionary())
			}
			dictionary["books"] = dictionaryElements
		}
		if count != nil{
			dictionary["count"] = count
		}
		if start != nil{
			dictionary["start"] = start
		}
		if total != nil{
			dictionary["total"] = total
		}
		return dictionary
	}

}