package com.facebook;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.Profile;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.AppEventsLoggerImpl;
import com.facebook.appevents.AppEventsManager;
import com.facebook.appevents.internal.ActivityLifecycleTracker;
import com.facebook.appevents.internal.AppEventsLoggerUtility;
import com.facebook.appevents.internal.AppLinkManager;
import com.facebook.appevents.ondeviceprocessing.OnDeviceProcessingManager;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.BoltsMeasurementEventListener;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.FetchedAppGateKeepersManager;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.LockOnGetVariable;
import com.facebook.internal.Logger;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.internal.instrument.InstrumentManager;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002uvB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0007¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\nH\u0007¢\u0006\u0004\b\u0011\u0010\fJ\u000f\u0010\u0012\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0013\u0010\u0010J\u000f\u0010\u0014\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0014\u0010\u0010J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0007¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\nH\u0007¢\u0006\u0004\b\u001e\u0010\fJ\u000f\u0010\u001f\u001a\u00020\u0017H\u0007¢\u0006\u0004\b\u001f\u0010\u0003J\u0017\u0010\"\u001a\u00020\n2\u0006\u0010!\u001a\u00020 H\u0007¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u000eH\u0007¢\u0006\u0004\b$\u0010\u0010J\u000f\u0010%\u001a\u00020\u0015H\u0007¢\u0006\u0004\b%\u0010&J\u001f\u0010)\u001a\u00020\u00172\u0006\u0010'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u000eH\u0007¢\u0006\u0004\b)\u0010*J\u001f\u0010+\u001a\u00020\u00172\u0006\u0010'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u000eH\u0003¢\u0006\u0004\b+\u0010*J\u000f\u0010,\u001a\u00020\u000eH\u0007¢\u0006\u0004\b,\u0010\u0010J\u0017\u0010-\u001a\u00020\n2\u0006\u0010'\u001a\u00020\u0015H\u0007¢\u0006\u0004\b-\u0010.J\u0019\u0010/\u001a\u00020\u00172\b\u0010'\u001a\u0004\u0018\u00010\u0015H\u0001¢\u0006\u0004\b/\u0010\u0019J\u000f\u00100\u001a\u00020\u000eH\u0007¢\u0006\u0004\b0\u0010\u0010J\u0017\u00101\u001a\u00020\u00172\u0006\u0010(\u001a\u00020\u000eH\u0007¢\u0006\u0004\b1\u00102J\u0011\u00103\u001a\u0004\u0018\u00010\u000eH\u0007¢\u0006\u0004\b3\u0010\u0010J\u000f\u00104\u001a\u00020\u000eH\u0007¢\u0006\u0004\b4\u0010\u0010J\u000f\u00105\u001a\u00020\nH\u0007¢\u0006\u0004\b5\u0010\fJ\u000f\u00106\u001a\u00020\nH\u0007¢\u0006\u0004\b6\u0010\fJ\u0017\u00108\u001a\u00020\u00172\u0006\u00107\u001a\u00020\nH\u0007¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u00020\nH\u0007¢\u0006\u0004\b:\u0010\fJ\u000f\u0010;\u001a\u00020\nH\u0007¢\u0006\u0004\b;\u0010\fJ\u0017\u0010<\u001a\u00020\u00172\u0006\u00107\u001a\u00020\nH\u0007¢\u0006\u0004\b<\u00109J\u0011\u0010>\u001a\u0004\u0018\u00010=H\u0007¢\u0006\u0004\b>\u0010?J\u000f\u0010A\u001a\u00020@H\u0007¢\u0006\u0004\bA\u0010BR\u001c\u0010F\u001a\n C*\u0004\u0018\u00010\u000e0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010ER$\u0010K\u001a\u0012\u0012\u0004\u0012\u00020 0Gj\b\u0012\u0004\u0012\u00020 `H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010N\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0018\u0010(\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010ER\u0018\u0010Q\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010ER\u0018\u0010S\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010ER\u0018\u0010V\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0016\u0010Z\u001a\u00020W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0016\u0010]\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u0016\u0010^\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\\R\u001c\u0010a\u001a\b\u0012\u0004\u0012\u00020=0_8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b;\u0010`R\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b%\u0010bR\u0016\u0010d\u001a\u00020@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010cR\u0014\u0010g\u001a\u00020e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u0010fR\u0016\u0010h\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u0010ER\u0016\u0010i\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b6\u0010\\R\u0016\u0010j\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b>\u0010\\R\u0016\u0010k\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bA\u0010\\R\u0014\u0010n\u001a\u00020l8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u0010mR\u0016\u0010o\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010ER\u0016\u0010p\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010ER\u0016\u0010s\u001a\u00020q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010rR\u0016\u0010t\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\\¨\u0006w"}, d2 = {"Lcom/facebook/FacebookSdk;", "", "<init>", "()V", "Ljava/util/concurrent/Executor;", "Wwwwwwwwwwwwww", "()Ljava/util/concurrent/Executor;", "", "Wwwwwww", "()J", "", "Wwww", "()Z", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "", "Wwwwwwwwwww", "()Ljava/lang/String;", "Www", "Wwwwwwwwwwwww", "Wwwwwwwwwwww", "Wwwwwwwww", "Landroid/content/Context;", "applicationContext", "", "Kkkkkkkkkkkkkkkkkkk", "(Landroid/content/Context;)V", "Lcom/facebook/FacebookSdk$InitializeCallback;", "callback", "Kkkkkkkkkkkkkkkkkk", "(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/LoggingBehavior;", "behavior", "Kkkkkkkkkkkkkkkkkkkkkkkk", "(Lcom/facebook/LoggingBehavior;)Z", "Wwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "()Landroid/content/Context;", "context", "applicationId", "Kkkkkkkkkkkkkkkkkkkkk", "(Landroid/content/Context;Ljava/lang/String;)V", "Kkkkkkkkkkkkkkkkkkkkkk", "Wwwwww", "Wwwwwwww", "(Landroid/content/Context;)Z", "Kkkkkkkkkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwwwww", "Kkkkkkkkk", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwww", "flag", "Kkkkkkkk", "(Z)V", "Wwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "Kkkkkkkkkk", "Ljava/io/File;", "Wwwwwwwwwwwwwwwwww", "()Ljava/io/File;", "", "Wwwwwwwwwwwwwwwww", "()I", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "TAG", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/HashSet;", "loggingBehaviors", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/Executor;", "executor", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "applicationName", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "appClientToken", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Boolean;", "codelessDebugLogEnabled", "Ljava/util/concurrent/atomic/AtomicLong;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicLong;", "onProgressThreshold", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "isDebugEnabledField", "isLegacyTokenUpgradeSupported", "Lcom/facebook/internal/LockOnGetVariable;", "Lcom/facebook/internal/LockOnGetVariable;", "cacheDir", "Landroid/content/Context;", "I", "callbackRequestCodeOffset", "Ljava/util/concurrent/locks/ReentrantLock;", "Ljava/util/concurrent/locks/ReentrantLock;", "LOCK", "graphApiVersion", "hasCustomTabsPrefetching", "ignoreAppSwitchToLoggedOut", "bypassAppSwitch", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "sdkInitialized", "instagramDomain", "facebookDomain", "Lcom/facebook/FacebookSdk$GraphRequestCreator;", "Lcom/facebook/FacebookSdk$GraphRequestCreator;", "graphRequestCreator", "isFullyInitialized", "GraphRequestCreator", "InitializeCallback", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FacebookSdk {

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5991Wwwwwwwwwwww;
    @JvmField

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5996Wwwwwwwwwwwwwwwww;
    @JvmField

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5997Wwwwwwwwwwwwwwwwww;
    @JvmField

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5998Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Context f6002Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static LockOnGetVariable<File> f6003Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f6004Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile boolean f6005Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile Boolean f6007Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile String f6008Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile String f6009Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile String f6010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Executor f6011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final FacebookSdk INSTANCE = new FacebookSdk();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = FacebookSdk.class.getCanonicalName();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final HashSet<LoggingBehavior> f6012Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = SetsKt.hashSetOf(LoggingBehavior.DEVELOPER_ERRORS);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static AtomicLong f6006Wwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicLong(65536);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static int f6001Wwwwwwwwwwwwwwwwwwwwww = 64206;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ReentrantLock f6000Wwwwwwwwwwwwwwwwwwwww = new ReentrantLock();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f5999Wwwwwwwwwwwwwwwwwwww = ServerProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f5995Wwwwwwwwwwwwwwww = new AtomicBoolean(false);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile String f5994Wwwwwwwwwwwwwww = "instagram.com";
    @NotNull

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile String f5993Wwwwwwwwwwwwww = "facebook.com";
    @NotNull

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public static GraphRequestCreator f5992Wwwwwwwwwwwww = new GraphRequestCreator() { // from class: com.facebook.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
        @Override // com.facebook.FacebookSdk.GraphRequestCreator
        public final GraphRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AccessToken accessToken, String str, JSONObject jSONObject, GraphRequest.Callback callback) {
            GraphRequest Wwwww2;
            Wwwww2 = FacebookSdk.Wwwww(accessToken, str, jSONObject, callback);
            return Wwwww2;
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bá\u0080\u0001\u0018\u00002\u00020\u0001J7\u0010\u000b\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH&¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/facebook/FacebookSdk$GraphRequestCreator;", "", "Lcom/facebook/AccessToken;", "accessToken", "", "publishUrl", "Lorg/json/JSONObject;", "publishParams", "Lcom/facebook/GraphRequest$Callback;", "callback", "Lcom/facebook/GraphRequest;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public interface GraphRequestCreator {
        @NotNull
        GraphRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable AccessToken accessToken, @Nullable String str, @Nullable JSONObject jSONObject, @Nullable GraphRequest.Callback callback);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/facebook/FacebookSdk$InitializeCallback;", "", "onInitialized", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface InitializeCallback {
        void onInitialized();
    }

    @JvmStatic
    public static final void Kkkkkkkk(boolean z) {
        UserSettingsManager.Wwwwwwwwwwwwwww(z);
        if (z) {
            ActivityLifecycleTracker activityLifecycleTracker = ActivityLifecycleTracker.INSTANCE;
            ActivityLifecycleTracker.Wwwwwwwwwww((Application) Wwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwww());
        }
    }

    @JvmStatic
    public static final void Kkkkkkkkk(@NotNull String str) {
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwww(str, "applicationId");
        f6010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
    }

    @JvmStatic
    public static final void Kkkkkkkkkk(boolean z) {
        UserSettingsManager.Wwwwwwwwwwwwwwww(z);
    }

    public static final Void Kkkkkkkkkkk(InitializeCallback initializeCallback) {
        AccessTokenManager.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwww();
        ProfileManager.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
            Profile.Companion companion = Profile.Companion;
            if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }
        if (initializeCallback != null) {
            initializeCallback.onInitialized();
        }
        AppEventsLogger.Companion companion2 = AppEventsLogger.Companion;
        companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww(), f6010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        UserSettingsManager.Wwwwwwwwwwwwwwwwwwwww();
        companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww().getApplicationContext()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        return null;
    }

    public static final void Kkkkkkkkkkkk(boolean z) {
        if (z) {
            f5996Wwwwwwwwwwwwwwwww = true;
        }
    }

    public static final void Kkkkkkkkkkkkk(boolean z) {
        if (z) {
            f5997Wwwwwwwwwwwwwwwwww = true;
        }
    }

    public static final void Kkkkkkkkkkkkkk(boolean z) {
        if (z) {
            f5998Wwwwwwwwwwwwwwwwwww = true;
        }
    }

    public static final void Kkkkkkkkkkkkkkk(boolean z) {
        if (z) {
            AppEventsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public static final void Kkkkkkkkkkkkkkkk(boolean z) {
        if (z) {
            InstrumentManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public static final File Kkkkkkkkkkkkkkkkk() {
        Context context = f6002Wwwwwwwwwwwwwwwwwwwwwww;
        context.getClass();
        return context.getCacheDir();
    }

    @Deprecated(message = "")
    @JvmStatic
    public static final synchronized void Kkkkkkkkkkkkkkkkkk(@NotNull Context context, @Nullable final InitializeCallback initializeCallback) {
        synchronized (FacebookSdk.class) {
            AtomicBoolean atomicBoolean = f5995Wwwwwwwwwwwwwwww;
            if (atomicBoolean.get()) {
                if (initializeCallback != null) {
                    initializeCallback.onInitialized();
                }
                return;
            }
            Validate.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, false);
            Validate.Wwwwwwwwwwwwwwwwwwwwwwwwww(context, false);
            f6002Wwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
            AppEventsLogger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            Context context2 = f6002Wwwwwwwwwwwwwwwwwwwwwww;
            if (context2 != null) {
                Kkkkkkkkkkkkkkkkkkkkkkk(context2);
                String str = f6010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (str != null && str.length() != 0) {
                    String str2 = f6008Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (str2 != null && str2.length() != 0) {
                        atomicBoolean.set(true);
                        if (Wwwwwwwwwwwwwwwwwwww()) {
                            Wwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                        Context context3 = f6002Wwwwwwwwwwwwwwwwwwwwwww;
                        if (context3 != null) {
                            if ((context3 instanceof Application) && UserSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                ActivityLifecycleTracker activityLifecycleTracker = ActivityLifecycleTracker.INSTANCE;
                                Context context4 = f6002Wwwwwwwwwwwwwwwwwwwwwww;
                                if (context4 != null) {
                                    ActivityLifecycleTracker.Wwwwwwwwwww((Application) context4, f6010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                                } else {
                                    throw null;
                                }
                            }
                            AppLinkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppLinkManager.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                                Context context5 = f6002Wwwwwwwwwwwwwwwwwwwwwww;
                                if (context5 != null) {
                                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww((Application) context5);
                                } else {
                                    throw null;
                                }
                            }
                            FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                            NativeProtocol.Wwwwww();
                            BoltsMeasurementEventListener.Companion companion = BoltsMeasurementEventListener.Companion;
                            Context context6 = f6002Wwwwwwwwwwwwwwwwwwwwwww;
                            if (context6 != null) {
                                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context6);
                                f6003Wwwwwwwwwwwwwwwwwwwwwwww = new LockOnGetVariable<>(new Callable() { // from class: com.facebook.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
                                    @Override // java.util.concurrent.Callable
                                    public final Object call() {
                                        File Kkkkkkkkkkkkkkkkk2;
                                        Kkkkkkkkkkkkkkkkk2 = FacebookSdk.Kkkkkkkkkkkkkkkkk();
                                        return Kkkkkkkkkkkkkkkkk2;
                                    }
                                });
                                FeatureManager featureManager = FeatureManager.INSTANCE;
                                FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.Instrument, new FeatureManager.Callback() { // from class: com.facebook.Wwwwwwwwwwwwwwwwwwwwwwwwwww
                                    @Override // com.facebook.internal.FeatureManager.Callback
                                    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                                        FacebookSdk.Kkkkkkkkkkkkkkkk(z);
                                    }
                                });
                                FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.AppEvents, new FeatureManager.Callback() { // from class: com.facebook.Wwwwwwwwwwwwwwwwwwwwwwwwww
                                    @Override // com.facebook.internal.FeatureManager.Callback
                                    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                                        FacebookSdk.Kkkkkkkkkkkkkkk(z);
                                    }
                                });
                                FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.ChromeCustomTabsPrefetching, new FeatureManager.Callback() { // from class: com.facebook.Wwwwwwwwwwwwwwwwwwwwwwwww
                                    @Override // com.facebook.internal.FeatureManager.Callback
                                    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                                        FacebookSdk.Kkkkkkkkkkkkkk(z);
                                    }
                                });
                                FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.IgnoreAppSwitchToLoggedOut, new FeatureManager.Callback() { // from class: com.facebook.Wwwwwwwwwwwwwwwwwwwwwwww
                                    @Override // com.facebook.internal.FeatureManager.Callback
                                    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                                        FacebookSdk.Kkkkkkkkkkkkk(z);
                                    }
                                });
                                FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.BypassAppSwitch, new FeatureManager.Callback() { // from class: com.facebook.Wwwwwwwwwwwwwwwwwwwwwww
                                    @Override // com.facebook.internal.FeatureManager.Callback
                                    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                                        FacebookSdk.Kkkkkkkkkkkk(z);
                                    }
                                });
                                Wwwwwwwwwwwwww().execute(new FutureTask(new Callable() { // from class: com.facebook.Wwwwwwwwwwwwwwwwwwwwww
                                    @Override // java.util.concurrent.Callable
                                    public final Object call() {
                                        Void Kkkkkkkkkkk2;
                                        Kkkkkkkkkkk2 = FacebookSdk.Kkkkkkkkkkk(FacebookSdk.InitializeCallback.this);
                                        return Kkkkkkkkkkk2;
                                    }
                                }));
                                return;
                            }
                            throw null;
                        }
                        throw null;
                    }
                    throw new FacebookException("A valid Facebook app client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk.");
                }
                throw new FacebookException("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
            }
            throw null;
        }
    }

    @Deprecated(message = "")
    @JvmStatic
    public static final synchronized void Kkkkkkkkkkkkkkkkkkk(@NotNull Context context) {
        synchronized (FacebookSdk.class) {
            Kkkkkkkkkkkkkkkkkk(context, null);
        }
    }

    public static final void Kkkkkkkkkkkkkkkkkkkk(Context context, String str) {
        INSTANCE.Kkkkkkkkkkkkkkkkkkkkkk(context, str);
    }

    @JvmStatic
    @VisibleForTesting(otherwise = 3)
    public static final void Kkkkkkkkkkkkkkkkkkkkk(@NotNull Context context, @NotNull final String str) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.class)) {
            try {
                final Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    FetchedAppGateKeepersManager fetchedAppGateKeepersManager = FetchedAppGateKeepersManager.INSTANCE;
                    if (!FetchedAppGateKeepersManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("app_events_killswitch", Wwwwwwwwwwwwwwwwwwwwww(), false)) {
                        Wwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.Wwwwwwwwwwwwwwwwwwwww
                            @Override // java.lang.Runnable
                            public final void run() {
                                FacebookSdk.Kkkkkkkkkkkkkkkkkkkk(applicationContext, str);
                            }
                        });
                    }
                    FeatureManager featureManager = FeatureManager.INSTANCE;
                    if (FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.OnDeviceEventProcessing) && OnDeviceProcessingManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        OnDeviceProcessingManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str, "com.facebook.sdk.attributionTracking");
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, FacebookSdk.class);
            }
        }
    }

    @JvmStatic
    public static final void Kkkkkkkkkkkkkkkkkkkkkkk(@Nullable Context context) {
        if (context != null) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo.metaData != null) {
                    if (f6010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                        Object obj = applicationInfo.metaData.get("com.facebook.sdk.ApplicationId");
                        if (obj instanceof String) {
                            String str = (String) obj;
                            if (StringsKt.startsWith$default(str.toLowerCase(Locale.ROOT), "fb", false, 2, (Object) null)) {
                                f6010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str.substring(2);
                            } else {
                                f6010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
                            }
                        } else if (obj instanceof Number) {
                            throw new FacebookException("App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.");
                        }
                    }
                    if (f6009Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                        f6009Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = applicationInfo.metaData.getString("com.facebook.sdk.ApplicationName");
                    }
                    if (f6008Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                        f6008Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = applicationInfo.metaData.getString("com.facebook.sdk.ClientToken");
                    }
                    if (f6001Wwwwwwwwwwwwwwwwwwwwww == 64206) {
                        f6001Wwwwwwwwwwwwwwwwwwwwww = applicationInfo.metaData.getInt("com.facebook.sdk.CallbackOffset", 64206);
                    }
                    if (f6007Wwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                        f6007Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Boolean.valueOf(applicationInfo.metaData.getBoolean("com.facebook.sdk.CodelessDebugLogEnabled", false));
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
    }

    @JvmStatic
    public static final boolean Kkkkkkkkkkkkkkkkkkkkkkkk(@NotNull LoggingBehavior loggingBehavior) {
        boolean z;
        HashSet<LoggingBehavior> hashSet = f6012Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        synchronized (hashSet) {
            if (Wwww()) {
                if (hashSet.contains(loggingBehavior)) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @JvmStatic
    public static final boolean Kkkkkkkkkkkkkkkkkkkkkkkkk() {
        return f6004Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmStatic
    public static final boolean Kkkkkkkkkkkkkkkkkkkkkkkkkk() {
        return f5995Wwwwwwwwwwwwwwww.get();
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final synchronized boolean Www() {
        boolean z;
        synchronized (FacebookSdk.class) {
            z = f5991Wwwwwwwwwwww;
        }
        return z;
    }

    @JvmStatic
    public static final boolean Wwww() {
        return f6005Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static final GraphRequest Wwwww(AccessToken accessToken, String str, JSONObject jSONObject, GraphRequest.Callback callback) {
        return GraphRequest.Companion.Wwwwwwww(accessToken, str, jSONObject, callback);
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwww() {
        return "17.0.2";
    }

    @JvmStatic
    public static final long Wwwwwww() {
        Validate.Wwwwwwwwwwwwwwwwwwww();
        return f6006Wwwwwwwwwwwwwwwwwwwwwwwwwww.get();
    }

    @JvmStatic
    public static final boolean Wwwwwwww(@NotNull Context context) {
        Validate.Wwwwwwwwwwwwwwwwwwww();
        return context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwww() {
        return f5994Wwwwwwwwwwwwwww;
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwww() {
        String str;
        AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            str = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            str = null;
        }
        return Utility.Www(str);
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwww() {
        Utility utility = Utility.INSTANCE;
        String str = f6013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Utility.Illllllllllllllllllllll(str, String.format("getGraphApiVersion: %s", Arrays.copyOf(new Object[]{f5999Wwwwwwwwwwwwwwwwwwww}, 1)));
        return f5999Wwwwwwwwwwwwwwwwwwww;
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwww() {
        return "fb.gg";
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwww() {
        return f5993Wwwwwwwwwwwwww;
    }

    @JvmStatic
    @NotNull
    public static final Executor Wwwwwwwwwwwwww() {
        ReentrantLock reentrantLock = f6000Wwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            if (f6011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                f6011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = AsyncTask.THREAD_POOL_EXECUTOR;
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            Executor executor = f6011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (executor != null) {
                return executor;
            }
            throw new IllegalStateException("Required value was null.");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwww() {
        return UserSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwww() {
        Validate.Wwwwwwwwwwwwwwwwwwww();
        String str = f6008Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (str != null) {
            return str;
        }
        throw new FacebookException("A valid Facebook client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk. Visit https://developers.facebook.com/docs/android/getting-started#add-app_id for more information.");
    }

    @JvmStatic
    public static final int Wwwwwwwwwwwwwwwww() {
        Validate.Wwwwwwwwwwwwwwwwwwww();
        return f6001Wwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmStatic
    @Nullable
    public static final File Wwwwwwwwwwwwwwwwww() {
        Validate.Wwwwwwwwwwwwwwwwwwww();
        LockOnGetVariable<File> lockOnGetVariable = f6003Wwwwwwwwwwwwwwwwwwwwwwww;
        lockOnGetVariable.getClass();
        return lockOnGetVariable.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwww() {
        return UserSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwww() {
        return UserSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @JvmStatic
    @Nullable
    public static final String Wwwwwwwwwwwwwwwwwwwww() {
        Validate.Wwwwwwwwwwwwwwwwwwww();
        return f6009Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwww() {
        Validate.Wwwwwwwwwwwwwwwwwwww();
        String str = f6010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (str != null) {
            return str;
        }
        throw new FacebookException("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
    }

    @JvmStatic
    @NotNull
    public static final Context Wwwwwwwwwwwwwwwwwwwwwww() {
        Validate.Wwwwwwwwwwwwwwwwwwww();
        Context context = f6002Wwwwwwwwwwwwwwwwwwwwwww;
        context.getClass();
        return context;
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwww() {
        return UserSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        f5991Wwwwwwwwwwww = true;
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkk(Context context, String str) {
        try {
            if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                try {
                    AttributionIdentifiers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AttributionIdentifiers.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
                    SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
                    String stringPlus = Intrinsics.stringPlus(str, "ping");
                    long j = sharedPreferences.getLong(stringPlus, 0L);
                    try {
                        AppEventsLoggerUtility appEventsLoggerUtility = AppEventsLoggerUtility.INSTANCE;
                        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppEventsLoggerUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventsLoggerUtility.GraphAPIActivityType.MOBILE_INSTALL_EVENT, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, AppEventsLogger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context), Wwwwwwww(context), context);
                        String Wwwwwwwwwwwwwwwwwwwwwwww2 = AppEventsLoggerImpl.Companion.Wwwwwwwwwwwwwwwwwwwwwwww();
                        if (Wwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.put("install_referrer", Wwwwwwwwwwwwwwwwwwwwwwww2);
                        }
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        GraphRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = f5992Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, String.format("%s/activities", Arrays.copyOf(new Object[]{str}, 1)), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null);
                        if (j == 0 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                            SharedPreferences.Editor edit = sharedPreferences.edit();
                            edit.putLong(stringPlus, System.currentTimeMillis());
                            edit.apply();
                            Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, f6013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "MOBILE_APP_INSTALL has been logged");
                        }
                    } catch (JSONException e) {
                        throw new FacebookException("An error occurred while publishing install.", e);
                    }
                } catch (Exception e2) {
                    Utility.Illlllllllllllllllllllll("Facebook-publish", e2);
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }
}
