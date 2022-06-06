package com.javaclimb.music.dao;

import com.javaclimb.music.domain.Singer;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 歌手Dao
 */
@Repository
public interface SingerMapper {
    /**
     *增加
     */
    public int insert(Singer singer);
    /*改*/
    public int update(Singer singer);
    /*删除*/
    public int delete(Integer id);
    /*根据id查找歌手*/
    public Singer selectByPrimaryKey(Integer id);
    /*所有歌手*/
    public List<Singer> allSinger();
    /*根据名字查歌手*/
    public List<Singer> singerOfName(String name);
    /**/
    public List<Singer> singerOfSex(Integer sex);
}
