package com.itheima.exception;

import com.itheima.entity.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice //控制层通知类
@Slf4j
public class ExceptionCatch {
    //运行时异常捕获
    @ExceptionHandler(RuntimeException.class)
    public Result runtimeEx(RuntimeException ex){
        log.error("出现了RuntimeException ==> "+ex);
        return new Result(false,"服务器繁忙，请稍后重试..." ,null);
    }

    //空指针时异常捕获
    @ExceptionHandler(NullPointerException.class)
    public Result runtimeEx(NullPointerException ex){
        log.error("出现了NullPointerException ==> "+ex);
        return new Result(false,"非法数据，请重新输入" ,null);
    }

    //异常捕获
    @ExceptionHandler(Exception.class)
    public Result runtimeEx(Exception ex){
        log.error("出现了Exception ==> "+ex);
        return new Result(false,"服务器超时，请稍后再试..." ,null);
    }
}
