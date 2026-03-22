package com.changdu.component.pay.base;

import android.util.Base64;
import com.google.gson.Gson;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.text.Charsets;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001J\u001f\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001¢\u0006\u0004\b\b\u0010\tJ+\u0010\u000e\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\n2\u0006\u0010\u000b\u001a\u00020\u00022\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001b\u0010\u001a\u001a\u00020\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0014\u001a\u0004\b\u0019\u0010\u0016¨\u0006\u001b"}, d2 = {"Lcom/changdu/component/pay/base/PayUtil;", "", "", "str", "charsetName", "base64EncodeToString", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "obj", "toJsonStr", "(Ljava/lang/Object;)Ljava/lang/String;", "T", "jsonStr", "Ljava/lang/Class;", "clazz", "fromJsonStr", "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "md5", "(Ljava/lang/String;)Ljava/lang/String;", "Lkotlinx/coroutines/CoroutineScope;", "a", "Lkotlin/Lazy;", "getIoLoaderScope", "()Lkotlinx/coroutines/CoroutineScope;", "ioLoaderScope", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "getMainLoaderScope", "mainLoaderScope", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PayUtil {
    @NotNull
    public static final PayUtil INSTANCE = new PayUtil();

    /* renamed from: a  reason: collision with root package name */
    public static final Lazy f5339a = LazyKt.lazy(a.f5340a);
    public static final Lazy b = LazyKt.lazy(b.f5341a);

    public static /* synthetic */ String base64EncodeToString$default(PayUtil payUtil, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "UTF-8";
        }
        return payUtil.base64EncodeToString(str, str2);
    }

    @NotNull
    public final String base64EncodeToString(@NotNull String str, @NotNull String str2) {
        try {
            return Base64.encodeToString(str.getBytes(Charset.forName(str2)), 0);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    @Nullable
    public final <T> T fromJsonStr(@NotNull String str, @NotNull Class<T> cls) {
        try {
            return (T) new Gson().fromJson(str, (Class<Object>) cls);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @NotNull
    public final CoroutineScope getIoLoaderScope() {
        return (CoroutineScope) f5339a.getValue();
    }

    @NotNull
    public final CoroutineScope getMainLoaderScope() {
        return (CoroutineScope) b.getValue();
    }

    @NotNull
    public final String md5(@NotNull String str) {
        try {
            byte[] digest = MessageDigest.getInstance(SameMD5.TAG).digest(str.getBytes(Charsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                int i = b2 & 255;
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
