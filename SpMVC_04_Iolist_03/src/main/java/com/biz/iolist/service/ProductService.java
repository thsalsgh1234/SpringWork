package com.biz.iolist.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.biz.iolist.domain.ProductDTO;
import com.biz.iolist.persistence.ProductDao;

@Service
public class ProductService {

	SqlSession sqlSession;
	
	public List<ProductDTO> getAllList(){
		
		ProductDao productDao = sqlSession.getMapper(ProductDao.class);
		
		List<ProductDTO> productlist = productDao.selectAll();
		
		return productlist;
	}
	
	public int insert(ProductDTO productDTO) {
		
		ProductDao productDao = sqlSession.getMapper(ProductDao.class);
		
		String p_code = productDao.getPCode();
		
		String p_code_num = p_code.substring(1);
		
		int int_pcode = Integer.valueOf(p_code_num + 1);
		
		p_code = p_code.substring(0,1);
		
		p_code += String.format("%04d",int_pcode);
		return 1;
		
	}
	
}
