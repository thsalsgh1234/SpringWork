package com.biz.iolist.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.biz.iolist.domain.ProductDTO;

public interface ProductDao {

	public String getDCode();
	public List<ProductDTO> selectAll();
	public ProductDTO findByPCode(String p_code);
	public int insert(ProductDTO productDTO);
	public int update(ProductDTO productDTO);
	public int delete(String p_code);
	public List<ProductDTO> findByName(@Param("p_name") String strText);
}
