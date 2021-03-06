package www.ufo79.com.controller;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.UnknownHostException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.annotation.Scheduled;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import www.ufo79.com.dao.KimgDAO;
import www.ufo79.com.service.UploadReceiver;
import www.ufo79.com.vo.KimgCategoryVO;
import www.ufo79.com.vo.KimgCompanyVO;
import www.ufo79.com.vo.KimgDepartmentVO;
import www.ufo79.com.vo.KimgEventVO;
import www.ufo79.com.vo.KimgItemVO;
import www.ufo79.com.vo.KimgPersonVO;
import www.ufo79.com.vo.KimgPhotoVO;
import www.ufo79.com.vo.KimgProductVO;
import www.ufo79.com.vo.KimgProgressVO;
import www.ufo79.com.vo.KimgSportVO;
import www.ufo79.com.vo.KimgTaskStatusVO;
import www.ufo79.com.vo.KimgTaskTypeVO;
import www.ufo79.com.vo.KimgTaskVO;
import www.ufo79.com.vo.KimgVenueVO;

@Controller
public class KimgController {
	//로컬//
	//private static String UPLOADED_FOLDER = "/Users/Kay/Documents/";
	//서버//
	private static String UPLOADED_FOLDER = "/home/ubuntu/KIMG/img/";
	
	@Autowired
	KimgDAO dao;
	static List<KimgCategoryVO> catList = new ArrayList<KimgCategoryVO>();
	static List<KimgEventVO> eventList = new ArrayList<KimgEventVO>();
	static List<KimgSportVO> sportList = new ArrayList<KimgSportVO>();
	static List<KimgDepartmentVO> departmentList = new ArrayList<KimgDepartmentVO>();
	static List<KimgVenueVO> venueList = new ArrayList<KimgVenueVO>();
	static List<KimgCompanyVO> companyList = new ArrayList<KimgCompanyVO>();
	static List<String> cItmMateList = new ArrayList<String>();
	static List<KimgTaskStatusVO> taskStatus = new ArrayList<KimgTaskStatusVO>();
	static List<KimgTaskTypeVO> taskType = new ArrayList<KimgTaskTypeVO>();
	static List<KimgItemVO> defItemList = new ArrayList<KimgItemVO>();
	static List<KimgProgressVO> defProgressList = new ArrayList<KimgProgressVO>();
	//드랍박스 세팅
	@Scheduled(fixedRate=1800000)
	public void initSelect(){
		catList = dao.selectAllCategory();
		eventList = dao.selectAllEvent();
		sportList = dao.selectAllSport();
		departmentList = dao.selectAllDepartment();
		venueList = dao.selectAllVenue();
		companyList = dao.selectAllCompany();
		cItmMateList = dao.selectAllcItmMate();
		taskStatus = dao.selectTaskStatus();
		taskType = dao.selectTaskType();
		defItemList = dao.selectAllItem();
		dao.insertDash();
		defProgressList = dao.selectProgress();
		System.out.println("init setting done.");
	}

	
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
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT, locale);
		String formattedDate = dateFormat.format(date);

		
		if(cred == null){
			System.out.println("로그인 시도 실패 : "+vo.getcPerId()+" 시각 "+formattedDate);
			model.addAttribute("errMsg", "아이디 비밀번호가 틀렸습니다.");
			return "login";
		}else{
			System.out.println("로그인 시도 성공 : "+vo.getcPerId()+" 시각 "+formattedDate);
			session.setAttribute("cPerId", cred.getcPerId());
			session.setAttribute("cPerCom", cred.getcPerCom());
			session.setAttribute("cred", cred);
			return "redirect:/admin/dash";
		}
	}
	
	@RequestMapping(value = "/photo", method = RequestMethod.GET)
	public String photo(Model model) {
		return "home2";
	}
	
	//안쓸꺼 같음
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
	
	@RequestMapping(value = "/admin/dash", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminDash(Model model, HttpSession session, @RequestParam(value = "srcPar", required=false) String srcPar) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		KimgTaskVO srcVo = new KimgTaskVO();
		srcVo.setcTskNote(srcPar);
		srcVo.setcTskStatus("TRQ");
		List<KimgTaskVO> issueList = dao.selectIssueSrcPar(srcVo);
		List<KimgTaskVO> taskList = dao.selectAllTask();
		
		//퍼미션 관련
		String cPerCom = session.getAttribute("cPerCom").toString();
		if(!cPerCom.equals("adm")){
			List<KimgTaskVO> issueListTemp = new ArrayList<KimgTaskVO>();
			for(KimgTaskVO ele : issueList){
				if(ele.getcTskComp().equals(cPerCom)){
					issueListTemp.add(ele);
				}
			}
			issueList = issueListTemp;
			
			try{
			List<KimgTaskVO> taskListTemp = new ArrayList<KimgTaskVO>();
			for(KimgTaskVO ele : taskList){
				if(ele.getcTskComp().equals(cPerCom)){
					if(!ele.getcTtpType().equals("INC")){
						if(!ele.getcTskStatus().equals("CNF")){
							taskListTemp.add(ele);
						}
					}
				}
			}
			model.addAttribute("taskList", taskListTemp);
			}catch(Exception e){
				System.out.println("테스크 없음");
			}
			//issueList = taskListTemp;
			
			
		}else{
			
			List<KimgTaskVO> taskListTemp = new ArrayList<KimgTaskVO>();
			try{
				for(KimgTaskVO ele : taskList){
						if(!ele.getcTtpType().equals("INC")){
							if(ele.getcTskStatus().equals("ERQ")){
								taskListTemp.add(ele);
							}
						}
				}
					
			}catch(NullPointerException e){
				System.out.println("Null pointer in taskList");
			}
			model.addAttribute("taskList", taskListTemp);
		}
		
		model.addAttribute("issueList", issueList);
		model.addAttribute("srcPar", srcPar);
		model.addAttribute("dashInfo", dao.selectLateDash());
		model.addAttribute("defProgressList", defProgressList);
		model.addAttribute("selectedMenu", "dash");
		return "admin/dash";
	}
	
	@RequestMapping(value = "/admin/profile", method = RequestMethod.GET)
	public String adminProfile(Model model, HttpSession session, @RequestParam(value = "srcPar", required=false) String srcPar ) throws UnsupportedEncodingException {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
			
		List<KimgPersonVO> personList;
		//List<KimgCompanyVO> companyList = dao.selectAllCompany();
		
		if(srcPar == null){
			personList = dao.selectAllPerson();
		}else{
//			personList = dao.selectAllPersonSrc(new String(srcPar.getBytes("8859_1"), "utf-8"));
			personList = dao.selectAllPersonSrc(srcPar);
		}
		
		model.addAttribute("companyList", companyList);
		model.addAttribute("personList", personList);
		model.addAttribute("selectedMenu", "profile");
		return "admin/profile";
	}
	
	
	@RequestMapping(value = "/admin/product", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminProduct(Model model, HttpSession session, @ModelAttribute("srcPar")KimgProductVO srcPar) {
		
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
		List<KimgProductVO> productList = dao.selectAllProductSrcPar(srcPar);
		//List<KimgCategoryVO> catList = dao.selectAllCategory();
		
		model.addAttribute("srcPar", srcPar);	
		
		model.addAttribute("productList", productList);
		model.addAttribute("catList", catList);
		model.addAttribute("selectedMenu", "product");
		return "admin/product";
	}
	
	@RequestMapping(value = "/admin/item", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminItem(Model model, HttpSession session, @ModelAttribute("srcPar")KimgItemVO srcPar
			) throws UnsupportedEncodingException {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
		if(srcPar.getnItmPage() == 0){
			srcPar.setnItmPage(1);
		}
		
		List<KimgItemVO> itemList = new ArrayList<KimgItemVO>();
		itemList = dao.selectAllItemSrcPar(srcPar);
		
		
		//퍼미션 관련
		String cPerCom = session.getAttribute("cPerCom").toString();
		if(cPerCom.equals("adm")){
			model.addAttribute("companyList", companyList);
			int itemcnt =dao.selectAllItemSrcParCnt(srcPar);
			model.addAttribute("itemcnt", itemcnt);
			model.addAttribute("venueList", venueList);
			
		}else if(cPerCom.equals("POC")){
			System.out.println("POCOG");
			model.addAttribute("companyList", companyList);
			int itemcnt =dao.selectAllItemSrcParCnt(srcPar);
			model.addAttribute("itemcnt", itemcnt);
			model.addAttribute("venueList", venueList);
			
		}else{
			List<KimgItemVO> itemListTemp = new ArrayList<KimgItemVO>();
			for(KimgItemVO ele : itemList){
				if(ele.getcItmCom().equals(cPerCom)){
					itemListTemp.add(ele);
				}
			}
			itemList = itemListTemp;
			List<KimgCompanyVO> companyListTemp = new ArrayList<KimgCompanyVO>();
			for(KimgCompanyVO ele : companyList){
				if(ele.getcComCode().equals(cPerCom)){
					companyListTemp.add(ele);
				}
			}
			model.addAttribute("companyList", companyListTemp);
			List<String> venueListCom = dao.selectVenueDist(cPerCom);
			List<KimgVenueVO> venueTemp = new ArrayList<KimgVenueVO>();
			for(String str : venueListCom){
				for(KimgVenueVO ele : venueList){
					if(ele.getcVenCode().equals(str)){
						venueTemp.add(ele);
					}
				}
			}
			model.addAttribute("venueList", venueTemp);
			
			srcPar.setcItmCom(cPerCom);
			int itemcnt =dao.selectAllItemSrcParCnt(srcPar);
			model.addAttribute("itemcnt", itemcnt);
		}
			
			
		
		List<KimgProductVO> productList = dao.selectAllProduct();
		
		
		model.addAttribute("statusList", taskStatus);
		model.addAttribute("taskList", taskType);
		
		model.addAttribute("itemList", itemList);
		model.addAttribute("catList", catList);
		model.addAttribute("eventList", eventList);
		model.addAttribute("sportList", sportList);
		model.addAttribute("departmentList", departmentList);
		model.addAttribute("productList", productList);
		model.addAttribute("cItmMateList", cItmMateList);
		
		model.addAttribute("srcPar", srcPar);		
		
		model.addAttribute("selectedMenu", "item");
		return "admin/item";
	}
	
	@RequestMapping(value = "/admin/itemDetail", method = RequestMethod.GET)
	public String adminItemDetail(Model model, HttpSession session, @RequestParam("nItmCnt")int nItmCnt) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
		KimgItemVO item = dao.selectAllItemDetail(nItmCnt);
		
		KimgPhotoVO vo = new KimgPhotoVO();
		vo.setcPhoType("itm");
		vo.setnRefCode(nItmCnt);
		try{
		List<KimgPhotoVO> photos = dao.selectPhotoByParam(vo);
		item.setPhotos(photos);
		}catch(Exception e){
			System.out.println("사진 없음");
		}
		//List<KimgTaskStatusVO> taskStatus = dao.selectTaskStatus();
		//List<KimgTaskTypeVO> taskType = dao.selectTaskType();
		//List<KimgCompanyVO> companyList = dao.selectAllCompany();
		List<KimgTaskVO> taskList = dao.selectTask(nItmCnt);
		
		//퍼미션 관련
		String cPerCom = session.getAttribute("cPerCom").toString();
		if(!cPerCom.equals("adm")){
			List<KimgCompanyVO> companyListTemp = new ArrayList<KimgCompanyVO>();
			for(KimgCompanyVO ele : companyList){
				if(ele.getcComCode().equals(cPerCom)){
					companyListTemp.add(ele);
				}
			}
			List<KimgTaskStatusVO> taskStatusTemp = new ArrayList<KimgTaskStatusVO>();
			for(KimgTaskStatusVO ele : taskStatus){
				if(!ele.getcTstType().equals("CNF")){
					taskStatusTemp.add(ele);
				}
			}
			model.addAttribute("taskStatus", taskStatusTemp);
		}else{
			
			model.addAttribute("taskStatus", taskStatus);
		}
		
		
		model.addAttribute("item", item);
		model.addAttribute("companyList", companyList);
		
		model.addAttribute("taskType", taskType);
		model.addAttribute("taskList", taskList);
		model.addAttribute("selectedMenu", "item");
		return "admin/itemDetail";
	}
	
	@RequestMapping(value = "/admin/issue", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminIssue(Model model, HttpSession session, @ModelAttribute("srcPar")KimgTaskVO srcPar, @RequestParam(value = "ref", required=false) String ref) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
		List<KimgTaskVO> issueList = dao.selectIssueSrcPar(srcPar);
		
		//퍼미션 관련
		String cPerCom = session.getAttribute("cPerCom").toString();
		if(!cPerCom.equals("adm")){
			List<KimgTaskVO> issueListTemp = new ArrayList<KimgTaskVO>();
			for(KimgTaskVO ele : issueList){
				if(ele.getcTskComp().equals(cPerCom)){
					issueListTemp.add(ele);
				}
			}
			issueList = issueListTemp;
			List<KimgCompanyVO> companyListTemp = new ArrayList<KimgCompanyVO>();
			for(KimgCompanyVO ele : companyList){
				if(ele.getcComCode().equals(cPerCom)){
					companyListTemp.add(ele);
				}
			}
			model.addAttribute("companyList", companyListTemp);
		}else{
			model.addAttribute("companyList", companyList);
		}
		
		List<KimgTaskTypeVO> taskTypeTemp = new ArrayList<KimgTaskTypeVO>();
		for(KimgTaskTypeVO ele : taskType){
			if(ele.getcTtpType().equals("INC")){
				taskTypeTemp.add(ele);
			}
		}
		
//		List<KimgTaskStatusVO> taskStatusTemp = new ArrayList<KimgTaskStatusVO>();
//		for(KimgTaskStatusVO ele : taskStatus){
//			if(ele.getcTstType().equals("TRQ")){
//				taskStatusTemp.add(ele);
//			}
//		}
		
		
		model.addAttribute("venueList", venueList);
		model.addAttribute("taskStatus", taskStatus);
		
		model.addAttribute("taskType", taskTypeTemp);
		model.addAttribute("issueList", issueList);
		//아이템 리스트는 늘 주기별로 업데이트 한
		model.addAttribute("defItemList", defItemList);
		model.addAttribute("srcPar", srcPar);
		model.addAttribute("ref", ref);
		model.addAttribute("selectedMenu", "issue");
		return "admin/issue";
	}
	
	@RequestMapping(value = "/admin/account", method = RequestMethod.GET)
	public String adminAccount(Model model, HttpSession session) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
	
		model.addAttribute("itemList", dao.selectAllItem());
		model.addAttribute("selectedMenu", "account");
		return "admin/account";
	}
	
	@RequestMapping(value = "/admin/report", method = RequestMethod.GET)
	public String adminReport(Model model, HttpSession session) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
		model.addAttribute("itemList", dao.selectAllTask());
		model.addAttribute("selectedMenu", "report");
		return "admin/report";
	}
	
	@RequestMapping(value = "/admin/addAccount", method = RequestMethod.POST)
	public String adminAddAccount(Model model, HttpSession session, @ModelAttribute("vo")KimgPersonVO vo) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
		String user = session.getAttribute("cPerId").toString();
		vo.setcPerCrtUsr(user);
		vo.setcPerModUsr(user);
		dao.insertPerson(vo);
		
		if(!vo.getPhotoUid().isEmpty()){
			String[] uids = vo.getPhotoUid().split(", ");
			for(String ele : uids){
				
				KimgPhotoVO tmp = new KimgPhotoVO();
				tmp.setcPhoType("per");
				tmp.setnRefCode(vo.getnPerCnt());
				//키가 정해지면 우선 전에 있던 사진을 지운다. 프로필은 하나의 사진만 필요.
				dao.updatePhotoByRefCodeToZero(tmp);
				tmp.setcPhoName(ele);
				tmp.setnPhoDel(0);
				tmp.setcPhoCrtUsr(user);
				tmp.setcPhoModUsr(user);
				dao.insertPhoto(tmp);
			}
		}
		
		model.addAttribute("selectedMenu", "profile");
		return "redirect:profile";
	}
	
	@RequestMapping(value = "/admin/updateAccount", method = RequestMethod.POST)
	public String updateAccount(Model model, HttpSession session, @ModelAttribute("vo")KimgPersonVO vo) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
		String user = session.getAttribute("cPerId").toString();
		vo.setcPerCrtUsr(user);
		vo.setcPerModUsr(user);
		
		dao.updatePerson(vo);
		//dao.insertPerson(vo);
		
		if(!vo.getPhotoUid().isEmpty()){
			String[] uids = vo.getPhotoUid().split(", ");
			for(String ele : uids){
				
				KimgPhotoVO tmp = new KimgPhotoVO();
				tmp.setcPhoType("per");
				tmp.setnRefCode(vo.getnPerCnt());
				//키가 정해지면 우선 전에 있던 사진을 지운다. 프로필은 하나의 사진만 필요.
				dao.updatePhotoByRefCodeToZero(tmp);
				tmp.setcPhoName(ele);
				tmp.setnPhoDel(0);
				tmp.setcPhoCrtUsr(user);
				tmp.setcPhoModUsr(user);
				dao.insertPhoto(tmp);
			}
		}
		
		model.addAttribute("selectedMenu", "profile");
		return "redirect:profile";
	}
	
	@RequestMapping(value = "/admin/addProduct", method = RequestMethod.POST)
	public String adminAddProduct(Model model, HttpSession session, @ModelAttribute("vo")KimgProductVO vo) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
		String user = session.getAttribute("cPerId").toString();
		vo.setcPrdCrtUsr(user);
		vo.setcPrdModUsr(user);
		
		dao.insertProduct(vo);
		
		if(!vo.getPhotoUid().isEmpty()){
			String[] uids = vo.getPhotoUid().split(", ");
			for(String ele : uids){
				
				KimgPhotoVO tmp = new KimgPhotoVO();
				tmp.setcPhoType("prd");
				tmp.setnRefCode(vo.getnPrdCnt());
				tmp.setcPhoName(ele);
				tmp.setnPhoDel(0);
				tmp.setcPhoCrtUsr(user);
				tmp.setcPhoModUsr(user);
				dao.insertPhoto(tmp);
			}
		}
		
		model.addAttribute("selectedMenu", "product");
		return "redirect:product";
	}
	
	@RequestMapping(value = "/admin/addItem", method = RequestMethod.POST)
	public String addItem(Model model, HttpSession session, @ModelAttribute("vo")KimgItemVO vo) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
		String user = session.getAttribute("cPerId").toString();
		vo.setcItmCrtUsr(user);
		vo.setcItmModUsr(user);
		
		dao.insertItem(vo);
		
		if(!vo.getPhotoUid().isEmpty()){
			String[] uids = vo.getPhotoUid().split(", ");
			for(String ele : uids){
				
				KimgPhotoVO tmp = new KimgPhotoVO();
				tmp.setcPhoType("itm");
				tmp.setnRefCode(vo.getnItmCnt());
				tmp.setcPhoName(ele);
				tmp.setnPhoDel(0);
				tmp.setcPhoCrtUsr(user);
				tmp.setcPhoModUsr(user);
				dao.insertPhoto(tmp);
			}
		}
		
		model.addAttribute("selectedMenu", "item");
		return "redirect:item";
	}
	
	
	
	@RequestMapping(value = "/admin/addTask", method = RequestMethod.POST)
	public String addTask(Model model, HttpSession session, @ModelAttribute("vo")KimgTaskVO vo) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		
		String user = session.getAttribute("cPerId").toString();
		vo.setcTskCrtUsr(user);
		vo.setcTskModUsr(user);
		
		dao.insertTask(vo);
		
		
		if(!vo.getPhotoUid().isEmpty()){
			String[] uids = vo.getPhotoUid().split(", ");
			for(String ele : uids){
				
				KimgPhotoVO tmp = new KimgPhotoVO();
				tmp.setcPhoType("tsk");
				tmp.setnRefCode(vo.getnTskCnt());
				tmp.setcPhoName(ele);
				tmp.setnPhoDel(0);
				tmp.setcPhoCrtUsr(user);
				tmp.setcPhoModUsr(user);
				dao.insertPhoto(tmp);
			}
		}
		
		model.addAttribute("selectedMenu", "item");
//		try{
//		if(vo.getRedirect().equals("issue")){
//			return "redirect:/admin/issue";
//		}
//		}catch(Exception e){
//			
//		}
		
		return "redirect:itemDetail?nItmCnt="+vo.getnRefItm();
	}
	
	
	 
	  private JSONObject getSuccessMessage() {
	    JSONObject jsonObject = null;
	    try {
	      jsonObject = new JSONObject("{\"success\":true}");
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
	    return jsonObject;
	  }
	  
	  private JSONObject getFailMessage() {
		    JSONObject jsonObject = null;
		    try {
		      jsonObject = new JSONObject("{\"success\":false}");
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
	  public @ResponseBody Object upload(@RequestParam("file") MultipartFile file, HttpServletRequest request, Locale locale) {
	    System.out.println("upload() called");
	    if (file.isEmpty()) {
	      request.setAttribute("message", "Please select a file to upload");
	      return "uploadStatus";
	    }
	 
	    try {
	      // for Fine Uploader delete functionality
	      String qquuid = request.getParameter("qquuid");
	      System.out.println("qquuid=" + qquuid);
	      if (qquuid == null) {
	        request.getSession().setAttribute(qquuid, file.getOriginalFilename());
	        Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT, locale);
			String formattedDate = dateFormat.format(date);
			qquuid = formattedDate.replaceAll("/", " ");
	      }
	      // for Fine Uploader delete functionality ends
	 
	      byte[] bytes = file.getBytes();
	      Path path = Paths.get(UPLOADED_FOLDER + qquuid);
	      Files.write(path, bytes);
	      request.setAttribute("message", "You have successfully uploaded '" + qquuid + "'");
	 
	    } catch (IOException e) {
	      e.printStackTrace();
	    }
	 
	    return getSuccessMessage().toString();
	    
	  }
	  //기본적인 업로드 메소드 -  이걸 하는게 맞는가...
	  @RequestMapping(value = "/admin/uploadgen",method = { RequestMethod.POST })
	  public @ResponseBody Object uploadgen(@RequestParam("file") MultipartFile file, Locale locale) {
	    System.out.println("uploadgen() called");
	    
	 
	    try {
	     
	    String fileid = file.getOriginalFilename();
	    Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT, locale);
		String formattedDate = dateFormat.format(date);
		fileid = fileid + formattedDate.replaceAll("/", " ");
	      
	    byte[] bytes = file.getBytes();
	    Path path = Paths.get(UPLOADED_FOLDER + fileid);
	    Files.write(path, bytes);
	   
	 
	    } catch (IOException e) {
	      e.printStackTrace();
	    }
	 
	    return getSuccessMessage().toString();
	    
	  }
	  
	  @RequestMapping(value = "/admin/selectDetail/{type}/{ref}", method = { RequestMethod.POST , RequestMethod.GET })
		public @ResponseBody Object selectDetail(@PathVariable("type")String type, @PathVariable("ref")int ref, HttpServletRequest session){
//		  if(session.getAttribute("cPerId") == null){
//				return "redirect:../";
//		  }
		 // pre, pos, des
		  if(type.equals("prd")){
			  return dao.selectProductOne(ref);
		  }else if(type.equals("itm")){
			  return dao.selectItemOne(ref);
		  }else if(type.equals("tsk")){
			  return dao.selectTaskOne(ref);
		  }else if(type.equals("acc")){
			  return dao.selectOnePerson(ref);
		  }else if(type.equals("pre") || type.equals("pos") || type.equals("des")){
			  return dao.selectItemOne(ref);
	  	  }else{
			  return "null";  
		  }
		}
	  
	  @RequestMapping(value = "/admin/updateProduct", method = RequestMethod.POST)
		public String updateProduct(Model model, HttpSession session, @ModelAttribute("vo")KimgProductVO vo) {
			if(session.getAttribute("cPerId") == null){
				return "redirect:../";
			}
			
			String user = session.getAttribute("cPerId").toString();
			vo.setcPrdModUsr(user);
			
			dao.updateProduct(vo);
			
			if(!vo.getPhotoUid().isEmpty()){
				String[] uids = vo.getPhotoUid().split(", ");
				for(String ele : uids){
					
					KimgPhotoVO tmp = new KimgPhotoVO();
					tmp.setcPhoType("prd");
					tmp.setnRefCode(vo.getnPrdCnt());
					tmp.setcPhoName(ele);
					tmp.setnPhoDel(0);
					tmp.setcPhoCrtUsr(user);
					tmp.setcPhoModUsr(user);
					dao.insertPhoto(tmp);
				}
			}
			
			model.addAttribute("selectedMenu", "product");
			return "redirect:product";
		}
	  
	  @RequestMapping(value = "/admin/updateItem", method = RequestMethod.POST)
		public String updateItem(Model model, HttpSession session, @ModelAttribute("vo")KimgItemVO srcPar) {
			if(session.getAttribute("cPerId") == null){
				return "redirect:../";
			}
			
			String user = session.getAttribute("cPerId").toString();
			srcPar.setcItmModUsr(user);
			
			dao.updateItem(srcPar);
			
			if(!srcPar.getPhotoUid().isEmpty()){
				String[] uids = srcPar.getPhotoUid().split(", ");
				for(String ele : uids){
					
					KimgPhotoVO tmp = new KimgPhotoVO();
					tmp.setcPhoType("itm");
					tmp.setnRefCode(srcPar.getnItmCnt());
					tmp.setcPhoName(ele);
					tmp.setnPhoDel(0);
					tmp.setcPhoCrtUsr(user);
					tmp.setcPhoModUsr(user);
					dao.insertPhoto(tmp);
				}
			}
			
			if(session.getAttribute("cPerId") == null){
				return "redirect:../";
			}
			
			if(srcPar.getnItmPage() == 0){
				srcPar.setnItmPage(1);
			}
			
			List<KimgItemVO> itemList = new ArrayList<KimgItemVO>();
			itemList = dao.selectAllItemSrcPar(srcPar);
			
			
			//퍼미션 관련
			String cPerCom = session.getAttribute("cPerCom").toString();
			if(cPerCom.equals("adm")){
				model.addAttribute("companyList", companyList);
				int itemcnt =dao.selectAllItemSrcParCnt(srcPar);
				model.addAttribute("itemcnt", itemcnt);
				model.addAttribute("venueList", venueList);
				
			}else if(cPerCom.equals("POC")){
				System.out.println("POCOG");
				model.addAttribute("companyList", companyList);
				int itemcnt =dao.selectAllItemSrcParCnt(srcPar);
				model.addAttribute("itemcnt", itemcnt);
				model.addAttribute("venueList", venueList);
				
			}else{
				List<KimgItemVO> itemListTemp = new ArrayList<KimgItemVO>();
				for(KimgItemVO ele : itemList){
					if(ele.getcItmCom().equals(cPerCom)){
						itemListTemp.add(ele);
					}
				}
				itemList = itemListTemp;
				List<KimgCompanyVO> companyListTemp = new ArrayList<KimgCompanyVO>();
				for(KimgCompanyVO ele : companyList){
					if(ele.getcComCode().equals(cPerCom)){
						companyListTemp.add(ele);
					}
				}
				model.addAttribute("companyList", companyListTemp);
				List<String> venueListCom = dao.selectVenueDist(cPerCom);
				List<KimgVenueVO> venueTemp = new ArrayList<KimgVenueVO>();
				for(String str : venueListCom){
					for(KimgVenueVO ele : venueList){
						if(ele.getcVenCode().equals(str)){
							venueTemp.add(ele);
						}
					}
				}
				model.addAttribute("venueList", venueTemp);
				
				srcPar.setcItmCom(cPerCom);
				int itemcnt =dao.selectAllItemSrcParCnt(srcPar);
				model.addAttribute("itemcnt", itemcnt);
			}
				
				
			
			List<KimgProductVO> productList = dao.selectAllProduct();
			
			
			model.addAttribute("statusList", taskStatus);
			model.addAttribute("taskList", taskType);
			
			model.addAttribute("itemList", itemList);
			model.addAttribute("catList", catList);
			model.addAttribute("eventList", eventList);
			model.addAttribute("sportList", sportList);
			model.addAttribute("departmentList", departmentList);
			model.addAttribute("productList", productList);
			model.addAttribute("cItmMateList", cItmMateList);
			
			model.addAttribute("srcPar", srcPar);		
			
			model.addAttribute("selectedMenu", "item");
			return "admin/item";
		}
	  
	  @RequestMapping(value = "/admin/updateTask", method = RequestMethod.POST)
		public String updateTask(Model model, HttpSession session, @ModelAttribute("vo")KimgTaskVO vo) {
			if(session.getAttribute("cPerId") == null){
				return "redirect:../";
			}
			
			String user = session.getAttribute("cPerId").toString();
			vo.setcTskModUsr(user);
			
			dao.updateTask(vo);
			
			if(!vo.getPhotoUid().isEmpty()){
				String[] uids = vo.getPhotoUid().split(", ");
				for(String ele : uids){
					
					KimgPhotoVO tmp = new KimgPhotoVO();
					tmp.setcPhoType("tsk");
					tmp.setnRefCode(vo.getnTskCnt());
					tmp.setcPhoName(ele);
					tmp.setnPhoDel(0);
					tmp.setcPhoCrtUsr(user);
					tmp.setcPhoModUsr(user);
					dao.insertPhoto(tmp);
				}
			}
			
			model.addAttribute("selectedMenu", "item");
			
//			if(vo.getRedirect().equals("issue")){
//				return "redirect:/admin/issue";
//			}
			return "redirect:itemDetail?nItmCnt="+vo.getnRefItm();
		}
	  
	  @RequestMapping(value = "/admin/deleteProduct", method = RequestMethod.GET)
		public String deleteProduct(Model model, HttpSession session, @ModelAttribute("ref")int ref) {
			if(session.getAttribute("cPerId") == null){
				return "redirect:../";
			}
			
			KimgProductVO vo = new KimgProductVO();
			vo.setnPrdDel(1);
			vo.setnPrdCnt(ref);
			String user = session.getAttribute("cPerId").toString();
			vo.setcPrdModUsr(user);
			
			dao.updateProduct(vo);
			
			
			model.addAttribute("selectedMenu", "product");
			return "redirect:product";
		}
	  
	  @RequestMapping(value = "/admin/deleteItem", method = RequestMethod.GET)
		public String deleteItem(Model model, HttpSession session, @ModelAttribute("ref")int ref) {
			if(session.getAttribute("cPerId") == null){
				return "redirect:../";
			}
			
			KimgItemVO vo = new KimgItemVO();
			vo.setnItmDel(1);
			vo.setnItmCnt(ref);
			
			String user = session.getAttribute("cPerId").toString();
			vo.setcItmModUsr(user);
			dao.updateItem(vo);
			
			model.addAttribute("selectedMenu", "item");
			return "redirect:item";
		}
	  
	  @RequestMapping(value = "/admin/deleteTask", method = RequestMethod.GET)
		public String deleteTask(Model model, HttpSession session, @ModelAttribute("ref")int ref, @RequestParam(value = "redirect", required=false) String redirect) {
			if(session.getAttribute("cPerId") == null){
				return "redirect:../";
			}
			
			KimgTaskVO vo = new KimgTaskVO();
			vo.setnTskDel(1);
			vo.setnTskCnt(ref);

			List<KimgTaskVO> taskList = dao.selectTaskOne(ref);
			
			String user = session.getAttribute("cPerId").toString();
			vo.setcTskModUsr(user);
			vo.setRedirect(redirect);
			
			dao.updateTask(vo);
			
			model.addAttribute("selectedMenu", "item");
//			if(vo.getRedirect().equals("issue")){
//				return "redirect:/admin/issue";
//			}
			return "redirect:itemDetail?nItmCnt="+taskList.get(0).getnRefItm();
		}
	  @RequestMapping(value = "/admin/deletePhoto/{ref}", method = { RequestMethod.POST , RequestMethod.GET })
		public @ResponseBody Object deletePhoto( @PathVariable("ref")int ref, HttpServletRequest session){
//		  if(session.getAttribute("cPerId") == null){
//				return "redirect:../";
//		  }
		  
		  return dao.deletePhoto(ref);
		}
	  
	  @RequestMapping(value="/admin/itemBulkUpdate", method=RequestMethod.POST)
	  public String updateBulk(Model model, HttpSession session, 
			 @ModelAttribute("vo")KimgItemVO srcPar
			  , Locale locale){
		  if(session.getAttribute("cPerId") == null){
				return "redirect:../";
		  }
		  
		
		  String user = session.getAttribute("cPerId").toString();
		  Date date = new Date();
		  DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT, locale);
		  String formattedDate = dateFormat.format(date);
		  
		  try{
		  String number = srcPar.getTd_numbers();
	      System.out.println(number);
	      String[] numbers = number.split(",");
		  
			  
		  
	      for(String ele : numbers){
		      KimgTaskVO vo = new KimgTaskVO();
				vo.setcTskCrtUsr(user);
				vo.setcTskModUsr(user);
				vo.setnRefItm(Integer.parseInt(ele));
				vo.setcTskType(srcPar.getcTtpType());
				vo.setcTskStatus(srcPar.getcTstType());
				vo.setcTskNote(formattedDate+" 일괄 처리 되었습니다.");
				dao.insertTask(vo);
	      }
		  }catch(Exception e){
			  System.out.println("일관처리시 오류발생 아마 아무값도 선택하지 않음");
		  }

		  
		  //아 몰라 아이템 뷰 로직 그대로 실행.
		  if(session.getAttribute("cPerId") == null){
				return "redirect:../";
			}
			
			if(srcPar.getnItmPage() == 0){
				srcPar.setnItmPage(1);
			}
			
			List<KimgItemVO> itemList = new ArrayList<KimgItemVO>();
			itemList = dao.selectAllItemSrcPar(srcPar);
			
			
			//퍼미션 관련
			String cPerCom = session.getAttribute("cPerCom").toString();
			if(cPerCom.equals("adm")){
				model.addAttribute("companyList", companyList);
				int itemcnt =dao.selectAllItemSrcParCnt(srcPar);
				model.addAttribute("itemcnt", itemcnt);
				model.addAttribute("venueList", venueList);
				
			}else if(cPerCom.equals("POC")){
				System.out.println("POCOG");
				model.addAttribute("companyList", companyList);
				int itemcnt =dao.selectAllItemSrcParCnt(srcPar);
				model.addAttribute("itemcnt", itemcnt);
				model.addAttribute("venueList", venueList);
				
			}else{
				List<KimgItemVO> itemListTemp = new ArrayList<KimgItemVO>();
				for(KimgItemVO ele : itemList){
					if(ele.getcItmCom().equals(cPerCom)){
						itemListTemp.add(ele);
					}
				}
				itemList = itemListTemp;
				List<KimgCompanyVO> companyListTemp = new ArrayList<KimgCompanyVO>();
				for(KimgCompanyVO ele : companyList){
					if(ele.getcComCode().equals(cPerCom)){
						companyListTemp.add(ele);
					}
				}
				model.addAttribute("companyList", companyListTemp);
				List<String> venueListCom = dao.selectVenueDist(cPerCom);
				List<KimgVenueVO> venueTemp = new ArrayList<KimgVenueVO>();
				for(String str : venueListCom){
					for(KimgVenueVO ele : venueList){
						if(ele.getcVenCode().equals(str)){
							venueTemp.add(ele);
						}
					}
				}
				model.addAttribute("venueList", venueTemp);
				
				srcPar.setcItmCom(cPerCom);
				int itemcnt =dao.selectAllItemSrcParCnt(srcPar);
				model.addAttribute("itemcnt", itemcnt);
			}
				
				
			
			List<KimgProductVO> productList = dao.selectAllProduct();
			
			
			model.addAttribute("statusList", taskStatus);
			model.addAttribute("taskList", taskType);
			
			model.addAttribute("itemList", itemList);
			model.addAttribute("catList", catList);
			model.addAttribute("eventList", eventList);
			model.addAttribute("sportList", sportList);
			model.addAttribute("departmentList", departmentList);
			model.addAttribute("productList", productList);
			model.addAttribute("cItmMateList", cItmMateList);
			
			model.addAttribute("srcPar", srcPar);		
			
			model.addAttribute("selectedMenu", "item");
			return "admin/item";
	  }
	  
	  
	  @RequestMapping(value="/admin/photoFormAction", method=RequestMethod.POST)
	  public String photoFormAction(Model model, HttpSession session, 
			 @ModelAttribute("vo")KimgItemVO srcPar
			  , Locale locale){
		  if(session.getAttribute("cPerId") == null){
				return "redirect:../";
		  }
		
		  String[] pictures = srcPar.getPhotoUid2().split(",");
		  int piclen = pictures.length-1;
		  
		  //System.out.println(pictures[piclen]);
		  KimgItemVO vo = new KimgItemVO();
		  if(srcPar.getPhoType().equals("pre")){
			  vo.setcItmPrePho(pictures[piclen].trim());
		  }else if(srcPar.getPhoType().equals("pos")){
			  vo.setcItmPosPho(pictures[piclen].trim());
		  }else if(srcPar.getPhoType().equals("des")){
			  vo.setcItmDesPho(pictures[piclen].trim());
		  }
		  vo.setnItmCnt(srcPar.getnItmCnt());
		  vo.setcItmModUsr(session.getAttribute("cPerId").toString());
		  
		  dao.updateItem(vo);
		  //아 몰라 아이템 뷰 로직 그대로 실행.
		  List<KimgItemVO> itemList = new ArrayList<KimgItemVO>();
		  itemList = dao.selectAllItemSrcPar(srcPar);
			
			//퍼미션 관련
			String cPerCom = session.getAttribute("cPerCom").toString();
			if(!cPerCom.equals("adm")){
				List<KimgItemVO> itemListTemp = new ArrayList<KimgItemVO>();
				for(KimgItemVO ele : itemList){
					if(ele.getcItmCom().equals(cPerCom)){
						itemListTemp.add(ele);
					}
				}
				itemList = itemListTemp;
				List<KimgCompanyVO> companyListTemp = new ArrayList<KimgCompanyVO>();
				for(KimgCompanyVO ele : companyList){
					if(ele.getcComCode().equals(cPerCom)){
						companyListTemp.add(ele);
					}
				}
				model.addAttribute("companyList", companyListTemp);
			}else{
				model.addAttribute("companyList", companyList);
			}
				
				
			
			List<KimgProductVO> productList = dao.selectAllProduct();
			
			
			model.addAttribute("statusList", taskStatus);
			model.addAttribute("taskList", taskType);
			
			model.addAttribute("itemList", itemList);
			model.addAttribute("catList", catList);
			model.addAttribute("eventList", eventList);
			model.addAttribute("sportList", sportList);
			model.addAttribute("departmentList", departmentList);
			model.addAttribute("venueList", venueList);
			model.addAttribute("productList", productList);
			model.addAttribute("cItmMateList", cItmMateList);
			
			model.addAttribute("srcPar", srcPar);		
			
			model.addAttribute("selectedMenu", "item");
			return "admin/item";
	  }
	  
	  
}