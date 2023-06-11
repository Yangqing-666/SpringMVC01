package com.itdingyang.dao;

import com.itdingyang.domain.Book;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.context.annotation.Import;

import java.util.List;

public interface BookDao {
    //提供增删改查
    @Insert("insert into tbl_Book values(null,#{type},#{name},#{description})")
    public void save(Book book);

    @Update("update tbl_Book set type=#{type}, name=#{name}, description=#{description} where id =#{id}")
    public void update(Book book);

    @Delete("delete from tbl_Book where id = #{id}")
    public void delete(Integer id);

    @Select("select * from tbl_Book where id = #{id}")
    public Book getById(Integer id);

    @Select("select * from tbl_Book")
    public List<Book> getAll();
}
