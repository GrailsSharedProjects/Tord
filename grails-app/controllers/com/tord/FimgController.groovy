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
import org.springframework.core.io.ByteArrayResource

import com.wicky.tools.ImageScaleUtil

class FimgController {
	
	def assetResourceLocator
	
    def index() { 
		print params
		def paramsPath = params.path
		def paramsWidth = params.width.toInteger()
		def paramsHeight = params.height.toInteger()
		def format = paramsPath.split("\\.")[1];
		
		// lookup thumb
		def thumbPath = "${paramsPath.split('\\.')[0]}_w${paramsWidth}_h${paramsHeight}.${format}";
		ByteArrayResource thumbRes = assetResourceLocator.findAssetForURI(thumbPath);
		
		if(thumbRes == null || !thumbRes.exists()){
			// if no thumb then create thumb
			ByteArrayResource myResource = assetResourceLocator.findAssetForURI(paramsPath)
			if(myResource != null){
				def webRootDir = servletContext.getRealPath("/");
				println webRootDir.replace("web-app", "grails-app/assets/thumbs") + thumbPath;
				def thumb = new File(webRootDir.replace("web-app", "grails-app/assets/thumbs") + thumbPath);
				new File(thumb.getParent()).mkdirs();
				
				ByteArrayInputStream instr = new ByteArrayInputStream(myResource.getByteArray());
				BufferedImage image = ImageIO.read(instr);
				BufferedImage newImg = ImageScaleUtil.resizeUsingJavaAlgo(image, paramsWidth, paramsHeight);

				ImageScaleUtil.writeJpeg(newImg, thumb, 1.0f)
			}
			
			// load the thumb again
			thumbRes = assetResourceLocator.findAssetForURI(thumbPath);
		}
		// if thumb exits then return it
		if(thumbRes != null && thumbRes.exists()){
			ByteArrayInputStream instr = new ByteArrayInputStream(thumbRes.getByteArray());
			BufferedImage image = ImageIO.read(instr);
			
			OutputStream os=response.getOutputStream(); //得到输出流
			writeOutputStream(image, os);
			os.flush();
		}
	}
	
	def width(){
		print params
		def paramsPath = params.path
		def paramsWidth = params.width.toInteger()
		def paramsHeight = paramsWidth
		def format = paramsPath.split("\\.")[1];
		
		// lookup thumb
		def thumbPath = "${paramsPath.split('\\.')[0]}_w${paramsWidth}_h${paramsHeight}.${format}";
		ByteArrayResource thumbRes = assetResourceLocator.findAssetForURI(thumbPath);
		
		if(thumbRes == null || !thumbRes.exists()){
			// if no thumb then create thumb
			ByteArrayResource myResource = assetResourceLocator.findAssetForURI(paramsPath)
			if(myResource != null){
				def webRootDir = servletContext.getRealPath("/");
				println webRootDir.replace("web-app", "grails-app/assets/thumbs") + thumbPath;
				def thumb = new File(webRootDir.replace("web-app", "grails-app/assets/thumbs") + thumbPath);
				new File(thumb.getParent()).mkdirs();
				
				ByteArrayInputStream instr = new ByteArrayInputStream(myResource.getByteArray());
				BufferedImage image = ImageIO.read(instr);
				BufferedImage newImg = ImageScaleUtil.resizeUsingJavaAlgo(image, paramsWidth, paramsHeight);

				ImageScaleUtil.writeJpeg(newImg, thumb, 1.0f)
			}
			
			// load the thumb again
			thumbRes = assetResourceLocator.findAssetForURI(thumbPath);
		}
		// if thumb exits then return it
		if(thumbRes != null && thumbRes.exists()){
			ByteArrayInputStream instr = new ByteArrayInputStream(thumbRes.getByteArray());
			BufferedImage image = ImageIO.read(instr);
			
			OutputStream os=response.getOutputStream(); //得到输出流
			writeOutputStream(image, os);
			os.flush();
		}
	}
	
	def height(){
		print params
		def paramsPath = params.path
		def paramsWidth = params.height.toInteger()
		def paramsHeight = params.height.toInteger()
		def format = paramsPath.split("\\.")[1];
		
		// lookup thumb
		def thumbPath = "${paramsPath.split('\\.')[0]}_w${paramsWidth}_h${paramsHeight}.${format}";
		ByteArrayResource thumbRes = assetResourceLocator.findAssetForURI(thumbPath);
		
		if(thumbRes == null || !thumbRes.exists()){
			// if no thumb then create thumb
			ByteArrayResource myResource = assetResourceLocator.findAssetForURI(paramsPath)
			if(myResource != null){
				def webRootDir = servletContext.getRealPath("/");
				println webRootDir.replace("web-app", "grails-app/assets/thumbs") + thumbPath;
				def thumb = new File(webRootDir.replace("web-app", "grails-app/assets/thumbs") + thumbPath);
				new File(thumb.getParent()).mkdirs();
				
				ByteArrayInputStream instr = new ByteArrayInputStream(myResource.getByteArray());
				BufferedImage image = ImageIO.read(instr);
				BufferedImage newImg = ImageScaleUtil.resizeUsingJavaAlgo(image, paramsWidth, paramsHeight);

				ImageScaleUtil.writeJpeg(newImg, thumb, 1.0f)
			}
			
			// load the thumb again
			thumbRes = assetResourceLocator.findAssetForURI(thumbPath);
		}
		// if thumb exits then return it
		if(thumbRes != null && thumbRes.exists()){
			ByteArrayInputStream instr = new ByteArrayInputStream(thumbRes.getByteArray());
			BufferedImage image = ImageIO.read(instr);
			
			OutputStream os=response.getOutputStream(); //得到输出流
			writeOutputStream(image, os);
			os.flush();
		}
	}
	
	private void writeOutputStream(BufferedImage image, OutputStream os){
		ImageWriter writer = null;
		ImageOutputStream out=ImageIO.createImageOutputStream(os);
		try {
			writer = ImageIO.getImageWritersByFormatName("jpeg").next();
			ImageWriteParam param = writer.getDefaultWriteParam();
			param.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);
			param.setCompressionQuality(1.0f);
			writer.setOutput(out);
			IIOImage iioImage = new IIOImage(image, null, null);
			writer.write(null, iioImage, param);
		} catch (IOException ex) {
			throw ex;
		} finally {
			if (writer != null) {
				writer.dispose();
			}
		}
	}
	
	def assets(){
		print params
		def paramsPath = params.path
		def paramsFormat = params.format
		redirect(uri: "/assets/"+paramsPath+"."+paramsFormat);
	}
	
}
