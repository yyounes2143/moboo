package com.changdu.mobovideo.utils;

import android.util.Base64;
import java.nio.charset.Charset;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/changdu/mobovideo/utils/AESCBCUtils;", "", "<init>", "()V", "", "strKey", "strCipherText", "mstrIvParameter", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AESCBCUtils {
    @NotNull
    public static final AESCBCUtils INSTANCE = new AESCBCUtils();

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable String str2, @NotNull String str3) throws Exception {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(Charset.forName("ASCII")), "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS7Padding");
            Charset charset = Charsets.UTF_8;
            new IvParameterSpec(str3.getBytes(charset));
            cipher.init(2, secretKeySpec);
            return new String(cipher.doFinal(Base64.decode(str2, 0)), charset);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
