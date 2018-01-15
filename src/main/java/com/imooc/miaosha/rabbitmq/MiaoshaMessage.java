package com.imooc.miaosha.rabbitmq;

import com.imooc.miaosha.domain.MiaoshaUser;
import lombok.Data;

/**
 * 与秒杀有关的要入队的信息
 */
@Data
public class MiaoshaMessage {
	private MiaoshaUser user;
	private long goodsId;
}
