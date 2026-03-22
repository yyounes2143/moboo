package com.facebook.appevents.codeless;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.view.View;
import androidx.annotation.RestrictTo;
import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.codeless.ViewIndexer;
import com.facebook.appevents.codeless.internal.UnityReflection;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.InternalSettings;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000 \"2\u00020\u0001:\u0002\"#B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\bJ!\u0010\u000e\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006$"}, d2 = {"Lcom/facebook/appevents/codeless/ViewIndexer;", "", "Landroid/app/Activity;", "activity", "<init>", "(Landroid/app/Activity;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/GraphRequest;", AdActivity.REQUEST_KEY_EXTRA, "", "currentDigest", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequest;Ljava/lang/String;)V", "tree", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Landroid/os/Handler;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "uiThreadHandler", "Ljava/lang/ref/WeakReference;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/ref/WeakReference;", "activityReference", "Ljava/util/Timer;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Timer;", "indexingTimer", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "previousDigest", "Companion", "ScreenshotTaker", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ViewIndexer {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static ViewIndexer f6295Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Timer f6298Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WeakReference<Activity> f6299Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f6300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u000eR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/facebook/appevents/codeless/ViewIndexer$Companion;", "", "<init>", "()V", "", "appIndex", "Lcom/facebook/AccessToken;", "accessToken", RemoteConfigConstants.RequestFieldKey.APP_ID, "requestType", "Lcom/facebook/GraphRequest;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;", "APP_VERSION_PARAM", "Ljava/lang/String;", "PLATFORM_PARAM", "REQUEST_TYPE", "SUCCESS", "TAG", "TREE_PARAM", "Lcom/facebook/appevents/codeless/ViewIndexer;", "instance", "Lcom/facebook/appevents/codeless/ViewIndexer;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
            Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, ViewIndexer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), "App index sent to FB!");
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @Nullable
        public final GraphRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable AccessToken accessToken, @Nullable String str2, @NotNull String str3) {
            if (str == null) {
                return null;
            }
            GraphRequest.Companion companion = GraphRequest.Companion;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            GraphRequest Wwwwwwww2 = companion.Wwwwwwww(accessToken, String.format(Locale.US, "%s/app_indexing", Arrays.copyOf(new Object[]{str2}, 1)), null, null);
            Bundle Wwwwwwwwwwwwww2 = Wwwwwwww2.Wwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwww2 == null) {
                Wwwwwwwwwwwwww2 = new Bundle();
            }
            Wwwwwwwwwwwwww2.putString("tree", str);
            Wwwwwwwwwwwwww2.putString("app_version", AppEventUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            Wwwwwwwwwwwwww2.putString(TPDownloadProxyEnum.USER_PLATFORM, "android");
            Wwwwwwwwwwwwww2.putString("request_type", str3);
            if (Intrinsics.areEqual(str3, "app_indexing")) {
                Wwwwwwwwwwwwww2.putString("device_session_id", CodelessManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            Wwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwww2);
            Wwwwwwww2.Wwww(new GraphRequest.Callback() { // from class: com.facebook.appevents.codeless.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.facebook.GraphRequest.Callback
                public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
                    ViewIndexer.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(graphResponse);
                }
            });
            return Wwwwwwww2;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/facebook/appevents/codeless/ViewIndexer$ScreenshotTaker;", "Ljava/util/concurrent/Callable;", "", "Landroid/view/View;", "rootView", "<init>", "(Landroid/view/View;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Ljava/lang/ref/WeakReference;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/ref/WeakReference;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class ScreenshotTaker implements Callable<String> {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final WeakReference<View> f6301Wwwwwwwwwwwwwwwwwwwwwwwww;

        public ScreenshotTaker(@NotNull View view) {
            this.f6301Wwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(view);
        }

        @Override // java.util.concurrent.Callable
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public String call() {
            View view = this.f6301Wwwwwwwwwwwwwwwwwwwwwwwww.get();
            if (view != null && view.getWidth() != 0 && view.getHeight() != 0) {
                Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                view.draw(new Canvas(createBitmap));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.JPEG, 10, byteArrayOutputStream);
                return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            }
            return "";
        }
    }

    static {
        String canonicalName = ViewIndexer.class.getCanonicalName();
        if (canonicalName == null) {
            canonicalName = "";
        }
        f6296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = canonicalName;
    }

    public ViewIndexer(@NotNull Activity activity) {
        this.f6299Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(activity);
        f6295Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwww(String str, ViewIndexer viewIndexer) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewIndexer.class)) {
            try {
                String Illlllllllllllllllll = Utility.Illlllllllllllllllll(str);
                AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Illlllllllllllllllll != null && Intrinsics.areEqual(Illlllllllllllllllll, viewIndexer.f6297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    return;
                }
                viewIndexer.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww(), "app_indexing"), Illlllllllllllllllll);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewIndexer.class);
            }
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwww(ViewIndexer viewIndexer, TimerTask timerTask) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewIndexer.class)) {
            try {
                Timer timer = viewIndexer.f6298Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (timer != null) {
                    timer.cancel();
                }
                viewIndexer.f6297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
                Timer timer2 = new Timer();
                timer2.scheduleAtFixedRate(timerTask, 0L, 1000L);
                viewIndexer.f6298Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = timer2;
            } catch (Exception unused) {
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewIndexer.class);
            }
        }
    }

    public static final /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewIndexer viewIndexer, String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewIndexer.class)) {
            return;
        }
        try {
            viewIndexer.Wwwwwwwwwwwwwwwwwwwwwwwww(str);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewIndexer.class);
        }
    }

    public static final /* synthetic */ Handler Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewIndexer viewIndexer) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewIndexer.class)) {
            return null;
        }
        try {
            return viewIndexer.f6300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewIndexer.class);
            return null;
        }
    }

    public static final /* synthetic */ String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewIndexer.class)) {
            return null;
        }
        try {
            return f6296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewIndexer.class);
            return null;
        }
    }

    public static final /* synthetic */ WeakReference Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewIndexer viewIndexer) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewIndexer.class)) {
            return null;
        }
        try {
            return viewIndexer.f6299Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewIndexer.class);
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                if (this.f6299Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get() != null) {
                    try {
                        Timer timer = this.f6298Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        if (timer != null) {
                            timer.cancel();
                        }
                        this.f6298Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(final String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.appevents.codeless.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    ViewIndexer.Wwwwwwwwwwwwwwwwwwwwwwww(str, this);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                final TimerTask timerTask = new TimerTask() { // from class: com.facebook.appevents.codeless.ViewIndexer$schedule$indexingTask$1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        try {
                            Activity activity = (Activity) ViewIndexer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewIndexer.this).get();
                            View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppEventUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity);
                            if (activity != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                                String simpleName = activity.getClass().getSimpleName();
                                if (CodelessManager.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                    if (InternalSettings.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                        UnityReflection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                        return;
                                    }
                                    FutureTask futureTask = new FutureTask(new ViewIndexer.ScreenshotTaker(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
                                    ViewIndexer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewIndexer.this).post(futureTask);
                                    String str = "";
                                    try {
                                        str = (String) futureTask.get(1L, TimeUnit.SECONDS);
                                    } catch (Exception unused) {
                                        ViewIndexer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                    }
                                    JSONObject jSONObject = new JSONObject();
                                    try {
                                        jSONObject.put("screenname", simpleName);
                                        jSONObject.put("screenshot", str);
                                        JSONArray jSONArray = new JSONArray();
                                        jSONArray.put(ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
                                        jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, jSONArray);
                                    } catch (JSONException unused2) {
                                        ViewIndexer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                    }
                                    ViewIndexer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewIndexer.this, jSONObject.toString());
                                }
                            }
                        } catch (Exception unused3) {
                            ViewIndexer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                    }
                };
                try {
                    FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.appevents.codeless.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // java.lang.Runnable
                        public final void run() {
                            ViewIndexer.Wwwwwwwwwwwwwwwwwwwwwwwwww(ViewIndexer.this, timerTask);
                        }
                    });
                } catch (RejectedExecutionException unused) {
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable GraphRequest graphRequest, @Nullable String str) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this) && graphRequest != null) {
            try {
                GraphResponse Wwwwwwwwwwwwwwwwwwwwwwww2 = graphRequest.Wwwwwwwwwwwwwwwwwwwwwwww();
                try {
                    JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        if (Intrinsics.areEqual("true", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optString(FirebaseAnalytics.Param.SUCCESS))) {
                            Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, f6296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Successfully send UI component tree to server");
                            this.f6297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
                        }
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.has("is_app_indexing_enabled")) {
                            CodelessManager.Wwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getBoolean("is_app_indexing_enabled"));
                            return;
                        }
                        return;
                    }
                    Intrinsics.stringPlus("Error sending UI component tree to Facebook: ", Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                } catch (JSONException unused) {
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }
}
