package com.ezen.book.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ezen.book.domain.OrderVO;
import com.ezen.book.domain.PagingVO;

@Repository
public interface OrderDAO {



   List<OrderVO> selectBuyList(@Param("pvo")PagingVO pvo , @Param("mem_num")int mem_num);

   List<OrderVO> selectOrderList(@Param("pvo")PagingVO pvo , @Param("mem_num")int mem_num);


   int orderTotalCount(int mem_num);


   int buyTotalCount(int mem_num);

}