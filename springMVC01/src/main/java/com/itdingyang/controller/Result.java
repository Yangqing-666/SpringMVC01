package com.itdingyang.controller;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Result {

    private Object data;
    private Integer code;
    private String msg;

    public Result(Integer id,Object data ) {
        this.data = data;
        this.code = code;
    }

    public Result(Integer code,Object data, String msg) {
        this.code = code;
        this.data = data;
        this.msg = msg;
    }
}