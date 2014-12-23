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
    
    def homePageSetup(){
        
    }
    
    def itemSetup(){
    
    }
    
    def pageSetup(){
    
    }
    
    def groupSetup(){
    
    }
    
    def naviSetup(){
        ["naviList":Navi.list(), "navi": null]
    }
    
    def editNavi(){
        def createNaviName = params["navi.create"]
        if(createNaviName){
            def navi = Navi.findByName(createNaviName.trim());
            if(navi){
                flash.message = "已经存在，请重试"
            }else{
                new Navi(name: createNaviName).save(flush:true);
            }
            redirect action:"naviSetup"
        }else{
            def naviId = params["navi.name"]
            if(naviId == null || naviId == "null"){
                redirect action:"naviSetup"
            }else{
                def navi = Navi.findById(naviId)
                def groups = Group.findAllByNavi(navi);
                render view: "naviSetup", model:["naviList":Navi.list(), "navi": navi?navi.id:null, "groups":groups]
            }
        }
    }
    
    def removeGroup(){
        def group = Group.get(params.id);
        group.delete(flush:true);
        redirect action:"editNavi"
    }
    
    def createGroup(){
        
    }
    
    def loadGroups(){
        render template:"createGroup"
    }
    
    def createNavi(){
        render template:"createNavi"
    }
    
    def saveNavi(){
        redirect action:"editNavi"
    }
}
