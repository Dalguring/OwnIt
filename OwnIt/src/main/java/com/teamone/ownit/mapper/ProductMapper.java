package com.teamone.ownit.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.teamone.ownit.vo.ProductVO;

public interface ProductMapper {


	ProductVO productDetail(@Param("product_idx") int product_idx); 
	
}
