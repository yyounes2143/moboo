package com.changdu.mobovideo.utils;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.MainThread;
import com.changdu.mobovideo.VideoApplication;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.JvmStatic;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\"\u0010\n\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\bH\u0086@¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\u0003J\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001b\u0010\u0003R\u0016\u0010\u001e\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001c\u0010#\u001a\n  *\u0004\u0018\u00010\u001f0\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R$\u0010)\u001a\u0012\u0012\u0004\u0012\u00020%0$j\b\u0012\u0004\u0012\u00020%`&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006*"}, d2 = {"Lcom/changdu/mobovideo/utils/CDAppProtect;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "", "appProtectConfig", "", "save", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwww", "stack", "Wwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "needDelay", "Wwwwwwwwwwwwwwwwwwwwww", "(Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "bizContent", "bizMsg", "Wwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "mPatched", "Ljava/lang/Thread$UncaughtExceptionHandler;", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Thread$UncaughtExceptionHandler;", "mDefaultUncaughtExceptionHandler", "Ljava/util/ArrayList;", "Lcom/changdu/mobovideo/utils/CDAppProtectModel;", "Lkotlin/collections/ArrayList;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/ArrayList;", "mProtectModelList", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDAppProtect {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5650Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final CDAppProtect INSTANCE = new CDAppProtect();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Thread.UncaughtExceptionHandler f5649Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Thread.getDefaultUncaughtExceptionHandler();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ArrayList<CDAppProtectModel> f5648Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>();

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwww(CDAppProtect cDAppProtect, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        cDAppProtect.Wwwwwwwwwwwwwwwwwwwwww(z);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwww() {
        while (f5650Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                Looper.loop();
            } catch (Throwable th) {
                String stackTraceString = Log.getStackTraceString(th);
                if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "Toast", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "SelectionHandleView", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "Magnifier.show", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "SelectionHandleView", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "ViewRootImpl.handleDragEvent", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "PinnedPopupWindow.show", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "FloatingToolbar.show", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "Context.startForegroundService) did", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "BaseInputConnection", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "getTextBeforeCursor", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "startDragAndDrop", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "dispatchDragEvent", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "TextClassificationAsyncTask", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "startSelectionActionModeAsync", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "Editor.touchPositionIsInSelection", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "BlinkHandler.finishBlink", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "TextClassificationHelper", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "AppMeasurementService", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "SuggestionsPopupWindow", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "startAddPhraseActivity", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "AsyncInputStage", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "HandleView.updatePosition", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "SFEffectsAPI", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "showContextMenu", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "onDialogDismissed", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "com.oppo.intent.action.TRANSLATE", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "SignInHubActivity", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "ProxyBillingActivity", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "AccessibilityInteractionController", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "AlertDialogLayout", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "BadTokenException", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "Activity top position already set to onTop=false", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "reportSizeConfigurations", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "parameter must be a descendant of this view", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "can't deliver broadcast", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "org.chromium.android_webview.AwDataDirLock.b", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "org.chromium.base.JniAndroid.handleException", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "ClassNotFoundException when unmarshalling: androidx.fragment.app.FragmentManagerState", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "com.applovin.impl.mediation.MediationServiceImpl", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "com.google.firebase.messaging.DisplayNotification.showNotification", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "com.appsflyer.appsflyersdk.AppsflyerSdkPlugin", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "io.flutter.plugin.platform.PlatformViewWrapper.draw", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "com.google.firebase.messaging.DisplayNotification.showNotification", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "com.facebook.ads.redexgen", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "com.applovin.impl.h2", false, 2, (Object) null)) {
                    continue;
                } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "Attempt to read from field 'int android.view.View.mViewFlags' on a null object reference", false, 2, (Object) null)) {
                    INSTANCE.Wwwwwwwwwwwwwwwwwwww("Attempt to read from field 'int android.view.View.mViewFlags' on a null object reference", stackTraceString);
                } else if (!StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "java.lang.OutOfMemoryError: pthread_create", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "java.lang.OutOfMemoryError: Could not allocate JNI Env", false, 2, (Object) null)) {
                    if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "com.transsion.widget.v1.AIHelper", false, 2, (Object) null)) {
                        INSTANCE.Wwwwwwwwwwwwwwwwwwww("com.transsion.widget.v1.AIHelper", stackTraceString);
                    } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "android.content.res.Resources$NotFoundException", false, 2, (Object) null) && Build.VERSION.SDK_INT >= 35) {
                        CDAppProtect cDAppProtect = INSTANCE;
                        cDAppProtect.Wwwwwwwwwwwwwwwwwwww("android.content.res.Resources$NotFoundException", stackTraceString);
                        cDAppProtect.Wwwwwwwwwwwwwwwwwwwwww(true);
                    } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "com.android.billingclient.api.BillingFlowParams$Builder.build", false, 2, (Object) null) && Build.VERSION.SDK_INT == 23) {
                        CDAppProtect cDAppProtect2 = INSTANCE;
                        cDAppProtect2.Wwwwwwwwwwwwwwwwwwww("sdk23BillingCrash", stackTraceString);
                        cDAppProtect2.Wwwwwwwwwwwwwwwwwwwwww(true);
                    } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "android.app.RemoteServiceException: Bad notification posted from package com.changdu.mobovideo", false, 2, (Object) null)) {
                        CDAppProtect cDAppProtect3 = INSTANCE;
                        cDAppProtect3.Wwwwwwwwwwwwwwwwwwww("BadNotification", stackTraceString);
                        cDAppProtect3.Wwwwwwwwwwwwwwwwwwwwww(true);
                    } else if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "io.flutter.plugins.quickactions.QuickActions", false, 2, (Object) null)) {
                        INSTANCE.Wwwwwwwwwwwwwwwwwwww("QuickActionsCrash", stackTraceString);
                    } else if (!INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stackTraceString)) {
                        throw th;
                    }
                } else if (AppUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwww(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                    INSTANCE.Wwwwwwwwwwwwwwwwwww(stackTraceString);
                } else {
                    throw th;
                }
            }
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwww(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        String stackTraceString = Log.getStackTraceString(th);
        if (!StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "com.miui.phrase.query.QueryPhraseTask.queryPhrase", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "AsyncTask", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "TextClassificationSession", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "com.applovin.impl.mediation.MediationServiceImpl", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "org.chromium.android_webview.AwDataDirLock.b", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "org.chromium.base.JniAndroid.handleException", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "com.facebook.ads.redexgen", false, 2, (Object) null)) {
            if (!StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "java.lang.OutOfMemoryError: pthread_create", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "java.lang.OutOfMemoryError: Could not allocate JNI Env", false, 2, (Object) null)) {
                if (StringsKt.contains$default((CharSequence) stackTraceString, (CharSequence) "io.flutter.plugins.quickactions.QuickActions", false, 2, (Object) null)) {
                    INSTANCE.Wwwwwwwwwwwwwwwwwwww("QuickActionsCrash", stackTraceString);
                } else if (!INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stackTraceString) && (uncaughtExceptionHandler = f5649Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                }
            } else if (AppUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwww(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                INSTANCE.Wwwwwwwwwwwwwwwwwww(stackTraceString);
            } else {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = f5649Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (uncaughtExceptionHandler2 != null) {
                    uncaughtExceptionHandler2.uncaughtException(thread, th);
                }
            }
        }
    }

    @JvmStatic
    @MainThread
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (f5650Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.changdu.mobovideo.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread, Throwable th) {
                CDAppProtect.Wwwwwwwwwwwwwwwwwwwwwwwwww(thread, th);
            }
        });
        f5650Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        CDAppProtect cDAppProtect = INSTANCE;
        cDAppProtect.Wwwwwwwwwwwwwwwwwwwwwwww();
        cDAppProtect.Wwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwww(String str) {
        Wwwwwwwwwwwwwwwwwwww("oom", str);
        Wwwwwwwwwwwwwwwwwwwww(this, false, 1, null);
    }

    public final void Wwwwwwwwwwwwwwwwwwww(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("bizType", "AppLooperHook");
        jSONObject.put("bizContent", str);
        jSONObject.put("bizMsg", str2);
        SensorsDataAPI.sharedInstance().track("CdAppClientBiz", jSONObject);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(boolean z) {
        if (z) {
            Thread.sleep(500L);
        }
        Runtime.getRuntime().exit(0);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.changdu.mobovideo.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                CDAppProtect.Wwwwwwwwwwwwwwwwwwwwwww();
            }
        });
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        BuildersKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new CDAppProtect$initLocalConfig$1(null), 3, null);
    }

    @Nullable
    public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, boolean z, @NotNull Continuation<? super Unit> continuation) {
        Object withContext = BuildersKt.withContext(Dispatchers.getIO(), new CDAppProtect$handleConfig$2(str, z, null), continuation);
        if (withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return withContext;
        }
        return Unit.INSTANCE;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = AppUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwww(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        return "appProtect" + Wwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        String key;
        ArrayList<CDAppProtectModel> arrayList = f5648Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        synchronized (arrayList) {
            try {
                Iterator<CDAppProtectModel> it = arrayList.iterator();
                while (it.hasNext()) {
                    CDAppProtectModel next = it.next();
                    String key2 = next.getKey();
                    if (key2 != null && !StringsKt.isBlank(key2) && StringsKt.contains$default((CharSequence) str, (CharSequence) next.getKey(), false, 2, (Object) null)) {
                        if (next.getReport()) {
                            CDAppProtect cDAppProtect = INSTANCE;
                            String reportKey = next.getReportKey();
                            if (reportKey != null && !StringsKt.isBlank(reportKey)) {
                                key = next.getReportKey();
                                cDAppProtect.Wwwwwwwwwwwwwwwwwwww(key, str);
                            }
                            key = next.getKey();
                            cDAppProtect.Wwwwwwwwwwwwwwwwwwww(key, str);
                        }
                        if (next.getType() == 1) {
                            Wwwwwwwwwwwwwwwwwwwww(INSTANCE, false, 1, null);
                        }
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
