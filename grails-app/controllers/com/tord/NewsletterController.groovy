package com.tord

class NewsletterController {

    def signup() {
		println params.get("NewsletterEmail")
	}
}
