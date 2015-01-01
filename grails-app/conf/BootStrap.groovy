import com.tord.Photo
import com.tord.Tag
import com.tord.auth.Role
import com.tord.auth.User
import com.tord.auth.UserRole

class BootStrap {

    def init = { servletContext ->
		
		new Tag(name:"_首页", desc: "展示在首页图片").save();
		def tag = Tag.findByName("_首页");
		for(int i = 1; i < 14; i++){
			def pt = new Photo(url: "pic/${i}.jpg", title: "展示图${i}", desc: '这是一张很美腻的展示图');
			pt.addToTags(tag);
			pt.save();
		}
		
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
  
		def testUser = new User(username: 'me', password: 'password')
		testUser.save(flush: true)
  
		UserRole.create testUser, adminRole, true
  
		assert User.count() == 1
		assert Role.count() == 2
		assert UserRole.count() == 1
		
    }
    def destroy = {
    }
}
