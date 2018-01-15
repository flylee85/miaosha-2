package com.imooc.miaosha.vo;

import com.imooc.miaosha.domain.MiaoshaUser;
import lombok.Data;

/**
 * 商品详情页需要的信息, 首先是商品信息, 还有用户信息, 还有是否在秒杀, 以及秒杀开始还剩余多久
 */
@Data
public class GoodsDetailVo {

    private int miaoshaStatus = 0;
    private int remainSeconds = 0;

    private GoodsVo goods;
    private MiaoshaUser user;
}
