package com.facebook.internal;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.IBinder;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.VisibleForTesting;
import com.facebook.AccessToken;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphResponseException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestAsyncTask;
import com.facebook.GraphResponse;
import com.facebook.common.R;
import com.facebook.internal.WebDialog;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.LoginTargetApp;
import com.facebook.share.internal.ShareInternalUtility;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.messaging.Constants;
import com.mbridge.msdk.MBridgeConstans;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import com.unity3d.services.core.di.ServiceProvider;
import io.flutter.plugin.platform.PlatformPlugin;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0003\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0016\u0018\u0000 i2\u00020\u0001:\u0006jiklmnB\u0019\b\u0014\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B!\b\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\nB?\b\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0006\u0010\u0012J/\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\bH\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010$\u001a\u00020#2\u0006\u0010 \u001a\u00020\b2\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u001aH\u0016¢\u0006\u0004\b&\u0010\u001cJ\u000f\u0010'\u001a\u00020\u001aH\u0014¢\u0006\u0004\b'\u0010\u001cJ\u000f\u0010(\u001a\u00020\u001aH\u0014¢\u0006\u0004\b(\u0010\u001cJ\u000f\u0010)\u001a\u00020\u001aH\u0016¢\u0006\u0004\b)\u0010\u001cJ\u000f\u0010*\u001a\u00020\u001aH\u0016¢\u0006\u0004\b*\u0010\u001cJ\u0017\u0010-\u001a\u00020\u001a2\u0006\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b-\u0010.J\u0019\u00100\u001a\u00020\u001a2\b\u0010/\u001a\u0004\u0018\u00010\fH\u0014¢\u0006\u0004\b0\u00101J\u0017\u00103\u001a\u00020\u001a2\u0006\u00102\u001a\u00020\u0004H\u0004¢\u0006\u0004\b3\u00104J\u0019\u00106\u001a\u00020\f2\b\u00105\u001a\u0004\u0018\u00010\u0004H\u0017¢\u0006\u0004\b6\u00107J\r\u00108\u001a\u00020\u001a¢\u0006\u0004\b8\u0010\u001cJ\u0019\u0010:\u001a\u00020\u001a2\b\u00109\u001a\u0004\u0018\u00010\fH\u0004¢\u0006\u0004\b:\u00101J\u0019\u0010=\u001a\u00020\u001a2\b\u0010<\u001a\u0004\u0018\u00010;H\u0004¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\u001aH\u0016¢\u0006\u0004\b?\u0010\u001cR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u00102\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010AR$\u0010I\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR(\u0010P\u001a\u0004\u0018\u00010J2\b\u0010K\u001a\u0004\u0018\u00010J8\u0004@BX\u0084\u000e¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010OR\u0018\u0010T\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0018\u0010W\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010VR\u0018\u0010[\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR\u001c\u0010^\u001a\b\u0018\u00010\\R\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010]R$\u0010b\u001a\u00020#2\u0006\u0010K\u001a\u00020#8\u0004@BX\u0084\u000e¢\u0006\f\n\u0004\bN\u0010_\u001a\u0004\b`\u0010aR\u0016\u0010d\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010_R$\u0010f\u001a\u00020#2\u0006\u0010K\u001a\u00020#8\u0004@BX\u0084\u000e¢\u0006\f\n\u0004\b`\u0010_\u001a\u0004\be\u0010aR\u0018\u0010h\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010g¨\u0006o"}, d2 = {"Lcom/facebook/internal/WebDialog;", "Landroid/app/Dialog;", "Landroid/content/Context;", "context", "", "url", "<init>", "(Landroid/content/Context;Ljava/lang/String;)V", "", "theme", "(Landroid/content/Context;Ljava/lang/String;I)V", "action", "Landroid/os/Bundle;", "parameters", "Lcom/facebook/login/LoginTargetApp;", "targetApp", "Lcom/facebook/internal/WebDialog$OnCompleteListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/login/LoginTargetApp;Lcom/facebook/internal/WebDialog$OnCompleteListener;)V", "screenSize", "", "density", "noPaddingSize", "maxPaddingSize", "Wwwwwwwwwwwwwwwwww", "(IFII)I", "", "Wwwwwwwwwwwwwwwwwwww", "()V", "margin", "Wwwwww", "(I)V", "keyCode", "Landroid/view/KeyEvent;", "event", "", "onKeyDown", "(ILandroid/view/KeyEvent;)Z", "dismiss", "onStart", "onStop", "onDetachedFromWindow", "onAttachedToWindow", "Landroid/view/WindowManager$LayoutParams;", "params", "onWindowAttributesChanged", "(Landroid/view/WindowManager$LayoutParams;)V", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "expectedRedirectUrl", "Wwwwwwww", "(Ljava/lang/String;)V", "urlString", "Wwwwwwwwwwww", "(Ljava/lang/String;)Landroid/os/Bundle;", "Wwwwwwwwwww", "values", "Wwwwwwwww", "", "error", "Wwwwwwwwww", "(Ljava/lang/Throwable;)V", "cancel", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/WebDialog$OnCompleteListener;", "getOnCompleteListener", "()Lcom/facebook/internal/WebDialog$OnCompleteListener;", "Wwwwwww", "(Lcom/facebook/internal/WebDialog$OnCompleteListener;)V", "onCompleteListener", "Landroid/webkit/WebView;", "<set-?>", "Wwwwwwwwwwwwwwwwwwwwww", "Landroid/webkit/WebView;", "Wwwwwwwwwwwwwwwww", "()Landroid/webkit/WebView;", "webView", "Landroid/app/ProgressDialog;", "Wwwwwwwwwwwwwwwwwwwww", "Landroid/app/ProgressDialog;", "spinner", "Landroid/widget/ImageView;", "Landroid/widget/ImageView;", "crossImageView", "Landroid/widget/FrameLayout;", "Wwwwwwwwwwwwwwwwwww", "Landroid/widget/FrameLayout;", "contentFrameLayout", "Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;", "Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;", "uploadTask", "Z", "Wwwwwwwwwwwwwww", "()Z", "isListenerCalled", "Wwwwwwwwwwwwwwww", "isDetached", "Wwwwwwwwwwwwww", "isPageFinished", "Landroid/view/WindowManager$LayoutParams;", "windowParams", "Companion", "Builder", "DialogWebViewClient", "InitCallback", "OnCompleteListener", "UploadStagingResourcesTask", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class WebDialog extends Dialog {
    @Nullable

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public static InitCallback f6814Wwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public static volatile int f6815Wwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public WindowManager.LayoutParams f6817Wwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6818Wwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6819Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6820Wwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public UploadStagingResourcesTask f6821Wwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public FrameLayout f6822Wwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ImageView f6823Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ProgressDialog f6824Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public WebView f6825Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public OnCompleteListener f6826Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6827Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6828Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public static final int f6816Wwwwwwwwwwwww = R.style.com_facebook_activity_theme;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0005¢\u0006\u0004\b\u0007\u0010\bJ=\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0007¢\u0006\u0004\b\u0012\u0010\u0013JE\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001dR\u0014\u0010!\u001a\u00020 8\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010#\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010%\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b%\u0010$R\u0014\u0010&\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b&\u0010\u001dR\u0014\u0010'\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b'\u0010\u001dR\u0014\u0010)\u001a\u00020(8\u0002X\u0082T¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010+\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b+\u0010\u001dR\u0014\u0010,\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b,\u0010\u001dR\u0014\u0010-\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b-\u0010$R\u0018\u0010/\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00101\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010\u001d¨\u00062"}, d2 = {"Lcom/facebook/internal/WebDialog$Companion;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "", "action", "Landroid/os/Bundle;", "parameters", "", "theme", "Lcom/facebook/internal/WebDialog$OnCompleteListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/facebook/internal/WebDialog;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/WebDialog$OnCompleteListener;)Lcom/facebook/internal/WebDialog;", "Lcom/facebook/login/LoginTargetApp;", "targetApp", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/login/LoginTargetApp;Lcom/facebook/internal/WebDialog$OnCompleteListener;)Lcom/facebook/internal/WebDialog;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)V", "API_EC_DIALOG_CANCEL", "I", "BACKGROUND_GRAY", "DEFAULT_THEME", "", "DISABLE_SSL_CHECK_FOR_TESTING", "Z", "DISPLAY_TOUCH", "Ljava/lang/String;", "LOG_TAG", "MAX_PADDING_SCREEN_HEIGHT", "MAX_PADDING_SCREEN_WIDTH", "", "MIN_SCALE_FACTOR", "D", "NO_PADDING_SCREEN_HEIGHT", "NO_PADDING_SCREEN_WIDTH", "PLATFORM_DIALOG_PATH_REGEX", "Lcom/facebook/internal/WebDialog$InitCallback;", "initCallback", "Lcom/facebook/internal/WebDialog$InitCallback;", "webDialogTheme", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            if (i == 0) {
                i = WebDialog.f6816Wwwwwwwwwwwww;
            }
            WebDialog.f6815Wwwwwwwwwwww = i;
        }

        @JvmStatic
        @NotNull
        public final WebDialog Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @Nullable String str, @Nullable Bundle bundle, int i, @NotNull LoginTargetApp loginTargetApp, @Nullable OnCompleteListener onCompleteListener) {
            WebDialog.Wwwwwwwwwwwwwwww(context);
            return new WebDialog(context, str, bundle, i, loginTargetApp, onCompleteListener, null);
        }

        @JvmStatic
        @NotNull
        public final WebDialog Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @Nullable String str, @Nullable Bundle bundle, int i, @Nullable OnCompleteListener onCompleteListener) {
            WebDialog.Wwwwwwwwwwwwwwww(context);
            return new WebDialog(context, str, bundle, i, LoginTargetApp.FACEBOOK, onCompleteListener, null);
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Context context) {
            Bundle bundle;
            if (context != null) {
                try {
                    ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                    if (applicationInfo == null) {
                        bundle = null;
                    } else {
                        bundle = applicationInfo.metaData;
                    }
                    if (bundle != null && WebDialog.f6815Wwwwwwwwwwww == 0) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(applicationInfo.metaData.getInt("com.facebook.sdk.WebDialogTheme"));
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
        }

        @JvmStatic
        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Validate.Wwwwwwwwwwwwwwwwwwww();
            return WebDialog.f6815Wwwwwwwwwwww;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\"\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J(\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\bH\u0016J \u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\u0018"}, d2 = {"Lcom/facebook/internal/WebDialog$DialogWebViewClient;", "Landroid/webkit/WebViewClient;", "(Lcom/facebook/internal/WebDialog;)V", "onPageFinished", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/webkit/WebView;", "url", "", "onPageStarted", "favicon", "Landroid/graphics/Bitmap;", "onReceivedError", "errorCode", "", "description", "failingUrl", "onReceivedSslError", "handler", "Landroid/webkit/SslErrorHandler;", "error", "Landroid/net/http/SslError;", "shouldOverrideUrlLoading", "", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public final class DialogWebViewClient extends WebViewClient {
        public DialogWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(@NotNull WebView webView, @NotNull String str) {
            ProgressDialog progressDialog;
            super.onPageFinished(webView, str);
            if (!WebDialog.this.f6819Wwwwwwwwwwwwwwww && (progressDialog = WebDialog.this.f6824Wwwwwwwwwwwwwwwwwwwww) != null) {
                progressDialog.dismiss();
            }
            FrameLayout frameLayout = WebDialog.this.f6822Wwwwwwwwwwwwwwwwwww;
            if (frameLayout != null) {
                frameLayout.setBackgroundColor(0);
            }
            WebView Wwwwwwwwwwwwwwwww2 = WebDialog.this.Wwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwwwwww2.setVisibility(0);
            }
            ImageView imageView = WebDialog.this.f6823Wwwwwwwwwwwwwwwwwwww;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            WebDialog.this.f6818Wwwwwwwwwwwwwww = true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(@NotNull WebView webView, @NotNull String str, @Nullable Bitmap bitmap) {
            ProgressDialog progressDialog;
            Utility utility = Utility.INSTANCE;
            Utility.Illllllllllllllllllllll("FacebookSDK.WebDialog", Intrinsics.stringPlus("Webview loading URL: ", str));
            super.onPageStarted(webView, str, bitmap);
            if (!WebDialog.this.f6819Wwwwwwwwwwwwwwww && (progressDialog = WebDialog.this.f6824Wwwwwwwwwwwwwwwwwwwww) != null) {
                progressDialog.show();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(@NotNull WebView webView, int i, @NotNull String str, @NotNull String str2) {
            super.onReceivedError(webView, i, str, str2);
            WebDialog.this.Wwwwwwwwww(new FacebookDialogException(str, i, str2));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(@NotNull WebView webView, @NotNull SslErrorHandler sslErrorHandler, @NotNull SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            sslErrorHandler.cancel();
            WebDialog.this.Wwwwwwwwww(new FacebookDialogException(null, -11, null));
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x00a5  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00ab  */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean shouldOverrideUrlLoading(@org.jetbrains.annotations.NotNull android.webkit.WebView r6, @org.jetbrains.annotations.NotNull java.lang.String r7) {
            /*
                r5 = this;
                com.facebook.internal.Utility r6 = com.facebook.internal.Utility.INSTANCE
                java.lang.String r6 = "Redirect URL: "
                java.lang.String r6 = kotlin.jvm.internal.Intrinsics.stringPlus(r6, r7)
                java.lang.String r0 = "FacebookSDK.WebDialog"
                com.facebook.internal.Utility.Illllllllllllllllllllll(r0, r6)
                android.net.Uri r6 = android.net.Uri.parse(r7)
                java.lang.String r0 = r6.getPath()
                r1 = 1
                r2 = 0
                if (r0 == 0) goto L27
                java.lang.String r0 = "^/(v\\d+\\.\\d+/)??dialog/.*"
                java.lang.String r6 = r6.getPath()
                boolean r6 = java.util.regex.Pattern.matches(r0, r6)
                if (r6 == 0) goto L27
                r6 = r1
                goto L28
            L27:
                r6 = r2
            L28:
                com.facebook.internal.WebDialog r0 = com.facebook.internal.WebDialog.this
                java.lang.String r0 = com.facebook.internal.WebDialog.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)
                r3 = 2
                r4 = 0
                boolean r0 = kotlin.text.StringsKt.startsWith$default(r7, r0, r2, r3, r4)
                if (r0 == 0) goto Lbb
                com.facebook.internal.WebDialog r6 = com.facebook.internal.WebDialog.this
                android.os.Bundle r6 = r6.Wwwwwwwwwwww(r7)
                java.lang.String r7 = "error"
                java.lang.String r7 = r6.getString(r7)
                if (r7 != 0) goto L4a
                java.lang.String r7 = "error_type"
                java.lang.String r7 = r6.getString(r7)
            L4a:
                java.lang.String r0 = "error_msg"
                java.lang.String r0 = r6.getString(r0)
                if (r0 != 0) goto L58
                java.lang.String r0 = "error_message"
                java.lang.String r0 = r6.getString(r0)
            L58:
                if (r0 != 0) goto L60
                java.lang.String r0 = "error_description"
                java.lang.String r0 = r6.getString(r0)
            L60:
                java.lang.String r2 = "error_code"
                java.lang.String r2 = r6.getString(r2)
                r3 = -1
                if (r2 == 0) goto L74
                boolean r4 = com.facebook.internal.Utility.Kk(r2)
                if (r4 != 0) goto L74
                int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.NumberFormatException -> L74
                goto L75
            L74:
                r2 = r3
            L75:
                boolean r4 = com.facebook.internal.Utility.Kk(r7)
                if (r4 == 0) goto L89
                boolean r4 = com.facebook.internal.Utility.Kk(r0)
                if (r4 == 0) goto L89
                if (r2 != r3) goto L89
                com.facebook.internal.WebDialog r7 = com.facebook.internal.WebDialog.this
                r7.Wwwwwwwww(r6)
                goto Lba
            L89:
                if (r7 == 0) goto La1
                java.lang.String r6 = "access_denied"
                boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r6)
                if (r6 != 0) goto L9b
                java.lang.String r6 = "OAuthAccessDeniedException"
                boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r6)
                if (r6 == 0) goto La1
            L9b:
                com.facebook.internal.WebDialog r6 = com.facebook.internal.WebDialog.this
                r6.cancel()
                goto Lba
            La1:
                r6 = 4201(0x1069, float:5.887E-42)
                if (r2 != r6) goto Lab
                com.facebook.internal.WebDialog r6 = com.facebook.internal.WebDialog.this
                r6.cancel()
                goto Lba
            Lab:
                com.facebook.FacebookRequestError r6 = new com.facebook.FacebookRequestError
                r6.<init>(r2, r7, r0)
                com.facebook.internal.WebDialog r7 = com.facebook.internal.WebDialog.this
                com.facebook.FacebookServiceException r2 = new com.facebook.FacebookServiceException
                r2.<init>(r6, r0)
                r7.Wwwwwwwwww(r2)
            Lba:
                return r1
            Lbb:
                java.lang.String r0 = "fbconnect://cancel"
                boolean r0 = kotlin.text.StringsKt.startsWith$default(r7, r0, r2, r3, r4)
                if (r0 == 0) goto Lc9
                com.facebook.internal.WebDialog r6 = com.facebook.internal.WebDialog.this
                r6.cancel()
                return r1
            Lc9:
                if (r6 != 0) goto Le9
                java.lang.String r6 = "touch"
                boolean r6 = kotlin.text.StringsKt.contains$default(r7, r6, r2, r3, r4)
                if (r6 == 0) goto Ld4
                goto Le9
            Ld4:
                com.facebook.internal.WebDialog r6 = com.facebook.internal.WebDialog.this     // Catch: android.content.ActivityNotFoundException -> Le9
                android.content.Context r6 = r6.getContext()     // Catch: android.content.ActivityNotFoundException -> Le9
                android.content.Intent r0 = new android.content.Intent     // Catch: android.content.ActivityNotFoundException -> Le9
                java.lang.String r3 = "android.intent.action.VIEW"
                android.net.Uri r7 = android.net.Uri.parse(r7)     // Catch: android.content.ActivityNotFoundException -> Le9
                r0.<init>(r3, r7)     // Catch: android.content.ActivityNotFoundException -> Le9
                r6.startActivity(r0)     // Catch: android.content.ActivityNotFoundException -> Le9
                return r1
            Le9:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.WebDialog.DialogWebViewClient.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/WebDialog$InitCallback;", "", "Landroid/webkit/WebView;", "webView", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/webkit/WebView;)V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface InitCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable WebView webView);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/facebook/internal/WebDialog$OnCompleteListener;", "", "Landroid/os/Bundle;", "values", "Lcom/facebook/FacebookException;", "error", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface OnCompleteListener {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Bundle bundle, @Nullable FacebookException facebookException);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00030\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ-\u0010\u000b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00032\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0003\"\u00020\u0002H\u0014¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u00020\u000e2\u0010\u0010\r\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0013R$\u0010\u0018\u001a\u0010\u0012\f\u0012\n\u0018\u00010\u0014j\u0004\u0018\u0001`\u00150\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;", "Landroid/os/AsyncTask;", "Ljava/lang/Void;", "", "", "action", "Landroid/os/Bundle;", "parameters", "<init>", "(Lcom/facebook/internal/WebDialog;Ljava/lang/String;Landroid/os/Bundle;)V", "p0", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([Ljava/lang/Void;)[Ljava/lang/String;", "results", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Landroid/os/Bundle;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[Ljava/lang/Exception;", "exceptions", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public final class UploadStagingResourcesTask extends AsyncTask<Void, Void, String[]> {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Exception[] f6838Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Exception[0];
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Bundle f6839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f6840Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public UploadStagingResourcesTask(@NotNull String str, @NotNull Bundle bundle) {
            this.f6840Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f6839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bundle;
        }

        public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String[] strArr, int i, UploadStagingResourcesTask uploadStagingResourcesTask, CountDownLatch countDownLatch, GraphResponse graphResponse) {
            FacebookRequestError Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            String str;
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                str = "Error staging photo.";
            } catch (Exception e) {
                uploadStagingResourcesTask.f6838Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i] = e;
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    str = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
                throw new FacebookGraphResponseException(graphResponse, str);
            }
            JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                String optString = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.optString("uri");
                if (optString != null) {
                    strArr[i] = optString;
                    countDownLatch.countDown();
                    return;
                }
                throw new FacebookException("Error staging photo.");
            }
            throw new FacebookException("Error staging photo.");
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String[] strArr) {
            if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                try {
                    if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                        ProgressDialog progressDialog = WebDialog.this.f6824Wwwwwwwwwwwwwwwwwwwww;
                        if (progressDialog != null) {
                            progressDialog.dismiss();
                        }
                        Exception[] excArr = this.f6838Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        int length = excArr.length;
                        int i = 0;
                        while (i < length) {
                            Exception exc = excArr[i];
                            i++;
                            if (exc != null) {
                                WebDialog.this.Wwwwwwwwww(exc);
                                return;
                            }
                        }
                        if (strArr == null) {
                            WebDialog.this.Wwwwwwwwww(new FacebookException("Failed to stage photos for web dialog"));
                            return;
                        }
                        List asList = ArraysKt.asList(strArr);
                        if (asList.contains(null)) {
                            WebDialog.this.Wwwwwwwwww(new FacebookException("Failed to stage photos for web dialog"));
                            return;
                        }
                        Utility utility = Utility.INSTANCE;
                        Utility.Illllllllllllllll(this.f6839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "media", new JSONArray((Collection) asList));
                        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ServerProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Utility.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, FacebookSdk.Wwwwwwwwwww() + "/dialog/" + this.f6840Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                        WebDialog.this.f6828Wwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.toString();
                        ImageView imageView = WebDialog.this.f6823Wwwwwwwwwwwwwwwwwwww;
                        if (imageView != null) {
                            WebDialog.this.Wwwwww((imageView.getDrawable().getIntrinsicWidth() / 2) + 1);
                            return;
                        }
                        throw new IllegalStateException("Required value was null.");
                    }
                } catch (Throwable th) {
                    CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                }
            }
        }

        @Nullable
        public String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Void... voidArr) {
            String[] stringArray;
            if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                return null;
            }
            try {
                if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this) || (stringArray = this.f6839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getStringArray("media")) == null) {
                    return null;
                }
                final String[] strArr = new String[stringArray.length];
                this.f6838Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Exception[stringArray.length];
                final CountDownLatch countDownLatch = new CountDownLatch(stringArray.length);
                ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
                AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                try {
                    int length = stringArray.length - 1;
                    if (length >= 0) {
                        final int i = 0;
                        while (true) {
                            int i2 = i + 1;
                            if (isCancelled()) {
                                Iterator it = concurrentLinkedQueue.iterator();
                                while (it.hasNext()) {
                                    ((GraphRequestAsyncTask) it.next()).cancel(true);
                                }
                                return null;
                            }
                            Uri parse = Uri.parse(stringArray[i]);
                            if (Utility.Illlllllllllllllllllllllllll(parse)) {
                                strArr[i] = parse.toString();
                                countDownLatch.countDown();
                            } else {
                                concurrentLinkedQueue.add(ShareInternalUtility.Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, parse, new GraphRequest.Callback() { // from class: com.facebook.internal.Wwwwwwwwwww
                                    @Override // com.facebook.GraphRequest.Callback
                                    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
                                        WebDialog.UploadStagingResourcesTask.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(strArr, i, this, countDownLatch, graphResponse);
                                    }
                                }).Wwwwwwwwwwwwwwwwwwwwwww());
                            }
                            if (i2 > length) {
                                break;
                            }
                            i = i2;
                        }
                    }
                    countDownLatch.await();
                    return strArr;
                } catch (Exception unused) {
                    Iterator it2 = concurrentLinkedQueue.iterator();
                    while (it2.hasNext()) {
                        ((GraphRequestAsyncTask) it2.next()).cancel(true);
                    }
                    return null;
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ String[] doInBackground(Void[] voidArr) {
            if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                return null;
            }
            try {
                if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                    return null;
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(voidArr);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ void onPostExecute(String[] strArr) {
            if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                try {
                    if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(strArr);
                    }
                } catch (Throwable th) {
                    CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                }
            }
        }
    }

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoginTargetApp.valuesCustom().length];
            iArr[LoginTargetApp.INSTAGRAM.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ WebDialog(Context context, String str, Bundle bundle, int i, LoginTargetApp loginTargetApp, OnCompleteListener onCompleteListener, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, bundle, i, loginTargetApp, onCompleteListener);
    }

    public static final boolean Wwwww(View view, MotionEvent motionEvent) {
        if (!view.hasFocus()) {
            view.requestFocus();
            return false;
        }
        return false;
    }

    public static final void Wwwwwwwwwwwww(WebDialog webDialog, DialogInterface dialogInterface) {
        webDialog.cancel();
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwww(@Nullable Context context) {
        Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
    }

    @SensorsDataInstrumented
    public static final void Wwwwwwwwwwwwwwwwwww(WebDialog webDialog, View view) {
        webDialog.cancel();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public final void Wwwwww(int i) {
        WebSettings settings;
        WebSettings settings2;
        LinearLayout linearLayout = new LinearLayout(getContext());
        final Context context = getContext();
        this.f6825Wwwwwwwwwwwwwwwwwwwwww = new WebView(context) { // from class: com.facebook.internal.WebDialog$setUpWebView$1
            @Override // android.webkit.WebView, android.view.View
            public void onWindowFocusChanged(boolean z) {
                try {
                    super.onWindowFocusChanged(z);
                } catch (NullPointerException unused) {
                }
            }
        };
        InitCallback initCallback = f6814Wwwwwwwwwww;
        if (initCallback != null) {
            initCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwww());
        }
        WebView webView = this.f6825Wwwwwwwwwwwwwwwwwwwwww;
        if (webView != null) {
            webView.setVerticalScrollBarEnabled(false);
        }
        WebView webView2 = this.f6825Wwwwwwwwwwwwwwwwwwwwww;
        if (webView2 != null) {
            webView2.setHorizontalScrollBarEnabled(false);
        }
        WebView webView3 = this.f6825Wwwwwwwwwwwwwwwwwwwwww;
        if (webView3 != null) {
            webView3.setWebViewClient(new DialogWebViewClient());
        }
        WebView webView4 = this.f6825Wwwwwwwwwwwwwwwwwwwwww;
        WebSettings webSettings = null;
        if (webView4 == null) {
            settings = null;
        } else {
            settings = webView4.getSettings();
        }
        if (settings != null) {
            settings.setJavaScriptEnabled(true);
        }
        WebView webView5 = this.f6825Wwwwwwwwwwwwwwwwwwwwww;
        if (webView5 != null) {
            String str = this.f6828Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (str != null) {
                webView5.loadUrl(str);
                JSHookAop.loadUrl(webView5, str);
            } else {
                throw new IllegalStateException("Required value was null.");
            }
        }
        WebView webView6 = this.f6825Wwwwwwwwwwwwwwwwwwwwww;
        if (webView6 != null) {
            webView6.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        }
        WebView webView7 = this.f6825Wwwwwwwwwwwwwwwwwwwwww;
        if (webView7 != null) {
            webView7.setVisibility(4);
        }
        WebView webView8 = this.f6825Wwwwwwwwwwwwwwwwwwwwww;
        if (webView8 == null) {
            settings2 = null;
        } else {
            settings2 = webView8.getSettings();
        }
        if (settings2 != null) {
            settings2.setSavePassword(false);
        }
        WebView webView9 = this.f6825Wwwwwwwwwwwwwwwwwwwwww;
        if (webView9 != null) {
            webSettings = webView9.getSettings();
        }
        if (webSettings != null) {
            webSettings.setSaveFormData(false);
        }
        WebView webView10 = this.f6825Wwwwwwwwwwwwwwwwwwwwww;
        if (webView10 != null) {
            webView10.setFocusable(true);
        }
        WebView webView11 = this.f6825Wwwwwwwwwwwwwwwwwwwwww;
        if (webView11 != null) {
            webView11.setFocusableInTouchMode(true);
        }
        WebView webView12 = this.f6825Wwwwwwwwwwwwwwwwwwwwww;
        if (webView12 != null) {
            webView12.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.internal.Wwwwwwwwwwwwww
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean Wwwww2;
                    Wwwww2 = WebDialog.Wwwww(view, motionEvent);
                    return Wwwww2;
                }
            });
        }
        linearLayout.setPadding(i, i, i, i);
        linearLayout.addView(this.f6825Wwwwwwwwwwwwwwwwwwwwww);
        linearLayout.setBackgroundColor(-872415232);
        FrameLayout frameLayout = this.f6822Wwwwwwwwwwwwwwwwwww;
        if (frameLayout == null) {
            return;
        }
        frameLayout.addView(linearLayout);
    }

    public final void Wwwwwww(@Nullable OnCompleteListener onCompleteListener) {
        this.f6826Wwwwwwwwwwwwwwwwwwwwwww = onCompleteListener;
    }

    public final void Wwwwwwww(@NotNull String str) {
        this.f6827Wwwwwwwwwwwwwwwwwwwwwwww = str;
    }

    public final void Wwwwwwwww(@Nullable Bundle bundle) {
        OnCompleteListener onCompleteListener = this.f6826Wwwwwwwwwwwwwwwwwwwwwww;
        if (onCompleteListener != null && !this.f6820Wwwwwwwwwwwwwwwww) {
            this.f6820Wwwwwwwwwwwwwwwww = true;
            if (onCompleteListener != null) {
                onCompleteListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle, null);
            }
            dismiss();
        }
    }

    public final void Wwwwwwwwww(@Nullable Throwable th) {
        FacebookException facebookException;
        if (this.f6826Wwwwwwwwwwwwwwwwwwwwwww != null && !this.f6820Wwwwwwwwwwwwwwwww) {
            this.f6820Wwwwwwwwwwwwwwwww = true;
            if (th instanceof FacebookException) {
                facebookException = (FacebookException) th;
            } else {
                facebookException = new FacebookException(th);
            }
            OnCompleteListener onCompleteListener = this.f6826Wwwwwwwwwwwwwwwwwwwwwww;
            if (onCompleteListener != null) {
                onCompleteListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, facebookException);
            }
            dismiss();
        }
    }

    public final void Wwwwwwwwwww() {
        int i;
        Object systemService = getContext().getSystemService("window");
        if (systemService != null) {
            Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            int i2 = displayMetrics.widthPixels;
            int i3 = displayMetrics.heightPixels;
            if (i2 < i3) {
                i = i2;
            } else {
                i = i3;
            }
            if (i2 < i3) {
                i2 = i3;
            }
            int min = Math.min(Wwwwwwwwwwwwwwwwww(i, displayMetrics.density, TXVodDownloadDataSource.QUALITY_480P, 800), displayMetrics.widthPixels);
            int min2 = Math.min(Wwwwwwwwwwwwwwwwww(i2, displayMetrics.density, 800, PlatformPlugin.DEFAULT_SYSTEM_UI), displayMetrics.heightPixels);
            Window window = getWindow();
            if (window == null) {
                return;
            }
            window.setLayout(min, min2);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.WindowManager");
    }

    @VisibleForTesting(otherwise = 4)
    @NotNull
    public Bundle Wwwwwwwwwwww(@Nullable String str) {
        Uri parse = Uri.parse(str);
        Utility utility = Utility.INSTANCE;
        Bundle Illlllllllllllllll = Utility.Illlllllllllllllll(parse.getQuery());
        Illlllllllllllllll.putAll(Utility.Illlllllllllllllll(parse.getFragment()));
        return Illlllllllllllllll;
    }

    public final boolean Wwwwwwwwwwwwww() {
        return this.f6818Wwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwww() {
        return this.f6820Wwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final WebView Wwwwwwwwwwwwwwwww() {
        return this.f6825Wwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwww(int i, float f, int i2, int i3) {
        double d;
        int i4 = (int) (i / f);
        if (i4 <= i2) {
            d = 1.0d;
        } else if (i4 >= i3) {
            d = 0.5d;
        } else {
            d = (((i3 - i4) / (i3 - i2)) * 0.5d) + 0.5d;
        }
        return (int) (i * d);
    }

    public final void Wwwwwwwwwwwwwwwwwwww() {
        ImageView imageView = new ImageView(getContext());
        this.f6823Wwwwwwwwwwwwwwwwwwww = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.internal.Wwwwwwwwwwww
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebDialog.Wwwwwwwwwwwwwwwwwww(WebDialog.this, view);
            }
        });
        Drawable drawable = getContext().getResources().getDrawable(R.drawable.com_facebook_close);
        ImageView imageView2 = this.f6823Wwwwwwwwwwwwwwwwwwww;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
        ImageView imageView3 = this.f6823Wwwwwwwwwwwwwwwwwwww;
        if (imageView3 == null) {
            return;
        }
        imageView3.setVisibility(4);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.f6826Wwwwwwwwwwwwwwwwwwwwwww != null && !this.f6820Wwwwwwwwwwwwwwwww) {
            Wwwwwwwwww(new FacebookOperationCanceledException());
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        ProgressDialog progressDialog;
        WebView webView = this.f6825Wwwwwwwwwwwwwwwwwwwwww;
        if (webView != null) {
            webView.stopLoading();
        }
        if (!this.f6819Wwwwwwwwwwwwwwww && (progressDialog = this.f6824Wwwwwwwwwwwwwwwwwwwww) != null && progressDialog.isShowing()) {
            progressDialog.dismiss();
        }
        super.dismiss();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        WindowManager.LayoutParams layoutParams;
        IBinder iBinder;
        Window window;
        WindowManager.LayoutParams attributes;
        IBinder iBinder2;
        this.f6819Wwwwwwwwwwwwwwww = false;
        Utility utility = Utility.INSTANCE;
        if (Utility.Illllllllllllllllll(getContext()) && (layoutParams = this.f6817Wwwwwwwwwwwwww) != null) {
            IBinder iBinder3 = null;
            if (layoutParams == null) {
                iBinder = null;
            } else {
                iBinder = layoutParams.token;
            }
            if (iBinder == null) {
                if (layoutParams != null) {
                    Activity ownerActivity = getOwnerActivity();
                    if (ownerActivity == null) {
                        window = null;
                    } else {
                        window = ownerActivity.getWindow();
                    }
                    if (window == null || (attributes = window.getAttributes()) == null) {
                        iBinder2 = null;
                    } else {
                        iBinder2 = attributes.token;
                    }
                    layoutParams.token = iBinder2;
                }
                WindowManager.LayoutParams layoutParams2 = this.f6817Wwwwwwwwwwwwww;
                if (layoutParams2 != null) {
                    iBinder3 = layoutParams2.token;
                }
                Utility.Illllllllllllllllllllll("FacebookSDK.WebDialog", Intrinsics.stringPlus("Set token on onAttachedToWindow(): ", iBinder3));
            }
        }
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        this.f6824Wwwwwwwwwwwwwwwwwwwww = progressDialog;
        progressDialog.requestWindowFeature(1);
        ProgressDialog progressDialog2 = this.f6824Wwwwwwwwwwwwwwwwwwwww;
        if (progressDialog2 != null) {
            progressDialog2.setMessage(getContext().getString(R.string.com_facebook_loading));
        }
        ProgressDialog progressDialog3 = this.f6824Wwwwwwwwwwwwwwwwwwwww;
        if (progressDialog3 != null) {
            progressDialog3.setCanceledOnTouchOutside(false);
        }
        ProgressDialog progressDialog4 = this.f6824Wwwwwwwwwwwwwwwwwwwww;
        if (progressDialog4 != null) {
            progressDialog4.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.facebook.internal.Wwwwwwwwwwwww
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    WebDialog.Wwwwwwwwwwwww(WebDialog.this, dialogInterface);
                }
            });
        }
        requestWindowFeature(1);
        this.f6822Wwwwwwwwwwwwwwwwwww = new FrameLayout(getContext());
        Wwwwwwwwwww();
        Window window = getWindow();
        if (window != null) {
            window.setGravity(17);
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setSoftInputMode(16);
        }
        Wwwwwwwwwwwwwwwwwwww();
        if (this.f6828Wwwwwwwwwwwwwwwwwwwwwwwww != null) {
            ImageView imageView = this.f6823Wwwwwwwwwwwwwwwwwwww;
            if (imageView != null) {
                Wwwwww((imageView.getDrawable().getIntrinsicWidth() / 2) + 1);
            } else {
                throw new IllegalStateException("Required value was null.");
            }
        }
        FrameLayout frameLayout = this.f6822Wwwwwwwwwwwwwwwwwww;
        if (frameLayout != null) {
            frameLayout.addView(this.f6823Wwwwwwwwwwwwwwwwwwww, new ViewGroup.LayoutParams(-2, -2));
        }
        FrameLayout frameLayout2 = this.f6822Wwwwwwwwwwwwwwwwwww;
        if (frameLayout2 != null) {
            setContentView(frameLayout2);
            return;
        }
        throw new IllegalStateException("Required value was null.");
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.f6819Wwwwwwwwwwwwwwww = true;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, @NotNull KeyEvent keyEvent) {
        Boolean valueOf;
        if (i == 4) {
            WebView webView = this.f6825Wwwwwwwwwwwwwwwwwwwwww;
            if (webView != null) {
                if (webView == null) {
                    valueOf = null;
                } else {
                    valueOf = Boolean.valueOf(webView.canGoBack());
                }
                if (Intrinsics.areEqual(valueOf, Boolean.TRUE)) {
                    WebView webView2 = this.f6825Wwwwwwwwwwwwwwwwwwwwww;
                    if (webView2 != null) {
                        webView2.goBack();
                        return true;
                    }
                    return true;
                }
            }
            cancel();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog
    public void onStart() {
        AsyncTask.Status status;
        super.onStart();
        UploadStagingResourcesTask uploadStagingResourcesTask = this.f6821Wwwwwwwwwwwwwwwwww;
        if (uploadStagingResourcesTask != null) {
            if (uploadStagingResourcesTask == null) {
                status = null;
            } else {
                status = uploadStagingResourcesTask.getStatus();
            }
            if (status == AsyncTask.Status.PENDING) {
                UploadStagingResourcesTask uploadStagingResourcesTask2 = this.f6821Wwwwwwwwwwwwwwwwww;
                if (uploadStagingResourcesTask2 != null) {
                    uploadStagingResourcesTask2.execute(new Void[0]);
                }
                ProgressDialog progressDialog = this.f6824Wwwwwwwwwwwwwwwwwwwww;
                if (progressDialog == null) {
                    return;
                }
                progressDialog.show();
                return;
            }
        }
        Wwwwwwwwwww();
    }

    @Override // android.app.Dialog
    public void onStop() {
        UploadStagingResourcesTask uploadStagingResourcesTask = this.f6821Wwwwwwwwwwwwwwwwww;
        if (uploadStagingResourcesTask != null) {
            uploadStagingResourcesTask.cancel(true);
            ProgressDialog progressDialog = this.f6824Wwwwwwwwwwwwwwwwwwwww;
            if (progressDialog != null) {
                progressDialog.dismiss();
            }
        }
        super.onStop();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowAttributesChanged(@NotNull WindowManager.LayoutParams layoutParams) {
        if (layoutParams.token == null) {
            this.f6817Wwwwwwwwwwwwww = layoutParams;
        }
        super.onWindowAttributesChanged(layoutParams);
    }

    public WebDialog(@NotNull Context context, @NotNull String str) {
        this(context, str, Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public WebDialog(Context context, String str, int i) {
        super(context, i == 0 ? Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() : i);
        this.f6827Wwwwwwwwwwwwwwwwwwwwwwww = "fbconnect://success";
        this.f6828Wwwwwwwwwwwwwwwwwwwwwwwww = str;
    }

    public WebDialog(Context context, String str, Bundle bundle, int i, LoginTargetApp loginTargetApp, OnCompleteListener onCompleteListener) {
        super(context, i == 0 ? Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() : i);
        Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.f6827Wwwwwwwwwwwwwwwwwwwwwwww = "fbconnect://success";
        bundle = bundle == null ? new Bundle() : bundle;
        String str2 = Utility.Kkkkkkkk(context) ? "fbconnect://chrome_os_success" : "fbconnect://success";
        this.f6827Wwwwwwwwwwwwwwwwwwwwwwww = str2;
        bundle.putString("redirect_uri", str2);
        bundle.putString(Constants.ScionAnalytics.MessageType.DISPLAY_NOTIFICATION, "touch");
        bundle.putString("client_id", FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww());
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        bundle.putString(ServiceProvider.NAMED_SDK, String.format(Locale.ROOT, "android-%s", Arrays.copyOf(new Object[]{FacebookSdk.Wwwwww()}, 1)));
        this.f6826Wwwwwwwwwwwwwwwwwwwwwww = onCompleteListener;
        if (Intrinsics.areEqual(str, "share") && bundle.containsKey("media")) {
            this.f6821Wwwwwwwwwwwwwwwwww = new UploadStagingResourcesTask(str, bundle);
            return;
        }
        if (WhenMappings.$EnumSwitchMapping$0[loginTargetApp.ordinal()] == 1) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Utility.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ServerProtocol.Wwwwwwwwwwwwwwwwwwwwwwww(), "oauth/authorize", bundle);
        } else {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ServerProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Utility.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, FacebookSdk.Wwwwwwwwwww() + "/dialog/" + ((Object) str), bundle);
        }
        this.f6828Wwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.toString();
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tB-\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J+\u0010\u0014\u001a\u00020\u00132\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\tR(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0011\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R(\u0010\n\u001a\u0004\u0018\u00010\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0014\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0019R$\u0010 \u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u001c8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0017\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR(\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u0015\u001a\u0004\u0018\u00010\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b!\u0010#R(\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u00068\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b$\u0010&R\u0018\u0010)\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010(¨\u0006*"}, d2 = {"Lcom/facebook/internal/WebDialog$Builder;", "", "Landroid/content/Context;", "context", "", "action", "Landroid/os/Bundle;", "parameters", "<init>", "(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V", "applicationId", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V", "Lcom/facebook/internal/WebDialog$OnCompleteListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/WebDialog$OnCompleteListener;)Lcom/facebook/internal/WebDialog$Builder;", "Lcom/facebook/internal/WebDialog;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/internal/WebDialog;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "<set-?>", "Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/content/Context;", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "theme", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/WebDialog$OnCompleteListener;", "()Lcom/facebook/internal/WebDialog$OnCompleteListener;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Bundle;", "()Landroid/os/Bundle;", "Lcom/facebook/AccessToken;", "Lcom/facebook/AccessToken;", "accessToken", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static class Builder {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public AccessToken f6829Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Bundle f6830Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public OnCompleteListener f6831Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f6832Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f6833Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f6834Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Context f6835Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder(@NotNull Context context, @NotNull String str, @Nullable Bundle bundle) {
            AccessToken.Companion companion = AccessToken.Companion;
            this.f6829Wwwwwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (!companion.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
                String Kkkkkkkkkkkkkkkkkkkkkk2 = Utility.Kkkkkkkkkkkkkkkkkkkkkk(context);
                if (Kkkkkkkkkkkkkkkkkkkkkk2 != null) {
                    this.f6834Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Kkkkkkkkkkkkkkkkkkkkkk2;
                } else {
                    throw new FacebookException("Attempted to create a builder without a valid access token or a valid default Application ID.");
                }
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, bundle);
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable OnCompleteListener onCompleteListener) {
            this.f6831Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = onCompleteListener;
            return this;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6832Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6830Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final OnCompleteListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6831Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final Context Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6835Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6834Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, Bundle bundle) {
            this.f6835Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
            this.f6833Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            if (bundle != null) {
                this.f6830Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = bundle;
            } else {
                this.f6830Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Bundle();
            }
        }

        @Nullable
        public WebDialog Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            AccessToken accessToken = this.f6829Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (accessToken != null) {
                Bundle bundle = this.f6830Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                String str = null;
                if (bundle != null) {
                    if (accessToken == null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = accessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    bundle.putString("app_id", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                Bundle bundle2 = this.f6830Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (bundle2 != null) {
                    AccessToken accessToken2 = this.f6829Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (accessToken2 != null) {
                        str = accessToken2.Wwwwwwwwwwwwwwwwwwwwww();
                    }
                    bundle2.putString("access_token", str);
                }
            } else {
                Bundle bundle3 = this.f6830Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (bundle3 != null) {
                    bundle3.putString("app_id", this.f6834Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
            }
            Companion companion = WebDialog.Companion;
            Context context = this.f6835Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (context != null) {
                return companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, this.f6833Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6830Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6832Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6831Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            throw new IllegalStateException("Required value was null.");
        }

        public Builder(@NotNull Context context, @Nullable String str, @NotNull String str2, @Nullable Bundle bundle) {
            this.f6834Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(str == null ? Utility.Kkkkkkkkkkkkkkkkkkkkkk(context) : str, "applicationId");
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str2, bundle);
        }
    }
}
