package com.changdu.component.deeplink.base;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.changdu.component.deeplink.base.util.SharedPrefsHelper;
import com.changdu.component.router.CDRouter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\bÆ\u0002\u0018\u00002\u00020\u0001J\u001d\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ%\u0010\f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0014J/\u0010\u0017\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0018R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010\u000b\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0019\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001d¨\u0006!"}, d2 = {"Lcom/changdu/component/deeplink/base/DeepLinkManager;", "", "Landroid/content/Context;", "context", "Lcom/changdu/component/deeplink/base/CDInstallCallBack;", "cdInstallCallBack", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Lcom/changdu/component/deeplink/base/CDInstallCallBack;)V", "", "faceBookAppId", "faceBookClientToken", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Landroid/content/Intent;", "intent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Intent;Landroid/content/Context;)V", "schema", "host", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "setFaceBookAppId", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "getFaceBookClientToken", "setFaceBookClientToken", "deeplink-base_release"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDeepLinkManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeepLinkManager.kt\ncom/changdu/component/deeplink/base/DeepLinkManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n1855#2,2:139\n1855#2,2:141\n1855#2,2:143\n*S KotlinDebug\n*F\n+ 1 DeepLinkManager.kt\ncom/changdu/component/deeplink/base/DeepLinkManager\n*L\n23#1:139,2\n35#1:141,2\n65#1:143,2\n*E\n"})
/* loaded from: classes3.dex */
public final class DeepLinkManager {
    @NotNull
    public static final DeepLinkManager INSTANCE = new DeepLinkManager();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f5314Wwwwwwwwwwwwwwwwwwwwwwwwwwww = "";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f5315Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Intent f5316Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5317Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static SharedPrefsHelper f5318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Boolean f5319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static CDInstallCallBack f5320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2) {
        f5315Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        f5314Wwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        f5318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new SharedPrefsHelper(context, "deepLinkPrefs", 0, 4, null);
        for (DeepLinkBase deepLinkBase : CDRouter.INSTANCE.invokeRouterServiceList(DeepLinkBase.class)) {
            deepLinkBase.sdkInit(context);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Intent intent, @NotNull Context context) {
        for (DeepLinkBase deepLinkBase : CDRouter.INSTANCE.invokeRouterServiceList(DeepLinkBase.class)) {
            deepLinkBase.retry(context);
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Boolean bool;
        if (f5319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            SharedPrefsHelper sharedPrefsHelper = f5318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (sharedPrefsHelper != null) {
                bool = Boolean.valueOf(sharedPrefsHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("needCheck", true));
            } else {
                bool = null;
            }
            f5319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bool;
        }
        SharedPrefsHelper sharedPrefsHelper2 = f5318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (sharedPrefsHelper2 != null) {
            sharedPrefsHelper2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("needCheck", false);
        }
        return f5319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.booleanValue();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull CDInstallCallBack cDInstallCallBack) {
        f5320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cDInstallCallBack;
        for (DeepLinkBase deepLinkBase : CDRouter.INSTANCE.invokeRouterServiceList(DeepLinkBase.class)) {
            deepLinkBase.setCDInstallCallBack(cDInstallCallBack);
            deepLinkBase.init(context);
        }
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f5315Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Intent intent, @NotNull String str, @NotNull String str2, @NotNull Context context) {
        Uri uri;
        f5317Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        f5316Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = intent;
        if (intent != null) {
            uri = intent.getData();
        } else {
            uri = null;
        }
        if (uri == null) {
            return false;
        }
        String action = intent.getAction();
        if (action == null) {
            action = "";
        }
        if (!Intrinsics.areEqual(uri.getScheme(), str) || !Intrinsics.areEqual(uri.getHost(), str2) || !Intrinsics.areEqual("android.intent.action.VIEW", action)) {
            return false;
        }
        String uri2 = uri.toString();
        if (uri2 != null && !StringsKt.isBlank(uri2)) {
            new SharedPrefsHelper(context, "deepLinkPrefs", 0, 4, null).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("url", uri2);
        }
        intent.setData(null);
        return true;
    }
}
