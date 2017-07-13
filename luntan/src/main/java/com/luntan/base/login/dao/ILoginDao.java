package com.luntan.base.login.dao;

import com.luntan.base.login.bo.Logininfo;
import com.luntan.base.login.bo.LogininfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ILoginDao {
    long countByExample(LogininfoExample example);

    int deleteByExample(LogininfoExample example);

    int deleteByPrimaryKey(String userId);

    int insert(Logininfo record);

    int insertSelective(Logininfo record);

    List<Logininfo> selectByExample(LogininfoExample example);

    Logininfo selectByPrimaryKey(String userId);

    int updateByExampleSelective(@Param("record") Logininfo record, @Param("example") LogininfoExample example);

    int updateByExample(@Param("record") Logininfo record, @Param("example") LogininfoExample example);

    int updateByPrimaryKeySelective(Logininfo record);

    int updateByPrimaryKey(Logininfo record);
}