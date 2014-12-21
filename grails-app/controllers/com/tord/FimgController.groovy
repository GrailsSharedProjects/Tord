package com.tord

import grails.converters.JSON

import java.awt.Graphics
import java.awt.Image
import java.awt.image.BufferedImage

import javax.imageio.IIOImage
import javax.imageio.ImageIO
import javax.imageio.ImageWriteParam
import javax.imageio.ImageWriter
import javax.imageio.stream.ImageOutputStream

import org.apache.ivy.util.FileUtil
import org.springframework.core.io.Resource

import com.wicky.tools.ImageScaleUtil

class FimgController {
	
	def assetResourceLocator
	
    def index() { 
		println params
		def paramsPath = params.path
		def paramsWidth = params.width.toInteger()
		def paramsHeight = params.height.toInteger()
		def format = paramsPath.split("\\.")[1];
		
		// lookup thumb
		def thumbPath = "${paramsPath.split('\\.')[0]}_w${paramsWidth}_h${paramsHeight}.${format}";
		Resource thumbRes = assetResourceLocator.findAssetForURI(thumbPath);
		
		if(thumbRes == null || !thumbRes.exists()){
			// if no thumb then create thumb
			Resource myResource = assetResourceLocator.findAssetForURI(paramsPath)
			if(myResource != null){
				def thumbRealPath
				
				def webRootDir = servletContext.getRealPath("/");
				def assetFolder = new File(webRootDir + "assets");
				if(assetFolder.exists() && assetFolder.isDirectory()){
					// deployed
					thumbRealPath = webRootDir + "assets/thumbs/" + thumbPath;
				}else{
					// not deployed
					thumbRealPath = webRootDir.replace("web-app", "grails-app/assets/thumbs") + thumbPath
				}
				
				println "thumbRealPath: ${thumbRealPath}";
				
				def thumb = new File(thumbRealPath);
				new File(thumb.getParent()).mkdirs();
				
				// get original image
				BufferedImage image = ImageIO.read(myResource.getInputStream());
				// scale image
				BufferedImage newImg = ImageScaleUtil.resizeUsingJavaAlgo(image, paramsWidth, paramsHeight);
				// write new image
				ImageScaleUtil.writeJpeg(newImg, thumb, 1.0f)
			}
			
			// load the thumb again
			thumbRes = assetResourceLocator.findAssetForURI(thumbPath);
		}
		// if thumb exits then return it
		if(thumbRes != null && thumbRes.exists()){
			redirect(uri: "/assets/"+thumbPath);
		}
	}
	
	def width(){
		println params
		def paramsPath = params.path
		def paramsWidth = params.width.toInteger()
		def paramsHeight = paramsWidth
		def format = paramsPath.split("\\.")[1];
		
		// lookup thumb
		def thumbPath = "${paramsPath.split('\\.')[0]}_w${paramsWidth}_h${paramsHeight}.${format}";
		Resource thumbRes = assetResourceLocator.findAssetForURI(thumbPath);
		
		if(thumbRes == null || !thumbRes.exists()){
			// if no thumb then create thumb
			Resource myResource = assetResourceLocator.findAssetForURI(paramsPath)
			if(myResource != null){
				def thumbRealPath
				
				def webRootDir = servletContext.getRealPath("/");
				def assetFolder = new File(webRootDir + "assets");
				if(assetFolder.exists() && assetFolder.isDirectory()){
					// deployed
					thumbRealPath = webRootDir + "assets/thumbs/" + thumbPath;
				}else{
					// not deployed
					thumbRealPath = webRootDir.replace("web-app", "grails-app/assets/thumbs") + thumbPath
				}
				
				println "thumbRealPath: ${thumbRealPath}";
				
				def thumb = new File(thumbRealPath);
				new File(thumb.getParent()).mkdirs();
				
				// get original image
				BufferedImage image = ImageIO.read(myResource.getInputStream());
				// scale image
				BufferedImage newImg = ImageScaleUtil.resizeUsingJavaAlgo(image, paramsWidth, paramsHeight);
				// write new image
				ImageScaleUtil.writeJpeg(newImg, thumb, 1.0f)
			}
			
			// load the thumb again
			thumbRes = assetResourceLocator.findAssetForURI(thumbPath);
		}
		// if thumb exits then return it
		if(thumbRes != null && thumbRes.exists()){
			redirect(uri: "/assets/"+thumbPath);
		}
	}
	
	def height(){
		println params
		def paramsPath = params.path
		def paramsWidth = params.height.toInteger()
		def paramsHeight = params.height.toInteger()
		def format = paramsPath.split("\\.")[1];
		
		// lookup thumb
		def thumbPath = "${paramsPath.split('\\.')[0]}_w${paramsWidth}_h${paramsHeight}.${format}";
		Resource thumbRes = assetResourceLocator.findAssetForURI(thumbPath);
		
		if(thumbRes == null || !thumbRes.exists()){
			// if no thumb then create thumb
			Resource myResource = assetResourceLocator.findAssetForURI(paramsPath)
			if(myResource != null){
				def thumbRealPath
				
				def webRootDir = servletContext.getRealPath("/");
				def assetFolder = new File(webRootDir + "assets");
				if(assetFolder.exists() && assetFolder.isDirectory()){
					// deployed
					thumbRealPath = webRootDir + "assets/thumbs/" + thumbPath;
				}else{
					// not deployed
					thumbRealPath = webRootDir.replace("web-app", "grails-app/assets/thumbs") + thumbPath
				}
				
				println "thumbRealPath: ${thumbRealPath}";
				
				def thumb = new File(thumbRealPath);
				new File(thumb.getParent()).mkdirs();
				
				// get original image
				BufferedImage image = ImageIO.read(myResource.getInputStream());
				// scale image
				BufferedImage newImg = ImageScaleUtil.resizeUsingJavaAlgo(image, paramsWidth, paramsHeight);
				// write new image
				ImageScaleUtil.writeJpeg(newImg, thumb, 1.0f)
			}
			
			// load the thumb again
			thumbRes = assetResourceLocator.findAssetForURI(thumbPath);
		}
		// if thumb exits then return it
		if(thumbRes != null && thumbRes.exists()){
			redirect(uri: "/assets/"+thumbPath);
		}
	}
	
	def assets(){
		println params
		def paramsPath = params.path
		redirect(uri: "/assets/"+paramsPath);
	}
	
}
