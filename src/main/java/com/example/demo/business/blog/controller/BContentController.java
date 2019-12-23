package com.example.demo.business.blog.controller;

import com.example.demo.business.blog.domain.BContentDO;
import com.example.demo.business.blog.service.BContentService;
import com.example.demo.common.domin.Query;
import com.example.demo.common.domin.ReturnResult;
import com.example.demo.common.utils.PageUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * 文章内容
 * 
 * @author chglee
 * @email 1992lcg@163.com
 * @date 2017-09-09 10:03:34
 */
@Controller
@RequestMapping("/blog/bContent")
public class BContentController {
	@Autowired
	private BContentService bContentService;

	@GetMapping()
	@RequiresPermissions("blog:bContent:bContent")
	String BContent() {
		return "blog/bContent/bContent";
	}

	@ResponseBody
	@GetMapping("/list")
	@RequiresPermissions("blog:bContent:bContent")
	public PageUtils list(@RequestParam Map<String, Object> params) {
		// 查询列表数据
		Query query = new Query(params);

		List<BContentDO> bContentList = bContentService.list(query);
		int total = bContentService.count(query);

		PageUtils pageUtils = new PageUtils(bContentList, total);

		return pageUtils;
	}

	@GetMapping("/add")
	@RequiresPermissions("blog:bContent:add")
	String add() {
		return "blog/bContent/add";
	}

	@GetMapping("/edit/{cid}")
	@RequiresPermissions("blog:bContent:edit")
	String edit(@PathVariable("cid") Long cid, Model model) {
		BContentDO bContentDO = bContentService.get(cid);
		model.addAttribute("bContent", bContentDO);
		return "blog/bContent/edit";
	}

	/**
	 * 保存
	 */
	@ResponseBody
	@RequiresPermissions("blog:bContent:add")
	@PostMapping("/save")
	public ReturnResult save(BContentDO bContent) {
		// 处理是否允许评论等
		if (bContent.getAllowComment() == null) {
			bContent.setAllowComment(0);
		}
		if (bContent.getAllowFeed() == null) {
			bContent.setAllowFeed(0);
		}
		int count;
		if (bContent.getCid() == null || bContent.getCid().equals("")) {
			count = bContentService.save(bContent);
		} else {
			count = bContentService.update(bContent);
		}
		if (count > 0) {
			return ReturnResult.ok().put("cid", bContent.getCid());
		}
		return ReturnResult.error();
	}

	/**
	 * 修改
	 */
	@RequiresPermissions("blog:bContent:edit")
	@RequestMapping("/update")
	public ReturnResult update(@RequestBody BContentDO bContent) {
		bContentService.update(bContent);

		return ReturnResult.ok();
	}

	/**
	 * 删除
	 */
	@RequiresPermissions("blog:bContent:remove")
	@PostMapping("/remove")
	@ResponseBody
	public ReturnResult remove(Long id) {
		if (bContentService.remove(id) > 0) {
			return ReturnResult.ok();
		}
		return ReturnResult.error();
	}

	/**
	 * 删除
	 */
	@RequiresPermissions("blog:bContent:batchRemove")
	@PostMapping("/batchRemove")
	@ResponseBody
	public ReturnResult remove(@RequestParam("ids[]") Long[] cids) {
		bContentService.batchRemove(cids);
		return ReturnResult.ok();
	}
	
	@ResponseBody
	@GetMapping("/open/list")
	public PageUtils opentList(@RequestParam Map<String, Object> params) {
		// 查询列表数据
		Query query = new Query(params);

		List<BContentDO> bContentList = bContentService.list(query);
		int total = bContentService.count(query);

		PageUtils pageUtils = new PageUtils(bContentList, total);

		return pageUtils;
	}
	
	@GetMapping("/open/post/{cid}")
	String post(@PathVariable("cid") Long cid, Model model) {
		BContentDO bContentDO = bContentService.get(cid);
		model.addAttribute("bContent", bContentDO);
		return "blog/index/post";
	}

}
