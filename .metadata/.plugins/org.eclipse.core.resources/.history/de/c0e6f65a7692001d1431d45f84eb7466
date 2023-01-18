package com.ezen.book.repository;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ezen.book.domain.BoardVO;
import com.ezen.book.domain.BookVO;
import com.ezen.book.domain.PagingVO;

@Repository
public interface BookDAO {



   List<BoardVO> selectBookListPaging(PagingVO pvo);


   int searchBookTotalCount(PagingVO pvo);


ArrayList<BookVO> getBookList();

ArrayList<BookVO> getBookList2(int content);












}