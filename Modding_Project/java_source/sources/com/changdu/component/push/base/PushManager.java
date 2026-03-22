package com.changdu.component.push.base;

import android.content.Context;
import android.content.Intent;
import com.changdu.component.router.CDRouter;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0016\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007J\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015J\u0018\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0016\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0004J\u000e\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\tJ\u000e\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u000bJ\u0006\u0010\u001e\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/changdu/component/push/base/PushManager;", "", "()V", "PUSH_MESSAGE_TYPE_CHAT", "", "PUSH_MESSAGE_TYPE_MESSAGE", "mToken", "", "messageCallBack", "Lcom/changdu/component/push/base/BaseMessageCallback;", "tokenCallback", "Lcom/changdu/component/push/base/BaseTokenCallback;", "firebaseMessageHandleIntent", "", "intent", "Landroid/content/Intent;", "handleReceivedPushMessage", "messageId", "pushMessageJsonStr", "init", "context", "Landroid/content/Context;", "realReportToken", BidResponsed.KEY_TOKEN, "pushType", "registerToken", "setMessageCallBack", "callBack", "setTokenCallback", "callback", "tryRegisterToken", "push-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPushManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushManager.kt\ncom/changdu/component/push/base/PushManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1855#2,2:87\n*S KotlinDebug\n*F\n+ 1 PushManager.kt\ncom/changdu/component/push/base/PushManager\n*L\n26#1:87,2\n*E\n"})
/* loaded from: classes3.dex */
public final class PushManager {
    public static final int PUSH_MESSAGE_TYPE_CHAT = 1;
    public static final int PUSH_MESSAGE_TYPE_MESSAGE = 0;
    @Nullable
    private static BaseMessageCallback messageCallBack;
    @Nullable
    private static BaseTokenCallback tokenCallback;
    @NotNull
    public static final PushManager INSTANCE = new PushManager();
    @NotNull
    private static String mToken = "";

    private PushManager() {
    }

    private final void realReportToken(String str, int i) {
        BaseTokenCallback baseTokenCallback;
        if (!StringsKt.isBlank(str) && (baseTokenCallback = tokenCallback) != null) {
            baseTokenCallback.realReportToken(str, i);
        }
    }

    public final void firebaseMessageHandleIntent(@Nullable Intent intent) {
        try {
            BaseMessageCallback baseMessageCallback = messageCallBack;
            if (baseMessageCallback != null) {
                baseMessageCallback.firebaseMessageHandleIntent(intent);
            }
        } catch (Throwable unused) {
        }
    }

    public final void handleReceivedPushMessage(@NotNull String str, @NotNull String str2) {
        BaseMessageCallback baseMessageCallback = messageCallBack;
        if (baseMessageCallback != null) {
            baseMessageCallback.handleReceivedPushMessage(str, str2);
        }
    }

    public final void init(@NotNull Context context) {
        for (BasePushInstance basePushInstance : CDRouter.INSTANCE.invokeRouterServiceList(BasePushInstance.class)) {
            basePushInstance.init(context);
        }
    }

    public final void registerToken(@NotNull String str, int i) {
        mToken = str;
        realReportToken(str, i);
    }

    public final void setMessageCallBack(@NotNull BaseMessageCallback baseMessageCallback) {
        messageCallBack = baseMessageCallback;
    }

    public final void setTokenCallback(@NotNull BaseTokenCallback baseTokenCallback) {
        tokenCallback = baseTokenCallback;
    }

    public final void tryRegisterToken() {
        BasePushInstance basePushInstance = (BasePushInstance) CDRouter.INSTANCE.invokeRouterService(BasePushInstance.class);
        if (basePushInstance == null) {
            return;
        }
        if (mToken.length() > 0) {
            realReportToken(mToken, basePushInstance.getPushType());
            return;
        }
        String deviceToken = basePushInstance.getDeviceToken();
        if (deviceToken.length() > 0) {
            realReportToken(deviceToken, basePushInstance.getPushType());
        }
    }
}
