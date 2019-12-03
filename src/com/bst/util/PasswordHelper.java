package com.bst.util;

import com.bst.pojo.SysUserEntity;
import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;



public class PasswordHelper {
    private RandomNumberGenerator randomNumberGenerator = new SecureRandomNumberGenerator();
    //加密算法名称
    private static String algorithmName = "md5";
    //哈希的次数（加盐的次数）
    private static final int hashIterations = 2;

    public void encryptPassword(SysUserEntity user) {
        /*
        * randomNumberGenerator.nextBytes().toHex()
        * 随机生成加盐的值
        *  */
        user.setSalt(randomNumberGenerator.nextBytes().toHex());
        String newPassword = new SimpleHash(algorithmName, user.getPassword(),
                ByteSource.Util.bytes(user.getSalt()), hashIterations).toHex();
        user.setPassword(newPassword);
    }

    public static String encryptPassword(String passWord,String salt) {
        /* 生成的密文  使用md5加盐进行 algorithmName次 hash后的结果 */
        String newPassword = new SimpleHash(algorithmName, passWord,
                ByteSource.Util.bytes(salt), hashIterations).toHex();
        return newPassword;
    }
}
