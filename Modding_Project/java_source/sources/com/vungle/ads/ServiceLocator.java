package com.vungle.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import com.unity3d.services.core.fid.Constants;
import com.vungle.ads.internal.bidding.BidTokenEncoder;
import com.vungle.ads.internal.downloader.AssetDownloader;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.executor.SDKExecutors;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.locale.LocaleInfo;
import com.vungle.ads.internal.locale.SystemLocaleInfo;
import com.vungle.ads.internal.network.TpatSender;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.omsdk.OMInjector;
import com.vungle.ads.internal.omsdk.OMTracker;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.platform.AndroidPlatform;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.task.JobCreator;
import com.vungle.ads.internal.task.JobRunner;
import com.vungle.ads.internal.task.JobRunnerThreadPriorityHelper;
import com.vungle.ads.internal.task.VungleJobCreator;
import com.vungle.ads.internal.task.VungleJobRunner;
import com.vungle.ads.internal.util.ConcurrencyTimeoutProvider;
import com.vungle.ads.internal.util.PathProvider;
import java.util.HashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u0000 \u00192\u00020\u0001:\u0002\u0019\u001aB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J)\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\r2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\u000f\u001a\u0002H\rH\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0012\u001a\u00020\fH\u0002J!\u0010\u0013\u001a\u0002H\r\"\u0004\b\u0000\u0010\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\r0\u0007H\u0002¢\u0006\u0002\u0010\u0014J\u001f\u0010\u0015\u001a\u0002H\r\"\u0004\b\u0000\u0010\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\r0\u0007¢\u0006\u0002\u0010\u0014J\u0018\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u00072\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u0007H\u0002J\u001a\u0010\u0017\u001a\u00020\u0018\"\u0004\b\u0000\u0010\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\r0\u0007R \u0010\u0005\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\b\u001a\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\f\u0012\n\u0012\u0002\b\u00030\tR\u00020\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/vungle/ads/ServiceLocator;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "cache", "", "Ljava/lang/Class;", "creators", "Lcom/vungle/ads/ServiceLocator$Creator;", "ctx", "bindService", "", "T", "serviceClass", NotificationCompat.CATEGORY_SERVICE, "bindService$vungle_ads_release", "(Ljava/lang/Class;Ljava/lang/Object;)V", "buildCreators", "getOrBuild", "(Ljava/lang/Class;)Ljava/lang/Object;", "getService", "getServiceClass", "isCreated", "", "Companion", "Creator", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class ServiceLocator {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @SuppressLint({"StaticFieldLeak"})
    @Nullable
    private static volatile ServiceLocator INSTANCE;
    @NotNull
    private final Map<Class<?>, Object> cache;
    @NotNull
    private final Map<Class<?>, Creator<?>> creators;
    @NotNull
    private final Context ctx;

    /* compiled from: Proguard */
    @Keep
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eJ#\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00110\u0010\"\n\b\u0000\u0010\u0011\u0018\u0001*\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0086\bR&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Lcom/vungle/ads/ServiceLocator$Companion;", "", "()V", "INSTANCE", "Lcom/vungle/ads/ServiceLocator;", "getINSTANCE$vungle_ads_release$annotations", "getINSTANCE$vungle_ads_release", "()Lcom/vungle/ads/ServiceLocator;", "setINSTANCE$vungle_ads_release", "(Lcom/vungle/ads/ServiceLocator;)V", "deInit", "", Constants.GET_INSTANCE, "context", "Landroid/content/Context;", "inject", "Lkotlin/Lazy;", "T", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final synchronized void deInit() {
            setINSTANCE$vungle_ads_release(null);
        }

        @Nullable
        public final ServiceLocator getINSTANCE$vungle_ads_release() {
            return ServiceLocator.INSTANCE;
        }

        @NotNull
        public final ServiceLocator getInstance(@NotNull Context context) {
            ServiceLocator iNSTANCE$vungle_ads_release;
            ServiceLocator iNSTANCE$vungle_ads_release2 = getINSTANCE$vungle_ads_release();
            if (iNSTANCE$vungle_ads_release2 == null) {
                synchronized (this) {
                    Companion companion = ServiceLocator.Companion;
                    iNSTANCE$vungle_ads_release = companion.getINSTANCE$vungle_ads_release();
                    if (iNSTANCE$vungle_ads_release == null) {
                        iNSTANCE$vungle_ads_release = new ServiceLocator(context, null);
                        companion.setINSTANCE$vungle_ads_release(iNSTANCE$vungle_ads_release);
                    }
                }
                return iNSTANCE$vungle_ads_release;
            }
            return iNSTANCE$vungle_ads_release2;
        }

        public final /* synthetic */ <T> Lazy<T> inject(final Context context) {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            Intrinsics.needClassReification();
            return LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<T>() { // from class: com.vungle.ads.ServiceLocator$Companion$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final T invoke() {
                    ServiceLocator companion = ServiceLocator.Companion.getInstance(context);
                    Intrinsics.reifiedOperationMarker(4, "T");
                    return (T) companion.getService(Object.class);
                }
            });
        }

        public final void setINSTANCE$vungle_ads_release(@Nullable ServiceLocator serviceLocator) {
            ServiceLocator.INSTANCE = serviceLocator;
        }

        private Companion() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getINSTANCE$vungle_ads_release$annotations() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b¢\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\r\u0010\u0007\u001a\u00028\u0000H&¢\u0006\u0002\u0010\bR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/vungle/ads/ServiceLocator$Creator;", "T", "", "isSingleton", "", "(Lcom/vungle/ads/ServiceLocator;Z)V", "()Z", "create", "()Ljava/lang/Object;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public abstract class Creator<T> {
        private final boolean isSingleton;

        public Creator(boolean z) {
            this.isSingleton = z;
        }

        public abstract T create();

        public final boolean isSingleton() {
            return this.isSingleton;
        }

        public /* synthetic */ Creator(ServiceLocator serviceLocator, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? true : z);
        }
    }

    public /* synthetic */ ServiceLocator(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    private final void buildCreators() {
        this.creators.put(JobCreator.class, new Creator<JobCreator>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$1
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public JobCreator create() {
                Context context;
                Object orBuild;
                context = ServiceLocator.this.ctx;
                orBuild = ServiceLocator.this.getOrBuild(PathProvider.class);
                return new VungleJobCreator(context, (PathProvider) orBuild);
            }
        });
        this.creators.put(JobRunner.class, new Creator<JobRunner>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$2
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public JobRunner create() {
                Object orBuild;
                Object orBuild2;
                orBuild = ServiceLocator.this.getOrBuild(JobCreator.class);
                orBuild2 = ServiceLocator.this.getOrBuild(Executors.class);
                return new VungleJobRunner((JobCreator) orBuild, ((Executors) orBuild2).getJobExecutor(), new JobRunnerThreadPriorityHelper());
            }
        });
        this.creators.put(VungleApiClient.class, new Creator<VungleApiClient>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$3
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public VungleApiClient create() {
                Context context;
                Object orBuild;
                Object orBuild2;
                context = ServiceLocator.this.ctx;
                orBuild = ServiceLocator.this.getOrBuild(Platform.class);
                orBuild2 = ServiceLocator.this.getOrBuild(FilePreferences.class);
                return new VungleApiClient(context, (Platform) orBuild, (FilePreferences) orBuild2);
            }
        });
        this.creators.put(Platform.class, new Creator<Platform>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$4
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public Platform create() {
                Object orBuild;
                Context context;
                orBuild = ServiceLocator.this.getOrBuild(Executors.class);
                context = ServiceLocator.this.ctx;
                return new AndroidPlatform(context, ((Executors) orBuild).getUaExecutor());
            }
        });
        this.creators.put(Executors.class, new Creator<Executors>(this) { // from class: com.vungle.ads.ServiceLocator$buildCreators$5
            {
                super(this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public Executors create() {
                return new SDKExecutors();
            }
        });
        this.creators.put(OMInjector.class, new Creator<OMInjector>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$6
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public OMInjector create() {
                Context context;
                context = ServiceLocator.this.ctx;
                return new OMInjector(context);
            }
        });
        this.creators.put(OMTracker.Factory.class, new Creator<OMTracker.Factory>(this) { // from class: com.vungle.ads.ServiceLocator$buildCreators$7
            {
                super(this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public OMTracker.Factory create() {
                return new OMTracker.Factory();
            }
        });
        this.creators.put(FilePreferences.class, new Creator<FilePreferences>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$8
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public FilePreferences create() {
                Object orBuild;
                Object orBuild2;
                FilePreferences.Companion companion = FilePreferences.Companion;
                orBuild = ServiceLocator.this.getOrBuild(Executors.class);
                VungleThreadPoolExecutor ioExecutor = ((Executors) orBuild).getIoExecutor();
                orBuild2 = ServiceLocator.this.getOrBuild(PathProvider.class);
                return FilePreferences.Companion.get$default(companion, ioExecutor, (PathProvider) orBuild2, null, 4, null);
            }
        });
        this.creators.put(LocaleInfo.class, new Creator<LocaleInfo>(this) { // from class: com.vungle.ads.ServiceLocator$buildCreators$9
            {
                super(this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public LocaleInfo create() {
                return new SystemLocaleInfo();
            }
        });
        this.creators.put(BidTokenEncoder.class, new Creator<BidTokenEncoder>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$10
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public BidTokenEncoder create() {
                Context context;
                context = ServiceLocator.this.ctx;
                return new BidTokenEncoder(context);
            }
        });
        this.creators.put(PathProvider.class, new Creator<PathProvider>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$11
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public PathProvider create() {
                Context context;
                context = ServiceLocator.this.ctx;
                return new PathProvider(context);
            }
        });
        this.creators.put(Downloader.class, new Creator<Downloader>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$12
            {
                super(false);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public Downloader create() {
                Object orBuild;
                Object orBuild2;
                orBuild = ServiceLocator.this.getOrBuild(Executors.class);
                VungleThreadPoolExecutor downloaderExecutor = ((Executors) orBuild).getDownloaderExecutor();
                orBuild2 = ServiceLocator.this.getOrBuild(PathProvider.class);
                return new AssetDownloader(downloaderExecutor, (PathProvider) orBuild2);
            }
        });
        this.creators.put(ConcurrencyTimeoutProvider.class, new Creator<ConcurrencyTimeoutProvider>(this) { // from class: com.vungle.ads.ServiceLocator$buildCreators$13
            {
                super(this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public ConcurrencyTimeoutProvider create() {
                return new ConcurrencyTimeoutProvider();
            }
        });
        this.creators.put(SignalManager.class, new Creator<SignalManager>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$14
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public SignalManager create() {
                Context context;
                context = ServiceLocator.this.ctx;
                return new SignalManager(context);
            }
        });
        this.creators.put(TpatSender.class, new Creator<TpatSender>() { // from class: com.vungle.ads.ServiceLocator$buildCreators$15
            {
                super(ServiceLocator.this, false, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.vungle.ads.ServiceLocator.Creator
            @NotNull
            public TpatSender create() {
                Object orBuild;
                Object orBuild2;
                Object orBuild3;
                Object orBuild4;
                Object orBuild5;
                orBuild = ServiceLocator.this.getOrBuild(VungleApiClient.class);
                orBuild2 = ServiceLocator.this.getOrBuild(Executors.class);
                VungleThreadPoolExecutor ioExecutor = ((Executors) orBuild2).getIoExecutor();
                orBuild3 = ServiceLocator.this.getOrBuild(Executors.class);
                VungleThreadPoolExecutor jobExecutor = ((Executors) orBuild3).getJobExecutor();
                orBuild4 = ServiceLocator.this.getOrBuild(PathProvider.class);
                orBuild5 = ServiceLocator.this.getOrBuild(SignalManager.class);
                return new TpatSender((VungleApiClient) orBuild, ioExecutor, jobExecutor, (PathProvider) orBuild4, (SignalManager) orBuild5);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> T getOrBuild(Class<T> cls) {
        Class<?> serviceClass = getServiceClass(cls);
        T t = (T) this.cache.get(serviceClass);
        if (t == null) {
            Creator<?> creator = this.creators.get(serviceClass);
            if (creator != null) {
                T t2 = (T) creator.create();
                if (creator.isSingleton()) {
                    this.cache.put(serviceClass, t2);
                }
                return t2;
            }
            throw new IllegalArgumentException("Unknown class");
        }
        return t;
    }

    private final Class<?> getServiceClass(Class<?> cls) {
        for (Class<?> cls2 : this.creators.keySet()) {
            if (cls2.isAssignableFrom(cls)) {
                return cls2;
            }
        }
        throw new IllegalArgumentException("Unknown dependency for " + cls);
    }

    @VisibleForTesting
    public final <T> void bindService$vungle_ads_release(@NotNull Class<?> cls, T t) {
        this.cache.put(cls, t);
    }

    public final synchronized <T> T getService(@NotNull Class<T> cls) {
        return (T) getOrBuild(cls);
    }

    public final synchronized <T> boolean isCreated(@NotNull Class<T> cls) {
        return this.cache.containsKey(getServiceClass(cls));
    }

    private ServiceLocator(Context context) {
        this.ctx = context.getApplicationContext();
        this.creators = new HashMap();
        this.cache = new HashMap();
        buildCreators();
    }
}
