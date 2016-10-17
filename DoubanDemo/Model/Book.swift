//
//	Book.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Book{

	var alt : String!
	var altTitle : String!
	var author : [String]!
	var authorIntro : String!
	var binding : String!
	var catalog : String!
	var id : String!
	var image : String!
	var images : Image!
	var isbn10 : String!
	var isbn13 : String!
	var originTitle : String!
	var pages : String!
	var price : String!
	var pubdate : String!
	var publisher : String!
	var rating : Rating!
	var series : Sery!
	var subtitle : String!
	var summary : String!
	var tags : [Tag]!
	var title : String!
	var translator : [String]!
	var url : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		alt = dictionary["alt"] as? String
		altTitle = dictionary["alt_title"] as? String
		author = dictionary["author"] as? [String]
		authorIntro = dictionary["author_intro"] as? String
		binding = dictionary["binding"] as? String
		catalog = dictionary["catalog"] as? String
		id = dictionary["id"] as? String
		image = dictionary["image"] as? String
		if let imagesData = dictionary["images"] as? NSDictionary{
				images = Image(fromDictionary: imagesData)
			}
		isbn10 = dictionary["isbn10"] as? String
		isbn13 = dictionary["isbn13"] as? String
		originTitle = dictionary["origin_title"] as? String
		pages = dictionary["pages"] as? String
		price = dictionary["price"] as? String
		pubdate = dictionary["pubdate"] as? String
		publisher = dictionary["publisher"] as? String
		if let ratingData = dictionary["rating"] as? NSDictionary{
				rating = Rating(fromDictionary: ratingData)
			}
		if let seriesData = dictionary["series"] as? NSDictionary{
				series = Sery(fromDictionary: seriesData)
			}
		subtitle = dictionary["subtitle"] as? String
		summary = dictionary["summary"] as? String
		tags = [Tag]()
		if let tagsArray = dictionary["tags"] as? [NSDictionary]{
			for dic in tagsArray{
				let value = Tag(fromDictionary: dic)
				tags.append(value)
			}
		}
		title = dictionary["title"] as? String
		translator = dictionary["translator"] as? [String]
		url = dictionary["url"] as? String
	}

	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> NSDictionary
	{
		var dictionary = NSMutableDictionary()
		if alt != nil{
			dictionary["alt"] = alt
		}
		if altTitle != nil{
			dictionary["alt_title"] = altTitle
		}
		if author != nil{
			dictionary["author"] = author
		}
		if authorIntro != nil{
			dictionary["author_intro"] = authorIntro
		}
		if binding != nil{
			dictionary["binding"] = binding
		}
		if catalog != nil{
			dictionary["catalog"] = catalog
		}
		if id != nil{
			dictionary["id"] = id
		}
		if image != nil{
			dictionary["image"] = image
		}
		if images != nil{
			dictionary["images"] = images.toDictionary()
		}
		if isbn10 != nil{
			dictionary["isbn10"] = isbn10
		}
		if isbn13 != nil{
			dictionary["isbn13"] = isbn13
		}
		if originTitle != nil{
			dictionary["origin_title"] = originTitle
		}
		if pages != nil{
			dictionary["pages"] = pages
		}
		if price != nil{
			dictionary["price"] = price
		}
		if pubdate != nil{
			dictionary["pubdate"] = pubdate
		}
		if publisher != nil{
			dictionary["publisher"] = publisher
		}
		if rating != nil{
			dictionary["rating"] = rating.toDictionary()
		}
		if series != nil{
			dictionary["series"] = series.toDictionary()
		}
		if subtitle != nil{
			dictionary["subtitle"] = subtitle
		}
		if summary != nil{
			dictionary["summary"] = summary
		}
		if tags != nil{
			var dictionaryElements = [NSDictionary]()
			for tagsElement in tags {
				dictionaryElements.append(tagsElement.toDictionary())
			}
			dictionary["tags"] = dictionaryElements
		}
		if title != nil{
			dictionary["title"] = title
		}
		if translator != nil{
			dictionary["translator"] = translator
		}
		if url != nil{
			dictionary["url"] = url
		}
		return dictionary
	}

}