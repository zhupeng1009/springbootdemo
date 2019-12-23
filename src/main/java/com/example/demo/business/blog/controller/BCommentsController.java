package com.example.demo.business.blog.controller;

import com.example.demo.business.blog.domain.BCommentsDO;
import com.example.demo.business.blog.service.BCommentsService;
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
 * @author chglee
 * @email 1992lcg@163.com
 * @date 2017-09-08 13:56:45
 */
@Controller
@RequestMapping("/blog/bComments")
public class BCommentsController {
    @Autowired
    private BCommentsService bCommentsService;

    @GetMapping()
        //@RequiresPermissions("blog:bComments")
    String bComments() {
        return "blog/bComments/bComments";
    }

    @GetMapping("/list")
    @ResponseBody
    //@RequiresPermissions("blog:list")
    public PageUtils list(@RequestParam Map<String, Object> params) {
        //查询列表数据
        Query query = new Query(params);

        List<BCommentsDO> bCommentsList = bCommentsService.list(query);
        int total = bCommentsService.count(query);

        PageUtils pageUtils = new PageUtils(bCommentsList, total);

        return pageUtils;
    }

    @GetMapping("/add")
        //@RequiresPermissions("blog:bComments")
    String add() {
        return "blog/bComments/add";
    }

    @GetMapping("/edit")
        //@RequiresPermissions("blog:bComments")
    String edit(Long id, Model model) {
        BCommentsDO bContentDO = bCommentsService.get(id);
        model.addAttribute("bContentDO", bContentDO);
        return "blog/bComments/edit";
    }

    /**
     * 保存
     */
    @PostMapping("/save")
    @ResponseBody
    //@RequiresPermissions("blog:save")
    public ReturnResult save(BCommentsDO bComments) {
        bCommentsService.save(bComments);

        return ReturnResult.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("blog:update")
    public ReturnResult update(BCommentsDO bComments) {
        bCommentsService.update(bComments);
        return ReturnResult.ok();
    }

    @PostMapping("/remove")
    @ResponseBody
    @RequiresPermissions("blog:remove")
    public ReturnResult remove(Integer id) {
        if (bCommentsService.remove(id) > 0) {
            return ReturnResult.ok();
        }
        return ReturnResult.error();
    }

    /**
     * 删除
     */
    @PostMapping("/batchRemove")
    @ResponseBody
    @RequiresPermissions("blog:delete")
    public ReturnResult delete(@RequestParam("ids[]") Integer[] ids) {
        bCommentsService.batchRemove(ids);
        return ReturnResult.ok();
    }

}
