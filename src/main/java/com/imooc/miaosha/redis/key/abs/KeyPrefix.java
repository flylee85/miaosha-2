package com.imooc.miaosha.redis.key.abs;

/**
 * 把存入redis的key增加了前缀, 也增加了这种key的过期时间
 */
public interface KeyPrefix {
		
	int expireSeconds();
	
	String getPrefix();
	
}
