package www.ufo79.com.controller;


import java.io.File;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.UnknownHostException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import www.ufo79.com.dao.KimgDAO;
import www.ufo79.com.service.UploadReceiver;
import www.ufo79.com.vo.KimgPersonVO;

@Controller
public class KimgController {
	
	@Autowired
	KimgDAO dao;
	
	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver multipartResolver() {
	    CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(); 
	    // set any fields
	    return commonsMultipartResolver; 
	}
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "login";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpSession session) {
		session.invalidate();
		return "login";
	}
	
	@RequestMapping(value = "/loginAction", method = RequestMethod.POST)
	public String lgoinAction(Locale locale, Model model, @ModelAttribute("vo") KimgPersonVO vo, HttpSession session) throws UnknownHostException {
		
		KimgPersonVO cred = dao.selectPasswordPerson(vo);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);

		
		if(cred == null){
			System.out.println("로그인 시도 실패 : "+vo.getcPerId()+" 시각 "+formattedDate);
			model.addAttribute("errMsg", "아이디 비밀번호가 틀렸습니다.");
			return "login";
		}else{
			System.out.println("로그인 시도 성공 : "+vo.getcPerId()+" 시각 "+formattedDate);
			session.setAttribute("cPerId", cred.getcPerId());
			session.setAttribute("cred", cred);
			return "redirect:/admin/dash";
		}
	}
	
	@RequestMapping(value = "/photo", method = RequestMethod.GET)
	public String photo(Model model) {
		return "home2";
	}
	
	
	@RequestMapping(value = "/photoAction", method = RequestMethod.POST)
	public void photoInput(Model model, HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("HERE");
		UploadReceiver ur = new UploadReceiver();
		try {
			ur.doPost(req, resp);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//return "home";
	}
	
	@RequestMapping(value = "/admin/dash", method = RequestMethod.GET)
	public String adminDash(Model model, HttpSession session) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
		
		model.addAttribute("selectedMenu", "dash");
		return "admin/dash";
	}
	
	@RequestMapping(value = "/admin/profile", method = RequestMethod.GET)
	public String adminProfile(Model model, HttpSession session) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
		List<KimgPersonVO> personList = dao.selectAllPerson();

		model.addAttribute("personList", personList);
		model.addAttribute("selectedMenu", "profile");
		return "admin/profile";
	}
	
	@RequestMapping(value = "/admin/product", method = RequestMethod.GET)
	public String adminProduct(Model model, HttpSession session) {
		
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
		
		model.addAttribute("selectedMenu", "product");
		return "admin/product";
	}
	
	@RequestMapping(value = "/admin/item", method = RequestMethod.GET)
	public String adminItem(Model model, HttpSession session) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
		model.addAttribute("selectedMenu", "item");
		return "admin/item";
	}
	
	@RequestMapping(value = "/admin/issue", method = RequestMethod.GET)
	public String adminIssue(Model model, HttpSession session) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
		model.addAttribute("selectedMenu", "issue");
		return "admin/issue";
	}
	
	@RequestMapping(value = "/admin/account", method = RequestMethod.GET)
	public String adminAccount(Model model, HttpSession session) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
		model.addAttribute("selectedMenu", "account");
		return "admin/account";
	}
	
	
	private static String UPLOADED_FOLDER = "/Users/Kay/Documents/";
	 
	  private JSONObject getSuccessMessage() {
	    JSONObject jsonObject = null;
	    try {
	      jsonObject = new JSONObject("{\"success\":true}");
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
	    return jsonObject;
	  }
	  
		// implemented only for Fine Uploader
	  @RequestMapping(value = "/admin/upload/{qquuid}", method = { RequestMethod.DELETE })
	  public @ResponseBody Object uploadDelete(HttpServletRequest request, @PathVariable("qquuid") String qquuid) {
	    System.out.println("uploadDelete() called");
	    String fileName = (String) request.getSession()
	            .getAttribute(qquuid);
	    try {
	      if (fileName != null) {
	        Path path = Paths.get(UPLOADED_FOLDER + fileName);
	        Files.delete(path);
	      }
	    } catch (IOException e) {
	      e.printStackTrace();
	    }
	    return getSuccessMessage().toString();
	  }  
	  @RequestMapping(value = "/admin/upload",method = { RequestMethod.POST })
	  public @ResponseBody Object upload(
	          @RequestParam("file") MultipartFile file,
	          HttpServletRequest request) {
	    System.out.println("upload() called");
	 
	    if (file.isEmpty()) {
	      request.setAttribute("message", "Please select a file to upload");
	      return "uploadStatus";
	    }
	 
	    try {
	      // for Fine Uploader delete functionality
	      String qquuid = request.getParameter("qquuid");
	      System.out.println("qquuid=" + qquuid);
	      if (qquuid != null) {
	        request.getSession().setAttribute(qquuid, file.getOriginalFilename());
	      }
	      // for Fine Uploader delete functionality ends
	 
	      byte[] bytes = file.getBytes();
	      Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
	      Files.write(path, bytes);
	      request.setAttribute("message", "You have successfully uploaded '"
	                      + file.getOriginalFilename() + "'");
	 
	    } catch (IOException e) {
	      e.printStackTrace();
	    }
	 
	    return getSuccessMessage().toString();
	  }
}
