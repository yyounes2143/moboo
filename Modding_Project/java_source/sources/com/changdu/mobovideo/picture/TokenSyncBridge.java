package com.changdu.mobovideo.picture;

import android.content.Context;
import com.changdu.mobovideo.googleengage.UserRequestCache;
import com.changdu.mobovideo.utils.ALocalCache;
import com.changdu.mobovideo.utils.AppBizDataManager;
import com.changdu.mobovideo.utils.GsonUtil;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ \u0010\u000b\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0082@¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/changdu/mobovideo/picture/TokenSyncBridge;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "reason", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/changdu/mobovideo/googleengage/UserRequestCache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/changdu/mobovideo/googleengage/UserRequestCache;", "body", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)I", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTokenSyncBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenSyncBridge.kt\ncom/changdu/mobovideo/picture/TokenSyncBridge\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,152:1\n29#2:153\n*S KotlinDebug\n*F\n+ 1 TokenSyncBridge.kt\ncom/changdu/mobovideo/picture/TokenSyncBridge\n*L\n64#1:153\n*E\n"})
/* loaded from: classes3.dex */
public final class TokenSyncBridge {
    @NotNull
    public static final TokenSyncBridge INSTANCE = new TokenSyncBridge();

    @JvmStatic
    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str) {
        Object runBlocking$default;
        runBlocking$default = BuildersKt__BuildersKt.runBlocking$default(null, new TokenSyncBridge$uploadPendingTokenBlocking$1(context, str, null), 1, null);
        return ((Number) runBlocking$default).intValue();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|8|(1:(2:11|12)(2:38|39))(2:40|(2:64|65)(2:44|(2:62|63)(2:52|(2:58|(1:60)(1:61))(2:56|57))))|13|(2:15|16)(8:18|(1:20)(1:37)|(1:22)|23|(2:31|(1:36)(1:35))(1:27)|28|29|30)))|67|6|7|8|(0)(0)|13|(0)(0)) */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f5 A[Catch: all -> 0x012f, TryCatch #0 {all -> 0x012f, blocks: (B:13:0x0031, B:41:0x00f1, B:43:0x00f5, B:45:0x00fa, B:47:0x0100, B:51:0x010a, B:55:0x0118, B:37:0x0099), top: B:72:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00fa A[Catch: all -> 0x012f, TryCatch #0 {all -> 0x012f, blocks: (B:13:0x0031, B:41:0x00f1, B:43:0x00f5, B:45:0x00fa, B:47:0x0100, B:51:0x010a, B:55:0x0118, B:37:0x0099), top: B:72:0x0025 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.content.Context r11, java.lang.String r12, kotlin.coroutines.Continuation<? super java.lang.Integer> r13) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.picture.TokenSyncBridge.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.content.Context, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (StringsKt.isBlank(str)) {
            return -1;
        }
        try {
            return new JSONObject(str).optInt("code", -1);
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final UserRequestCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String str;
        ALocalCache Wwwwwwwwwwwwwwwwwwwwww2 = AppBizDataManager.INSTANCE.Wwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwww2 != null) {
            str = Wwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("userRequestCache");
        } else {
            str = null;
        }
        if (str == null) {
            str = "";
        }
        if (StringsKt.isBlank(str)) {
            return null;
        }
        try {
            return (UserRequestCache) GsonUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, UserRequestCache.class);
        } catch (Throwable unused) {
            return null;
        }
    }
}
