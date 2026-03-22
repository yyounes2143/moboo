package com.changdu.mobovideo.utils;

import android.util.Base64;
import java.nio.charset.Charset;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/changdu/mobovideo/utils/SaltCrypto;", "", "<init>", "()V", "", "text", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SaltCrypto {
    @NotNull
    public static final SaltCrypto INSTANCE = new SaltCrypto();

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            Charset charset = Charsets.UTF_8;
            cipher.init(1, new SecretKeySpec("MoboV#Salt2025!!".getBytes(charset), "AES"), new IvParameterSpec("MoboV#IV2025Test".getBytes(charset)));
            return Base64.encodeToString(cipher.doFinal(str.getBytes(charset)), 2);
        } catch (Exception unused) {
            return "";
        }
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            Charset charset = Charsets.UTF_8;
            cipher.init(2, new SecretKeySpec("MoboV#Salt2025!!".getBytes(charset), "AES"), new IvParameterSpec("MoboV#IV2025Test".getBytes(charset)));
            return new String(cipher.doFinal(Base64.decode(str, 2)), charset);
        } catch (Exception unused) {
            return "";
        }
    }
}
