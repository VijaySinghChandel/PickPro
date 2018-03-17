package in.pickmyclick.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.security.Principal;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import in.pickmyclick.modal.MyFileUpload;


 
/**
 * Handles requests for the application file upload requests
 */
@Controller
public class FileUploadController {

    private static final Logger logger = Logger.getLogger(FileUploadController.class);
    
    
    @InitBinder
    public void initBinder(WebDataBinder webBinder){
    	webBinder.isBindEmptyMultipartFiles();
    }
    
 
    @RequestMapping(value = "/user/fileUpload", method = RequestMethod.POST)
    public ModelAndView uploadFileHandler(@ModelAttribute("myFileUpload1") MyFileUpload myFileUpload,Principal principal,BindingResult bindingResult){
    	
    	logger.debug("inside uploadFileHandler PickName "+myFileUpload.getPickName());
    	logger.debug("inside uploadFileHandler PickSize "+myFileUpload.getPickSize());
    	logger.debug("inside uploadFileHandler PaperType "+myFileUpload.getPaperType());
    	logger.debug("inside uploadFileHandler Quantity "+myFileUpload.getQuantity());
    	logger.debug("inside uploadFileHandler Special Instraction "+myFileUpload.getSpecialInstraction());
    	logger.debug("inside uploadFileHandler PartFile "+myFileUpload.getFile());
    	
    	String isUploadedMsg = "";
    	String fileName = myFileUpload.getFile().getOriginalFilename();
    	String userProvidedFileName = null;
    	
    	String principalName = principal.getName();
    
    	    	
        if (!myFileUpload.getFile().isEmpty()) {
            try {
            	
            	String fileExtention;
            	
            	if( !((myFileUpload.getPickName().isEmpty())) ){
            		        fileExtention = fileName.substring(fileName.lastIndexOf('.'), fileName.length());
            				userProvidedFileName = myFileUpload.getPickName()+fileExtention;
                		    logger.debug("Original file Name :"+fileName+" is changed to User Provided file Name "+userProvidedFileName);
                		    fileName=userProvidedFileName;
            	}
            	
                byte[] bytes = myFileUpload.getFile().getBytes();
 
                // Creating the directory to store file
                String rootPath = System.getProperty("catalina.base");
                File dir = new File(rootPath + File.separator + "tmpFiles");
                if (!dir.exists())
                    dir.mkdirs();
 
                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + fileName);
                logger.debug("Dir Absolute Path "+serverFile);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
 
                logger.info("Server File Location="
                        + serverFile.getAbsolutePath());
 
                isUploadedMsg =  "You successfully uploaded file=" + fileName;
            } catch (Exception e) {
            	isUploadedMsg = "You failed to upload " + fileName + " => " + e.getMessage();
            }
        
        for (Object object : bindingResult.getAllErrors()) {
			if (object instanceof FieldError) {
				FieldError fieldError = (FieldError) object;

				System.out.println(fieldError.getField() + ":"
						+ fieldError.getCode());

			}

			if (object instanceof ObjectError) {
				ObjectError objectError = (ObjectError) object;
				logger.debug("objectError.getArguments() "+objectError.getArguments());
				String arg[] = objectError.getCodes();
					for(String str:arg){
						logger.debug("Error Code "+str);
					}	
				}
				
		
        
        }
        /*if there are data binding has errors it will return empty form with Error message*/
        if(bindingResult.hasErrors()){
        	logger.debug("Data Binding Error Ocurred !");
        	 return new ModelAndView("user");
        }
        
        }
        else {
        	
    		isUploadedMsg =  "You failed to upload " + fileName
                    + " because the file was empty.";
        }
        ModelMap mm= new ModelMap();
        mm.addAttribute("userName", principalName);
        return new ModelAndView("user", "isUploadedMsg", isUploadedMsg);
    }
 
    
    /**
     * Upload single file using Spring Controller
     */
   /* @RequestMapping(value = "/fileUpload", method = RequestMethod.POST)
    public ModelAndView uploadFileHandler(@RequestParam("pickName") String pickName,
    		@RequestParam("pickSize") String pickSize,
    		@RequestParam("quantity") String quantity,
    		@RequestParam("paperType") String paperType,
    		@RequestParam("specialInstraction") String specialInstraction,
            @RequestParam("file") MultipartFile file) {
    	
    	String isUploadedMsg = "";
    	String name=file.getOriginalFilename();
    	
    	logger.debug("pickName:"+pickName);
    	logger.debug("pickSize :"+pickSize);
    	logger.debug("quantity :"+quantity);
    	logger.debug("paperType :"+paperType);
    	logger.debug("specialInstractione :"+specialInstraction);
    	
    	
        if (!file.isEmpty()&&(!quantity.isEmpty())) {
            try {
                byte[] bytes = file.getBytes();
 
                // Creating the directory to store file
                String rootPath = System.getProperty("catalina.base");
                File dir = new File(rootPath + File.separator + "tmpFiles");
                if (!dir.exists())
                    dir.mkdirs();
 
                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + name);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
 
                logger.info("Server File Location="
                        + serverFile.getAbsolutePath());
 
                isUploadedMsg =  "You successfully uploaded file=" + name;
            } catch (Exception e) {
            	isUploadedMsg = "You failed to upload " + name + " => " + e.getMessage();
            }
        } else {
        	if(quantity.isEmpty()){
        	isUploadedMsg =  "You failed to upload " + name
                    + " because the Quntity was empty.";}
        	else{
        		isUploadedMsg =  "You failed to upload " + name
                        + " because the file was empty.";
        	}
        	
        }
        return new ModelAndView("user", "isUploadedMsg", isUploadedMsg);
    }
 
    */
    
    /**
     * Upload single file using Spring Controller
     */
    @RequestMapping(value = "/fileUploadIndex", method = RequestMethod.POST)
    public ModelAndView uploadFileHandlerIndex(/*@RequestParam("name") String name,*/
            @RequestParam("file") MultipartFile file) {
    	String isUploadedMsg = "";
    	String name=file.getOriginalFilename();
    	
    	logger.debug("Original File Name :"+name);
    	
        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
 
                // Creating the directory to store file
                String rootPath = System.getProperty("catalina.base");
                File dir = new File(rootPath + File.separator + "tmpFiles");
                if (!dir.exists())
                    dir.mkdirs();
 
                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + name);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
 
                logger.info("Server File Location="
                        + serverFile.getAbsolutePath());
 
                isUploadedMsg =  "You successfully uploaded file=" + name;
            } catch (Exception e) {
            	isUploadedMsg = "You failed to upload " + name + " => " + e.getMessage();
            }
        } else {
        	isUploadedMsg =  "You failed to upload " + name
                    + " because the file was empty.";
        }
        return new ModelAndView("index", "isUploadedMsg", isUploadedMsg);
    }
 
    
    /**
     * Upload multiple file using Spring Controller
     */
    @RequestMapping(value = "/uploadMultipleFile", method = RequestMethod.POST)
    public @ResponseBody
    String uploadMultipleFileHandler(@RequestParam("name") String[] names,
            @RequestParam("file") MultipartFile[] files) {
 
        if (files.length != names.length)
            return "Mandatory information missing";
 
        String message = "";
        for (int i = 0; i < files.length; i++) {
            MultipartFile file = files[i];
            String name = names[i];
            try {
                byte[] bytes = file.getBytes();
 
                // Creating the directory to store file
                String rootPath = System.getProperty("catalina.base");
                File dir = new File(rootPath + File.separator + "tmpFiles");
                if (!dir.exists())
                    dir.mkdirs();
 
                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + name);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
 
                logger.info("Server File Location="
                        + serverFile.getAbsolutePath());
 
                message = message + "You successfully uploaded file=" + name
                        + "<br />";
            } catch (Exception e) {
                return "You failed to upload " + name + " => " + e.getMessage();
            }
        }
        return message;
    }
}