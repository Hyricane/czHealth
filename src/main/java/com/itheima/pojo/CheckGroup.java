package com.itheima.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.util.List;

/**
 * 检查组
 */
@TableName("t_checkgroup")
public class CheckGroup implements Serializable {
    @TableId(type = IdType.AUTO)
    private Integer id;//主键
    private String code;//编码
    private String name;//名称
    @TableField("help_code")
    private String helpCode;//助记
    private String sex;//适用性别
    private String remark;//介绍
    private String attention;//注意事项
    @TableField(exist = false)
    private List<CheckItem> checkItems;//一个检查组合包含多个检查项

    public CheckGroup() {
    }

    public CheckGroup(Integer id, String code, String name, String helpCode, String sex, String remark, String attention) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.helpCode = helpCode;
        this.sex = sex;
        this.remark = remark;
        this.attention = attention;
    }

    public List<CheckItem> getCheckItems() {
        return checkItems;
    }

    public void setCheckItems(List<CheckItem> checkItems) {
        this.checkItems = checkItems;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHelpCode() {
        return helpCode;
    }

    public void setHelpCode(String helpCode) {
        this.helpCode = helpCode;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getAttention() {
        return attention;
    }

    public void setAttention(String attention) {
        this.attention = attention;
    }
}
