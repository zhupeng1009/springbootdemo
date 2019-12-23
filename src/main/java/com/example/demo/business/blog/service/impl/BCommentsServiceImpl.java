package com.example.demo.business.blog.service.impl;

import com.example.demo.business.blog.dao.BCommentsMapper;
import com.example.demo.business.blog.domain.BCommentsDO;
import com.example.demo.business.blog.service.BCommentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service("bCommentsService")
public class BCommentsServiceImpl implements BCommentsService {
	@Autowired
	private BCommentsMapper bCommentsMapper;
	
	@Override
	public BCommentsDO get(Long id){
		return bCommentsMapper.get(id);
	}
	
	@Override
	public List<BCommentsDO> list(Map<String, Object> map){
		return bCommentsMapper.list(map);
	}
	
	@Override
	public int count(Map<String, Object> map){
		return bCommentsMapper.count(map);
	}
	
	@Override
	public int save(BCommentsDO bComments){
		return bCommentsMapper.save(bComments);
	}
	
	@Override
	public int update(BCommentsDO bComments){
		return bCommentsMapper.update(bComments);
	}
	
	@Override
	public int remove(Integer id){
		return bCommentsMapper.remove(id);
	}
	
	@Override
	public int batchRemove( Integer[] ids){
		return bCommentsMapper.batchRemove(ids);
	}
	
}
