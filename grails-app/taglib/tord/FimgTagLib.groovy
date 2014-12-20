package tord

class FimgTagLib {
    static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
	
	def assetPath2 = { attrs, body ->
		out << body() << g.assetPath(src:attrs.src).replace("assets", "fimg/r"+"_w"+attrs.width+"_h"+attrs.height)
	 }
}
