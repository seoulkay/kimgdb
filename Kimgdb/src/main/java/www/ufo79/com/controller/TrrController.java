package www.ufo79.com.controller;

import java.net.UnknownHostException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import www.ufo79.com.dao.TrrDAO;
import www.ufo79.com.vo.KimgPersonVO;
import www.ufo79.com.vo.TrrEod;
import www.ufo79.com.vo.TrrRaw;
import www.ufo79.com.vo.TrrSurvey;
import www.ufo79.com.vo.TrrUser;

@Controller
public class TrrController {
	
	@Autowired
	TrrDAO dao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "trr/login";
	}
	@RequestMapping(value = "/admin/runSheet", method = RequestMethod.GET)
	public String runSheet(Model model, HttpSession session) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		List<TrrRaw> raws = dao.selectRaw(session.getAttribute("cPerId").toString());
		
		model.addAttribute("raws", raws);
		model.addAttribute("selectedMenu", "runSheet");
		return "trr/admin/runSheet";
	}
	@RequestMapping(value = "/admin/surveyForm", method = RequestMethod.GET)
	public String surveyForm(Model model, HttpSession session) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		List<TrrRaw> raws = dao.selectRaw(session.getAttribute("cPerId").toString());
		
		model.addAttribute("raws", raws);
		model.addAttribute("selectedMenu", "surveyForm");
		return "trr/admin/surveyForm";
	}
	
	@RequestMapping(value = "/admin/surveyList", method = RequestMethod.GET)
	public String surveyList(Model model, HttpSession session) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}

		String tro = session.getAttribute("cPerId").toString();
		
		//TRO2는 전체를 본다.
		if(tro.equals("TRO99")){
			tro = "";
		}
		
		List<TrrSurvey> surveyList = dao.selectSurveyList(tro);
		
		model.addAttribute("surveyList", surveyList);
		model.addAttribute("selectedMenu", "surveyList");
		return "trr/admin/surveyList";
	}
	
	@RequestMapping(value = "/admin/endOfDayReport", method = RequestMethod.GET)
	public String endOfDayReport(Model model, HttpSession session) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		model.addAttribute("selectedMenu", "endOfDayReport");
		return "trr/admin/endOfDayReport";
	}
	@RequestMapping(value = "/trr/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	@RequestMapping(value = "/trrloginAction", method = RequestMethod.POST)
	public String lgoinAction(Locale locale, Model model, @ModelAttribute("vo") TrrUser vo, HttpSession session) throws UnknownHostException {
		
		//KimgPersonVO cred = dao.selectPasswordPerson(vo);
		TrrUser cred = dao.selectPasswordPerson(vo);
		
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT, locale);
		String formattedDate = dateFormat.format(date);

		
		if(cred == null){
			System.out.println("로그인 시도 실패 : "+vo.getcUserId()+" 시각 "+formattedDate);
			model.addAttribute("errMsg", "Wrong Id and/or Password");
			return "trr/login";
		}else{
			System.out.println("로그인 시도 성공 : "+vo.getcUserId()+" 시각 "+formattedDate);
			session.setAttribute("cPerId", cred.getcUserId());
			session.setAttribute("cred", cred);
			return "redirect:/admin/runSheet";
		}
	}
	@RequestMapping(value = "/admin/eodFormAction", method = RequestMethod.POST)
	public String endOfDayReportAction(Model model, HttpSession session, @ModelAttribute("vo")TrrEod vo) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		dao.insertEod(vo);
		model.addAttribute("selectedMenu", "endOfDayReport");
		return "redirect:/admin/endOfDayReport";
	}
	@RequestMapping(value = "/admin/surveyFormAction", method = RequestMethod.POST)
	public String surveyFormAction(Model model, HttpSession session, @ModelAttribute("vo")TrrSurvey vo) {
		if(session.getAttribute("cPerId") == null){
			return "redirect:../";
		}
		dao.insertSurvey(vo);
		model.addAttribute("selectedMenu", "surveyForm");
		return "redirect:/admin/surveyForm";
	}
	 @RequestMapping(value = "/admin/selectRaw/{ref}", method = { RequestMethod.POST , RequestMethod.GET })
		public @ResponseBody Object selectDetail(@PathVariable("ref")int ref, HttpServletRequest session){
		 	return dao.selectRawOne(ref);
		}
	 @RequestMapping(value = "/admin/teamInfo", method = RequestMethod.GET)
		public String teamInfo(Model model, HttpSession session, @ModelAttribute("vo")TrrEod vo) {
			if(session.getAttribute("cPerId") == null){
				return "redirect:../";
			}
			model.addAttribute("selectedMenu", "teamInfo");
			return "trr/admin/teamInfo";
		}

}
