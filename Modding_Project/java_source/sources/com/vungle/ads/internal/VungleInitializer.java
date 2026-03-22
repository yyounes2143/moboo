package com.vungle.ads.internal;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.ContextCompat;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.InitializationListener;
import com.vungle.ads.InvalidAppId;
import com.vungle.ads.OutOfMemory;
import com.vungle.ads.SdkNotInitialized;
import com.vungle.ads.SdkVersionTooLow;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.TimeIntervalMetric;
import com.vungle.ads.VungleError;
import com.vungle.ads.VungleWrapperFramework;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.load.MraidJsLoader;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.network.VungleHeader;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.task.CleanupJob;
import com.vungle.ads.internal.task.JobRunner;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import com.vungle.ads.internal.util.ThreadUtil;
import com.vungle.ads.internal.util.Utils;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0000\u0018\u0000 *2\u00020\u0001:\u0001*B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\r\u0010\u0019\u001a\u00020\u0014H\u0000¢\u0006\u0002\b\u001aJ\u0010\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0018H\u0002J\u001e\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u0007J\u0010\u0010!\u001a\u00020\u001d2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0006\u0010\b\u001a\u00020\u001dJ\u0010\u0010\"\u001a\u00020\u00142\u0006\u0010#\u001a\u00020$H\u0002J\b\u0010%\u001a\u00020\u0014H\u0002J\u0016\u0010&\u001a\u00020\u00142\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\b\u001a\u00020\t8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\n\u0010\u0002\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u000f\u001a\u00020\t8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0010\u0010\u0002\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000e¨\u0006+²\u0006\n\u0010,\u001a\u00020-X\u008a\u0084\u0002²\u0006\n\u0010.\u001a\u00020/X\u008a\u0084\u0002²\u0006\n\u00100\u001a\u000201X\u008a\u0084\u0002²\u0006\n\u00102\u001a\u000203X\u008a\u0084\u0002²\u0006\n\u00104\u001a\u000205X\u008a\u0084\u0002²\u0006\n\u00106\u001a\u000207X\u008a\u0084\u0002²\u0006\n\u0010,\u001a\u00020-X\u008a\u0084\u0002"}, d2 = {"Lcom/vungle/ads/internal/VungleInitializer;", "", "()V", "initDurationMetric", "Lcom/vungle/ads/TimeIntervalMetric;", "initializationCallbackArray", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcom/vungle/ads/InitializationListener;", "isInitialized", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isInitialized$vungle_ads_release$annotations", "isInitialized$vungle_ads_release", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "setInitialized$vungle_ads_release", "(Ljava/util/concurrent/atomic/AtomicBoolean;)V", "isInitializing", "isInitializing$vungle_ads_release$annotations", "isInitializing$vungle_ads_release", "setInitializing$vungle_ads_release", "configure", "", "context", "Landroid/content/Context;", RemoteConfigConstants.RequestFieldKey.APP_ID, "", "deInit", "deInit$vungle_ads_release", "downloadMraidJs", "hasInvalidChar", "", "value", "init", "initializationCallback", "isAppIdInvalid", "onInitError", "exception", "Lcom/vungle/ads/VungleError;", "onInitSuccess", "setIntegrationName", "wrapperFramework", "Lcom/vungle/ads/VungleWrapperFramework;", "wrapperFrameworkVersion", "Companion", "vungle-ads_release", "sdkExecutors", "Lcom/vungle/ads/internal/executor/Executors;", "vungleApiClient", "Lcom/vungle/ads/internal/network/VungleApiClient;", "filePreferences", "Lcom/vungle/ads/internal/persistence/FilePreferences;", "jobRunner", "Lcom/vungle/ads/internal/task/JobRunner;", "pathProvider", "Lcom/vungle/ads/internal/util/PathProvider;", "downloader", "Lcom/vungle/ads/internal/downloader/Downloader;"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class VungleInitializer {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "VungleInitializer";
    @NotNull
    private AtomicBoolean isInitialized = new AtomicBoolean(false);
    @NotNull
    private AtomicBoolean isInitializing = new AtomicBoolean(false);
    @NotNull
    private final CopyOnWriteArrayList<InitializationListener> initializationCallbackArray = new CopyOnWriteArrayList<>();
    @NotNull
    private final TimeIntervalMetric initDurationMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.INIT_TO_SUCCESS_CALLBACK_DURATION_MS);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/internal/VungleInitializer$Companion;", "", "()V", "TAG", "", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private final void configure(final Context context, String str) {
        final Context context2;
        boolean z;
        try {
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            Lazy lazy = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<FilePreferences>() { // from class: com.vungle.ads.internal.VungleInitializer$configure$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.persistence.FilePreferences, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final FilePreferences invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(FilePreferences.class);
                }
            });
            ConfigManager configManager = ConfigManager.INSTANCE;
            ConfigPayload cachedConfig = configManager.getCachedConfig(m293configure$lambda4(lazy), str);
            if (cachedConfig != null) {
                context2 = context;
                ConfigManager.initWithConfig$vungle_ads_release$default(configManager, context2, cachedConfig, true, null, 8, null);
                z = true;
            } else {
                context2 = context;
                z = false;
            }
            this.isInitialized.set(true);
            onInitSuccess();
            Logger.Companion.d(TAG, "Running cleanup and resend tpat jobs. " + Thread.currentThread().getId());
            m294configure$lambda5(LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<JobRunner>() { // from class: com.vungle.ads.internal.VungleInitializer$configure$$inlined$inject$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.task.JobRunner] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final JobRunner invoke() {
                    return ServiceLocator.Companion.getInstance(context2).getService(JobRunner.class);
                }
            })).execute(CleanupJob.Companion.makeJobInfo$default(CleanupJob.Companion, null, 1, null));
            if (!z) {
                configManager.fetchConfigAsync$vungle_ads_release(context2, new Function1<Boolean, Unit>() { // from class: com.vungle.ads.internal.VungleInitializer$configure$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                        invoke(bool.booleanValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(boolean z2) {
                        if (z2) {
                            VungleInitializer.this.downloadMraidJs(context2);
                        }
                    }
                });
            } else {
                downloadMraidJs(context2);
            }
        } catch (Throwable th) {
            Logger.Companion.e(TAG, "Cannot get config", th);
        }
    }

    /* renamed from: configure$lambda-4  reason: not valid java name */
    private static final FilePreferences m293configure$lambda4(Lazy<FilePreferences> lazy) {
        return lazy.getValue();
    }

    /* renamed from: configure$lambda-5  reason: not valid java name */
    private static final JobRunner m294configure$lambda5(Lazy<? extends JobRunner> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void downloadMraidJs(final Context context) {
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        MraidJsLoader.downloadJs$default(MraidJsLoader.INSTANCE, m295downloadMraidJs$lambda6(LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<PathProvider>() { // from class: com.vungle.ads.internal.VungleInitializer$downloadMraidJs$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.util.PathProvider] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PathProvider invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(PathProvider.class);
            }
        })), m296downloadMraidJs$lambda7(LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Downloader>() { // from class: com.vungle.ads.internal.VungleInitializer$downloadMraidJs$$inlined$inject$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.downloader.Downloader, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Downloader invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(Downloader.class);
            }
        })), m297downloadMraidJs$lambda8(LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Executors>() { // from class: com.vungle.ads.internal.VungleInitializer$downloadMraidJs$$inlined$inject$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.executor.Executors] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Executors invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(Executors.class);
            }
        })).getBackgroundExecutor(), null, null, 24, null);
    }

    /* renamed from: downloadMraidJs$lambda-6  reason: not valid java name */
    private static final PathProvider m295downloadMraidJs$lambda6(Lazy<PathProvider> lazy) {
        return lazy.getValue();
    }

    /* renamed from: downloadMraidJs$lambda-7  reason: not valid java name */
    private static final Downloader m296downloadMraidJs$lambda7(Lazy<? extends Downloader> lazy) {
        return lazy.getValue();
    }

    /* renamed from: downloadMraidJs$lambda-8  reason: not valid java name */
    private static final Executors m297downloadMraidJs$lambda8(Lazy<? extends Executors> lazy) {
        return lazy.getValue();
    }

    private final boolean hasInvalidChar(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (!Character.isLetterOrDigit(charAt) && charAt != '.') {
                return true;
            }
        }
        return false;
    }

    /* renamed from: init$lambda-0  reason: not valid java name */
    private static final Executors m298init$lambda0(Lazy<? extends Executors> lazy) {
        return lazy.getValue();
    }

    /* renamed from: init$lambda-1  reason: not valid java name */
    private static final VungleApiClient m299init$lambda1(Lazy<VungleApiClient> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: init$lambda-2  reason: not valid java name */
    public static final void m300init$lambda2(Context context, String str, VungleInitializer vungleInitializer, Lazy lazy) {
        PrivacyManager.INSTANCE.init(context);
        m299init$lambda1(lazy).initialize(str);
        vungleInitializer.configure(context, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: init$lambda-3  reason: not valid java name */
    public static final void m301init$lambda3(VungleInitializer vungleInitializer) {
        vungleInitializer.onInitError(new OutOfMemory("Config: Out of Memory").logError$vungle_ads_release());
    }

    private final boolean isAppIdInvalid(String str) {
        if (!StringsKt.isBlank(str) && !hasInvalidChar(str)) {
            return false;
        }
        return true;
    }

    private final void onInitError(final VungleError vungleError) {
        this.isInitializing.set(false);
        String localizedMessage = vungleError.getLocalizedMessage();
        if (localizedMessage == null) {
            localizedMessage = "Exception code is " + vungleError.getCode();
        }
        this.initDurationMetric.setMetricType(Sdk.SDKMetric.SDKMetricType.INIT_TO_FAIL_CALLBACK_DURATION_MS);
        this.initDurationMetric.markEnd();
        AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(this.initDurationMetric, (LogEntry) null, localizedMessage);
        ThreadUtil.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.internal.VungleInitializer$onInitError$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                CopyOnWriteArrayList<InitializationListener> copyOnWriteArrayList;
                CopyOnWriteArrayList copyOnWriteArrayList2;
                Logger.Companion.e("VungleInitializer", "onError");
                copyOnWriteArrayList = VungleInitializer.this.initializationCallbackArray;
                VungleError vungleError2 = vungleError;
                for (InitializationListener initializationListener : copyOnWriteArrayList) {
                    initializationListener.onError(vungleError2);
                }
                copyOnWriteArrayList2 = VungleInitializer.this.initializationCallbackArray;
                copyOnWriteArrayList2.clear();
            }
        });
        Logger.Companion.e(TAG, localizedMessage);
    }

    private final void onInitSuccess() {
        this.isInitializing.set(false);
        this.initDurationMetric.setMetricType(Sdk.SDKMetric.SDKMetricType.INIT_TO_SUCCESS_CALLBACK_DURATION_MS);
        this.initDurationMetric.markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.initDurationMetric, (LogEntry) null, (String) null, 6, (Object) null);
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "onSuccess " + Thread.currentThread().getId());
        ThreadUtil.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.internal.VungleInitializer$onInitSuccess$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                CopyOnWriteArrayList<InitializationListener> copyOnWriteArrayList;
                CopyOnWriteArrayList copyOnWriteArrayList2;
                copyOnWriteArrayList = VungleInitializer.this.initializationCallbackArray;
                for (InitializationListener initializationListener : copyOnWriteArrayList) {
                    initializationListener.onSuccess();
                }
                copyOnWriteArrayList2 = VungleInitializer.this.initializationCallbackArray;
                copyOnWriteArrayList2.clear();
            }
        });
    }

    public final void deInit$vungle_ads_release() {
        ServiceLocator.Companion.deInit();
        VungleApiClient.Companion.reset$vungle_ads_release();
        this.isInitialized.set(false);
        this.isInitializing.set(false);
        this.initializationCallbackArray.clear();
    }

    public final void init(@NotNull final String str, @NotNull final Context context, @NotNull InitializationListener initializationListener) {
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.SDK_INIT_API), (LogEntry) null, (String) null, 6, (Object) null);
        this.initDurationMetric.markStart();
        this.initializationCallbackArray.add(initializationListener);
        if (isAppIdInvalid(str)) {
            onInitError(new InvalidAppId("App id invalid: " + str + ", package name: " + context.getPackageName()).logError$vungle_ads_release());
        } else if (Utils.INSTANCE.isOSVersionInvalid()) {
            Logger.Companion.e(TAG, "Init: SDK is supported only for API versions 25 and above.");
            onInitError(new SdkVersionTooLow("Init: SDK is supported only for API versions 25 and above.").logError$vungle_ads_release());
        } else {
            ConfigManager.INSTANCE.setAppId$vungle_ads_release(str);
            if (this.isInitialized.get()) {
                Logger.Companion.d(TAG, "init already complete");
                onInitSuccess();
            } else if (this.isInitializing.getAndSet(true)) {
                Logger.Companion.d(TAG, "init already in progress");
            } else if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") == 0 && ContextCompat.checkSelfPermission(context, "android.permission.INTERNET") == 0) {
                ServiceLocator.Companion companion = ServiceLocator.Companion;
                LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
                Lazy lazy = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Executors>() { // from class: com.vungle.ads.internal.VungleInitializer$init$$inlined$inject$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.executor.Executors] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final Executors invoke() {
                        return ServiceLocator.Companion.getInstance(context).getService(Executors.class);
                    }
                });
                final Lazy lazy2 = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.VungleInitializer$init$$inlined$inject$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final VungleApiClient invoke() {
                        return ServiceLocator.Companion.getInstance(context).getService(VungleApiClient.class);
                    }
                });
                m298init$lambda0(lazy).getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.ads.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        VungleInitializer.m300init$lambda2(context, str, this, lazy2);
                    }
                }, new Runnable() { // from class: com.vungle.ads.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        VungleInitializer.m301init$lambda3(VungleInitializer.this);
                    }
                });
            } else {
                Logger.Companion.e(TAG, "Network permissions not granted");
                onInitError(new SdkNotInitialized("Network permissions not granted").logError$vungle_ads_release());
            }
        }
    }

    public final boolean isInitialized() {
        return this.isInitialized.get();
    }

    @NotNull
    public final AtomicBoolean isInitialized$vungle_ads_release() {
        return this.isInitialized;
    }

    @NotNull
    public final AtomicBoolean isInitializing$vungle_ads_release() {
        return this.isInitializing;
    }

    public final void setInitialized$vungle_ads_release(@NotNull AtomicBoolean atomicBoolean) {
        this.isInitialized = atomicBoolean;
    }

    public final void setInitializing$vungle_ads_release(@NotNull AtomicBoolean atomicBoolean) {
        this.isInitializing = atomicBoolean;
    }

    public final void setIntegrationName(@NotNull VungleWrapperFramework vungleWrapperFramework, @NotNull String str) {
        String str2;
        if (vungleWrapperFramework == VungleWrapperFramework.none) {
            Logger.Companion.e(TAG, "Wrapper is null or is none");
            return;
        }
        VungleHeader vungleHeader = VungleHeader.INSTANCE;
        String headerUa = vungleHeader.getHeaderUa();
        if (str.length() > 0) {
            str2 = '/' + str;
        } else {
            str2 = "";
        }
        String str3 = vungleWrapperFramework.name() + str2;
        if (StringsKt.contains$default((CharSequence) headerUa, (CharSequence) str3, false, 2, (Object) null)) {
            Logger.Companion.w(TAG, "Wrapper info already set");
            return;
        }
        vungleHeader.setHeaderUa(headerUa + ';' + str3);
        if (isInitialized()) {
            Logger.Companion.w(TAG, "VUNGLE WARNING: SDK already initialized, you should've set wrapper info before");
        }
    }

    @VisibleForTesting
    public static /* synthetic */ void isInitialized$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void isInitializing$vungle_ads_release$annotations() {
    }
}
