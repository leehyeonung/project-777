package com.ezen.book.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ezen.book.domain.OrderVO;
import com.ezen.book.domain.PagingVO;
import com.ezen.book.repository.OrderDAO;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Service
public class OrderServiceImpl implements OrderService {

   @Inject
   private OrderDAO odao;

   @Override
   public List<OrderVO> getList(PagingVO pvo, String status, int mem_num) {
            log.info(">>> board list check2");
            if(status.equals("주문")) {
               return odao.selectOrderList(pvo,mem_num);            
            }else {
            return odao.selectBuyList(pvo,mem_num);
            }
      }

   @Override
   public int getOrderTotalCount( int mem_num) {
      // TODO Auto-generated method stub
      return odao.orderTotalCount(mem_num);
   }
   
   @Override
   public int getBuyTotalCount(int mem_num) {
      // TODO Auto-generated method stub
      return odao.buyTotalCount(mem_num);
   }
   
}