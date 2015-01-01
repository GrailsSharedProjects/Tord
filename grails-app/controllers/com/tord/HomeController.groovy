package com.tord

import grails.plugin.springsecurity.annotation.Secured

/**
 * HomeController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class HomeController {
	
	@Secured(['permitAll'])
	def index() {
		def homepagePics = Photo.where {
			tags { name == "_首页" } 
		}
		
		[hideTopMenu: true, homepagePics: homepagePics]
	}
	
}
