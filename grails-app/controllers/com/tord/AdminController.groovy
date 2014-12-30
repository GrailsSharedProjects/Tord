package com.tord

class AdminController {

    def index() { }
	
	def refresh = {
		
		println "refresh!"
		
		Photo.list().each {e->
			e.delete(flush: true);	
		}
		Tag.list().each { e->
			e.delete(flush: true)
		}
			
		new Tag(name:"_首页", desc: "展示在首页图片").save(flush: true);
		def tag = Tag.findByName("_首页");
		
		println tag.id
		
		for(int i = 1; i < 14; i++){
			def pt = new Photo(url: "pic/${i}.jpg", title: "展示图${i}", desc: '这是一张很美腻的展示图');
			pt.addToTags(tag);
			pt.save(flush: true);
		}
	}
}
