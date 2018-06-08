package com.sht.controller.selectedarticles;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.pojo.base.TSDepart;
import org.jeecgframework.web.system.service.SystemService;
import org.jeecgframework.core.util.MyBeanUtils;

import com.sht.entity.selectedarticles.SelectedArticlesEntity;
import com.sht.service.selectedarticles.SelectedArticlesServiceI;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.jeecgframework.core.beanvalidator.BeanValidators;
import java.util.Set;
import javax.validation.ConstraintViolation;
import javax.validation.Validator;
import java.net.URI;
import org.springframework.http.MediaType;
import org.springframework.web.util.UriComponentsBuilder;

/**   
 * @Title: Controller
 * @Description: 精选文章
 * @author zhangdaihao
 * @date 2018-06-08 11:45:30
 * @version V1.0   
 *
 */
@Controller
@RequestMapping("/selectedArticlesController")
public class SelectedArticlesController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(SelectedArticlesController.class);

	@Autowired
	private SelectedArticlesServiceI selectedArticlesService;
	@Autowired
	private SystemService systemService;
	@Autowired
	private Validator validator;
	


	/**
	 * 精选文章列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "list")
	public ModelAndView list(HttpServletRequest request) {
		return new ModelAndView("sht/selectedarticles/selectedArticlesList");
	}

	/**
	 * easyui AJAX请求数据
	 * 
	 * @param request
	 * @param response
	 * @param dataGrid
	 * @param user
	 */

	@RequestMapping(params = "datagrid")
	public void datagrid(SelectedArticlesEntity selectedArticles,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(SelectedArticlesEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, selectedArticles, request.getParameterMap());
		this.selectedArticlesService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除精选文章
	 * 
	 * @return
	 */
	@RequestMapping(params = "del")
	@ResponseBody
	public AjaxJson del(SelectedArticlesEntity selectedArticles, HttpServletRequest request) {
		String message = null;
		AjaxJson j = new AjaxJson();
		selectedArticles = systemService.getEntity(SelectedArticlesEntity.class, selectedArticles.getId());
		message = "精选文章删除成功";
		selectedArticlesService.delete(selectedArticles);
		systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加精选文章
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "save")
	@ResponseBody
	public AjaxJson save(SelectedArticlesEntity selectedArticles, HttpServletRequest request) {
		String message = null;
		AjaxJson j = new AjaxJson();
		if (StringUtil.isNotEmpty(selectedArticles.getId())) {
			message = "精选文章更新成功";
			SelectedArticlesEntity t = selectedArticlesService.get(SelectedArticlesEntity.class, selectedArticles.getId());
			try {
				MyBeanUtils.copyBeanNotNull2Bean(selectedArticles, t);
				selectedArticlesService.saveOrUpdate(t);
				systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				e.printStackTrace();
				message = "精选文章更新失败";
			}
		} else {
			message = "精选文章添加成功";
			selectedArticlesService.save(selectedArticles);
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}
		j.setMsg(message);
		return j;
	}

	/**
	 * 精选文章列表页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "addorupdate")
	public ModelAndView addorupdate(SelectedArticlesEntity selectedArticles, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(selectedArticles.getId())) {
			selectedArticles = selectedArticlesService.getEntity(SelectedArticlesEntity.class, selectedArticles.getId());
			req.setAttribute("selectedArticlesPage", selectedArticles);
		}
		return new ModelAndView("sht/selectedarticles/selectedArticles");
	}
	
	@RequestMapping(method = RequestMethod.GET)
	@ResponseBody
	public List<SelectedArticlesEntity> list() {
		List<SelectedArticlesEntity> listSelectedArticless=selectedArticlesService.getList(SelectedArticlesEntity.class);
		return listSelectedArticless;
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<?> get(@PathVariable("id") String id) {
		SelectedArticlesEntity task = selectedArticlesService.get(SelectedArticlesEntity.class, id);
		if (task == null) {
			return new ResponseEntity(HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity(task, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<?> create(@RequestBody SelectedArticlesEntity selectedArticles, UriComponentsBuilder uriBuilder) {
		//调用JSR303 Bean Validator进行校验，如果出错返回含400错误码及json格式的错误信息.
		Set<ConstraintViolation<SelectedArticlesEntity>> failures = validator.validate(selectedArticles);
		if (!failures.isEmpty()) {
			return new ResponseEntity(BeanValidators.extractPropertyAndMessage(failures), HttpStatus.BAD_REQUEST);
		}

		//保存
		selectedArticlesService.save(selectedArticles);

		//按照Restful风格约定，创建指向新任务的url, 也可以直接返回id或对象.
		String id = selectedArticles.getId();
		URI uri = uriBuilder.path("/rest/selectedArticlesController/" + id).build().toUri();
		HttpHeaders headers = new HttpHeaders();
		headers.setLocation(uri);

		return new ResponseEntity(headers, HttpStatus.CREATED);
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<?> update(@RequestBody SelectedArticlesEntity selectedArticles) {
		//调用JSR303 Bean Validator进行校验，如果出错返回含400错误码及json格式的错误信息.
		Set<ConstraintViolation<SelectedArticlesEntity>> failures = validator.validate(selectedArticles);
		if (!failures.isEmpty()) {
			return new ResponseEntity(BeanValidators.extractPropertyAndMessage(failures), HttpStatus.BAD_REQUEST);
		}

		//保存
		selectedArticlesService.saveOrUpdate(selectedArticles);

		//按Restful约定，返回204状态码, 无内容. 也可以返回200状态码.
		return new ResponseEntity(HttpStatus.NO_CONTENT);
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void delete(@PathVariable("id") String id) {
		selectedArticlesService.deleteEntityById(SelectedArticlesEntity.class, id);
	}
}
