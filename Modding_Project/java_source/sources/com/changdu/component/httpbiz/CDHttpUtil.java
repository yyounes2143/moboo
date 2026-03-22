package com.changdu.component.httpbiz;

import com.google.gson.Gson;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.TimeZone;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0001J\u0006\u0010\u000b\u001a\u00020\n¨\u0006\f"}, d2 = {"Lcom/changdu/component/httpbiz/CDHttpUtil;", "", "", "str", "md5", "data", "key", "hmacSha256", "obj", "toJsonStr", "", "getUTCOffset", "http-biz_release"}, k = 1, mv = {1, 9, 0})
/* loaded from: classes3.dex */
public final class CDHttpUtil {
    @NotNull
    public static final CDHttpUtil INSTANCE = new CDHttpUtil();

    public final int getUTCOffset() {
        TimeZone timeZone = TimeZone.getDefault();
        return (timeZone.getDSTSavings() + timeZone.getRawOffset()) / 1000;
    }

    @NotNull
    public final String hmacSha256(@NotNull String str, @NotNull String str2) {
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(str2.getBytes(Charset.forName("UTF-8")), "HmacSHA256"));
            byte[] doFinal = mac.doFinal(str.getBytes(Charset.forName("UTF-8")));
            StringBuilder sb = new StringBuilder();
            for (byte b : doFinal) {
                sb.append(Integer.toHexString((b & 255) | 256).substring(1, 3));
            }
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    @NotNull
    public final String md5(@NotNull String str) {
        try {
            byte[] digest = MessageDigest.getInstance(SameMD5.TAG).digest(str.getBytes(Charsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                int i = b & 255;
                if (i < 16) {
                    sb.append(0);
                }
                sb.append(Integer.toHexString(i));
            }
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    @NotNull
    public final String toJsonStr(@NotNull Object obj) {
        try {
            return new Gson().toJson(obj);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
