import com.tord.Photo
import com.tord.Tag

class BootStrap {

    def init = { servletContext ->
		
		new Tag(name:"_首页", desc: "展示在首页图片").save();
		def tag = Tag.findByName("_首页");
		for(int i = 1; i < 14; i++){
			def pt = new Photo(url: "pic/${i}.jpg", title: "展示图${i}", desc: '这是一张很美腻的展示图');
			pt.addToTags(tag);
			pt.save();
		}
		
    }
    def destroy = {
    }
}
