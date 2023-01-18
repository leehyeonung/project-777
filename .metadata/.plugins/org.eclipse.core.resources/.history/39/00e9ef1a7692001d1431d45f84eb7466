package com.ezen.book.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ezen.book.domain.BoardVO;
import com.ezen.book.domain.BookVO;
import com.ezen.book.domain.PagingVO;
import com.ezen.book.repository.BookDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BookServiceImpl implements BookService {
   
   @Inject
   private BookDAO bodao;
   




   @Override
   public List<BoardVO> getList(PagingVO pvo) {
      log.info(">>> board Paging List check2");
      
      return bodao.selectBookListPaging(pvo);
   }





   @Override
   public int getTotalCount(PagingVO pvo) {
      // TODO Auto-generated method stub
            return bodao.searchBookTotalCount(pvo);
   }





@Override
public ArrayList<BookVO> getBookList() {
   // TODO Auto-generated method stub
   return bodao.getBookList();
}








@Override
public ArrayList<BookVO> getSelectBookList(int content) {
   // TODO Auto-generated method stub
   return bodao.getBookList2(content);
}





}