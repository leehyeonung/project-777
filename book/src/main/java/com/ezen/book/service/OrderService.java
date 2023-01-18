package com.ezen.book.service;

import java.util.List;

import com.ezen.book.domain.OrderVO;
import com.ezen.book.domain.PagingVO;

public interface OrderService {

   List<OrderVO> getList(PagingVO pvo, String status, int mem_num);



   int getOrderTotalCount(int mem_num);

   int getBuyTotalCount(int mem_num);

}