package com.bumptech.glide.load.engine;

import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.engine.DecodePath;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.GlideTrace;
import com.bumptech.glide.util.pool.StateVerifier;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
class DecodeJob<R> implements DataFetcherGenerator.FetcherReadyCallback, Runnable, Comparable<DecodeJob<?>>, FactoryPools.Poolable {

    /* renamed from: Kkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public boolean f4276Kkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public volatile boolean f4277Kkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public volatile boolean f4278Kkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public volatile DataFetcherGenerator f4279Kkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public DataFetcher<?> f4280Kkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public DataSource f4281Kkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public Object f4282Kkkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public Key f4283Kkkkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public Key f4284Kkkkkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Www  reason: collision with root package name */
    public Thread f4285Www;

    /* renamed from: Wwww  reason: collision with root package name */
    public Object f4286Wwww;

    /* renamed from: Wwwww  reason: collision with root package name */
    public boolean f4287Wwwww;

    /* renamed from: Wwwwww  reason: collision with root package name */
    public long f4288Wwwwww;

    /* renamed from: Wwwwwww  reason: collision with root package name */
    public RunReason f4289Wwwwwww;

    /* renamed from: Wwwwwwww  reason: collision with root package name */
    public Stage f4290Wwwwwwww;

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public int f4291Wwwwwwwww;

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public Callback<R> f4292Wwwwwwwwww;

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public Options f4293Wwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public DiskCacheStrategy f4294Wwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public int f4295Wwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public int f4296Wwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public EngineKey f4297Wwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public Priority f4298Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Key f4299Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public GlideContext f4300Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Pools.Pool<DecodeJob<?>> f4303Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DiskCacheProvider f4304Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DecodeHelper<R> f4307Wwwwwwwwwwwwwwwwwwwwwwwww = new DecodeHelper<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Throwable> f4306Wwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final StateVerifier f4305Wwwwwwwwwwwwwwwwwwwwwww = StateVerifier.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DeferredEncodeManager<?> f4302Wwwwwwwwwwwwwwwwwwww = new DeferredEncodeManager<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ReleaseManager f4301Wwwwwwwwwwwwwwwwwww = new ReleaseManager();

    /* compiled from: Proguard */
    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ int[] f4308Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ int[] f4309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ int[] f4310Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        static {
            int[] iArr = new int[EncodeStrategy.values().length];
            f4308Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr;
            try {
                iArr[EncodeStrategy.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4308Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[EncodeStrategy.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Stage.values().length];
            f4309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr2;
            try {
                iArr2[Stage.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Stage.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Stage.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Stage.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Stage.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[RunReason.values().length];
            f4310Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr3;
            try {
                iArr3[RunReason.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f4310Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[RunReason.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f4310Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[RunReason.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface Callback<R> {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DecodeJob<?> decodeJob);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GlideException glideException);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Resource<R> resource, DataSource dataSource, boolean z);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public final class DecodeCallback<Z> implements DecodePath.DecodeCallback<Z> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DataSource f4312Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public DecodeCallback(DataSource dataSource) {
            this.f4312Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = dataSource;
        }

        @Override // com.bumptech.glide.load.engine.DecodePath.DecodeCallback
        @NonNull
        public Resource<Z> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Resource<Z> resource) {
            return DecodeJob.this.Wwwwwwwwwwwww(this.f4312Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, resource);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class DeferredEncodeManager<Z> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public LockedResource<Z> f4313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ResourceEncoder<Z> f4314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Key f4315Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* JADX WARN: Multi-variable type inference failed */
        public <X> void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, ResourceEncoder<X> resourceEncoder, LockedResource<X> lockedResource) {
            this.f4315Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = key;
            this.f4314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceEncoder;
            this.f4313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = lockedResource;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f4313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                return true;
            }
            return false;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DiskCacheProvider diskCacheProvider, Options options) {
            GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("DecodeJob.encode");
            try {
                diskCacheProvider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4315Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, new DataCacheWriter(this.f4314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, options));
            } finally {
                this.f4313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f4315Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f4314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f4313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface DiskCacheProvider {
        DiskCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class ReleaseManager {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f4316Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f4317Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f4318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f4317Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
            this.f4318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
            this.f4316Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        }

        public synchronized boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f4318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
        }

        public synchronized boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f4316Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
        }

        public synchronized boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f4317Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            if ((this.f4316Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww || z || this.f4317Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f4318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum RunReason {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum Stage {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    public DecodeJob(DiskCacheProvider diskCacheProvider, Pools.Pool<DecodeJob<?>> pool) {
        this.f4304Wwwwwwwwwwwwwwwwwwwwww = diskCacheProvider;
        this.f4303Wwwwwwwwwwwwwwwwwwwww = pool;
    }

    public boolean Wwwww() {
        Stage Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww(Stage.INITIALIZE);
        if (Wwwwwwwwwwwwwwwwwwwwwwww2 != Stage.RESOURCE_CACHE && Wwwwwwwwwwwwwwwwwwwwwwww2 != Stage.DATA_CACHE) {
            return false;
        }
        return true;
    }

    public final void Wwwwww() {
        Throwable th;
        this.f4305Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (this.f4278Kkkkkkkkkkkkkkkkkkkk) {
            if (this.f4306Wwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
                th = null;
            } else {
                List<Throwable> list = this.f4306Wwwwwwwwwwwwwwwwwwwwwwww;
                th = list.get(list.size() - 1);
            }
            throw new IllegalStateException("Already notified", th);
        }
        this.f4278Kkkkkkkkkkkkkkkkkkkk = true;
    }

    public final void Wwwwwww() {
        int i = AnonymousClass1.f4310Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[this.f4289Wwwwwww.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    return;
                }
                throw new IllegalStateException("Unrecognized run reason: " + this.f4289Wwwwwww);
            }
            Wwwwwwwww();
            return;
        }
        this.f4290Wwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwww(Stage.INITIALIZE);
        this.f4279Kkkkkkkkkkkkkkkkkkkkk = Wwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwww();
    }

    public final <Data, ResourceType> Resource<R> Wwwwwwww(Data data, DataSource dataSource, LoadPath<Data, ResourceType, R> loadPath) throws GlideException {
        Options Wwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwww(dataSource);
        DataRewinder<Data> Wwwwwwwwwwwwwwwwwwwwwww3 = this.f4300Wwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(data);
        try {
            return loadPath.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwww2, this.f4296Wwwwwwwwwwwwww, this.f4295Wwwwwwwwwwwww, new DecodeCallback(dataSource));
        } finally {
            Wwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public final void Wwwwwwwww() {
        this.f4285Www = Thread.currentThread();
        this.f4288Wwwwww = LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        boolean z = false;
        while (!this.f4277Kkkkkkkkkkkkkkkkkkk && this.f4279Kkkkkkkkkkkkkkkkkkkkk != null && !(z = this.f4279Kkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            this.f4290Wwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwww(this.f4290Wwwwwwww);
            this.f4279Kkkkkkkkkkkkkkkkkkkkk = Wwwwwwwwwwwwwwwwwwwwwwwww();
            if (this.f4290Wwwwwwww == Stage.SOURCE) {
                Wwwwwwwwww(RunReason.SWITCH_TO_SOURCE_SERVICE);
                return;
            }
        }
        if ((this.f4290Wwwwwwww == Stage.FINISHED || this.f4277Kkkkkkkkkkkkkkkkkkk) && !z) {
            Wwwwwwwwwwwwwwww();
        }
    }

    public final void Wwwwwwwwww(RunReason runReason) {
        this.f4289Wwwwwww = runReason;
        this.f4292Wwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public final void Wwwwwwwwwww() {
        this.f4301Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f4302Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f4307Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f4278Kkkkkkkkkkkkkkkkkkkk = false;
        this.f4300Wwwwwwwwwwwwwwwwww = null;
        this.f4299Wwwwwwwwwwwwwwwww = null;
        this.f4293Wwwwwwwwwww = null;
        this.f4298Wwwwwwwwwwwwwwww = null;
        this.f4297Wwwwwwwwwwwwwww = null;
        this.f4292Wwwwwwwwww = null;
        this.f4290Wwwwwwww = null;
        this.f4279Kkkkkkkkkkkkkkkkkkkkk = null;
        this.f4285Www = null;
        this.f4284Kkkkkkkkkkkkkkkkkkkkkkkkkk = null;
        this.f4282Kkkkkkkkkkkkkkkkkkkkkkkk = null;
        this.f4281Kkkkkkkkkkkkkkkkkkkkkkk = null;
        this.f4280Kkkkkkkkkkkkkkkkkkkkkk = null;
        this.f4288Wwwwww = 0L;
        this.f4277Kkkkkkkkkkkkkkkkkkk = false;
        this.f4286Wwww = null;
        this.f4306Wwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f4303Wwwwwwwwwwwwwwwwwwwww.release(this);
    }

    public void Wwwwwwwwwwww(boolean z) {
        if (this.f4301Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z)) {
            Wwwwwwwwwww();
        }
    }

    @NonNull
    public <Z> Resource<Z> Wwwwwwwwwwwww(DataSource dataSource, @NonNull Resource<Z> resource) {
        Resource<Z> resource2;
        Transformation<Z> transformation;
        EncodeStrategy encodeStrategy;
        Key dataCacheKey;
        Class<?> cls = resource.get().getClass();
        ResourceEncoder<Z> resourceEncoder = null;
        if (dataSource != DataSource.RESOURCE_DISK_CACHE) {
            Transformation<Z> Wwwwwwwwwwwwwwww2 = this.f4307Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwww(cls);
            transformation = Wwwwwwwwwwwwwwww2;
            resource2 = Wwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4300Wwwwwwwwwwwwwwwwww, resource, this.f4296Wwwwwwwwwwwwww, this.f4295Wwwwwwwwwwwww);
        } else {
            resource2 = resource;
            transformation = null;
        }
        if (!resource.equals(resource2)) {
            resource.recycle();
        }
        if (this.f4307Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwww(resource2)) {
            resourceEncoder = this.f4307Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(resource2);
            encodeStrategy = resourceEncoder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4293Wwwwwwwwwww);
        } else {
            encodeStrategy = EncodeStrategy.NONE;
        }
        ResourceEncoder resourceEncoder2 = resourceEncoder;
        if (this.f4294Wwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(!this.f4307Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwww(this.f4284Kkkkkkkkkkkkkkkkkkkkkkkkkk), dataSource, encodeStrategy)) {
            if (resourceEncoder2 != null) {
                int i = AnonymousClass1.f4308Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[encodeStrategy.ordinal()];
                if (i != 1) {
                    if (i == 2) {
                        dataCacheKey = new ResourceCacheKey(this.f4307Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f4284Kkkkkkkkkkkkkkkkkkkkkkkkkk, this.f4299Wwwwwwwwwwwwwwwww, this.f4296Wwwwwwwwwwwwww, this.f4295Wwwwwwwwwwwww, transformation, cls, this.f4293Wwwwwwwwwww);
                    } else {
                        throw new IllegalArgumentException("Unknown strategy: " + encodeStrategy);
                    }
                } else {
                    dataCacheKey = new DataCacheKey(this.f4284Kkkkkkkkkkkkkkkkkkkkkkkkkk, this.f4299Wwwwwwwwwwwwwwwww);
                }
                LockedResource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LockedResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resource2);
                this.f4302Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataCacheKey, resourceEncoder2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            throw new Registry.NoResultEncoderAvailableException(resource2.get().getClass());
        }
        return resource2;
    }

    public final void Wwwwwwwwwwwwww() {
        if (this.f4301Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            Wwwwwwwwwww();
        }
    }

    public final void Wwwwwwwwwwwwwww() {
        if (this.f4301Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            Wwwwwwwwwww();
        }
    }

    public final void Wwwwwwwwwwwwwwww() {
        Wwwwww();
        this.f4292Wwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new GlideException("Failed to load resource", new ArrayList(this.f4306Wwwwwwwwwwwwwwwwwwwwwwww)));
        Wwwwwwwwwwwwww();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Wwwwwwwwwwwwwwwww(Resource<R> resource, DataSource dataSource, boolean z) {
        LockedResource lockedResource;
        GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("DecodeJob.notifyEncodeAndRelease");
        try {
            if (resource instanceof Initializable) {
                ((Initializable) resource).initialize();
            }
            if (this.f4302Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                resource = LockedResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resource);
                lockedResource = resource;
            } else {
                lockedResource = 0;
            }
            Wwwwwwwwwwwwwwwwww(resource, dataSource, z);
            this.f4290Wwwwwwww = Stage.ENCODE;
            if (this.f4302Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                this.f4302Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4304Wwwwwwwwwwwwwwwwwwwwww, this.f4293Wwwwwwwwwww);
            }
            if (lockedResource != 0) {
                lockedResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            Wwwwwwwwwwwwwww();
            GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            throw th;
        }
    }

    public final void Wwwwwwwwwwwwwwwwww(Resource<R> resource, DataSource dataSource, boolean z) {
        Wwwwww();
        this.f4292Wwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resource, dataSource, z);
    }

    public final void Wwwwwwwwwwwwwwwwwww(String str, long j, String str2) {
        LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
        Objects.toString(this.f4297Wwwwwwwwwwwwwww);
        if (str2 != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(", ");
            sb.append(str2);
        }
        Thread.currentThread().getName();
    }

    public final void Wwwwwwwwwwwwwwwwwwww(String str, long j) {
        Wwwwwwwwwwwwwwwwwww(str, j, null);
    }

    public DecodeJob<R> Wwwwwwwwwwwwwwwwwwwww(GlideContext glideContext, Object obj, EngineKey engineKey, Key key, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, DiskCacheStrategy diskCacheStrategy, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, boolean z3, Options options, Callback<R> callback, int i3) {
        this.f4307Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwww(glideContext, obj, key, i, i2, diskCacheStrategy, cls, cls2, priority, options, map, z, z2, this.f4304Wwwwwwwwwwwwwwwwwwwwww);
        this.f4300Wwwwwwwwwwwwwwwwww = glideContext;
        this.f4299Wwwwwwwwwwwwwwwww = key;
        this.f4298Wwwwwwwwwwwwwwww = priority;
        this.f4297Wwwwwwwwwwwwwww = engineKey;
        this.f4296Wwwwwwwwwwwwww = i;
        this.f4295Wwwwwwwwwwwww = i2;
        this.f4294Wwwwwwwwwwww = diskCacheStrategy;
        this.f4287Wwwww = z3;
        this.f4293Wwwwwwwwwww = options;
        this.f4292Wwwwwwwwww = callback;
        this.f4291Wwwwwwwww = i3;
        this.f4289Wwwwwww = RunReason.INITIALIZE;
        this.f4286Wwww = obj;
        return this;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f4298Wwwwwwwwwwwwwwww.ordinal();
    }

    @NonNull
    public final Options Wwwwwwwwwwwwwwwwwwwwwww(DataSource dataSource) {
        boolean z;
        Options options = this.f4293Wwwwwwwwwww;
        if (Build.VERSION.SDK_INT < 26) {
            return options;
        }
        if (dataSource != DataSource.RESOURCE_DISK_CACHE && !this.f4307Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwww()) {
            z = false;
        } else {
            z = true;
        }
        Option<Boolean> option = Downsampler.f4761Wwwwwwwwwwwwwwwwwwwwwwwww;
        Boolean bool = (Boolean) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(option);
        if (bool != null && (!bool.booleanValue() || z)) {
            return options;
        }
        Options options2 = new Options();
        options2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4293Wwwwwwwwwww);
        options2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(option, Boolean.valueOf(z));
        return options2;
    }

    public final Stage Wwwwwwwwwwwwwwwwwwwwwwww(Stage stage) {
        int i = AnonymousClass1.f4309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[stage.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3 && i != 4) {
                    if (i == 5) {
                        if (this.f4294Wwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            return Stage.RESOURCE_CACHE;
                        }
                        return Wwwwwwwwwwwwwwwwwwwwwwww(Stage.RESOURCE_CACHE);
                    }
                    throw new IllegalArgumentException("Unrecognized stage: " + stage);
                }
                return Stage.FINISHED;
            } else if (this.f4287Wwwww) {
                return Stage.FINISHED;
            } else {
                return Stage.SOURCE;
            }
        } else if (this.f4294Wwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return Stage.DATA_CACHE;
        } else {
            return Wwwwwwwwwwwwwwwwwwwwwwww(Stage.DATA_CACHE);
        }
    }

    public final DataFetcherGenerator Wwwwwwwwwwwwwwwwwwwwwwwww() {
        int i = AnonymousClass1.f4309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[this.f4290Wwwwwwww.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return null;
                    }
                    throw new IllegalStateException("Unrecognized stage: " + this.f4290Wwwwwwww);
                }
                return new SourceGenerator(this.f4307Wwwwwwwwwwwwwwwwwwwwwwwww, this);
            }
            return new DataCacheGenerator(this.f4307Wwwwwwwwwwwwwwwwwwwwwwwww, this);
        }
        return new ResourceCacheGenerator(this.f4307Wwwwwwwwwwwwwwwwwwwwwwwww, this);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        Resource<R> resource;
        if (Log.isLoggable("DecodeJob", 2)) {
            long j = this.f4288Wwwwww;
            Wwwwwwwwwwwwwwwwwww("Retrieved data", j, "data: " + this.f4282Kkkkkkkkkkkkkkkkkkkkkkkk + ", cache key: " + this.f4284Kkkkkkkkkkkkkkkkkkkkkkkkkk + ", fetcher: " + this.f4280Kkkkkkkkkkkkkkkkkkkkkk);
        }
        try {
            resource = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4280Kkkkkkkkkkkkkkkkkkkkkk, this.f4282Kkkkkkkkkkkkkkkkkkkkkkkk, this.f4281Kkkkkkkkkkkkkkkkkkkkkkk);
        } catch (GlideException e) {
            e.setLoggingDetails(this.f4283Kkkkkkkkkkkkkkkkkkkkkkkkk, this.f4281Kkkkkkkkkkkkkkkkkkkkkkk);
            this.f4306Wwwwwwwwwwwwwwwwwwwwwwww.add(e);
            resource = null;
        }
        if (resource != null) {
            Wwwwwwwwwwwwwwwww(resource, this.f4281Kkkkkkkkkkkkkkkkkkkkkkk, this.f4276Kkkkkkkkkkkkkkkkkk);
        } else {
            Wwwwwwwww();
        }
    }

    public final <Data> Resource<R> Wwwwwwwwwwwwwwwwwwwwwwwwwww(Data data, DataSource dataSource) throws GlideException {
        return Wwwwwwww(data, dataSource, (LoadPath<Data, ?, R>) this.f4307Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(data.getClass()));
    }

    public final <Data> Resource<R> Wwwwwwwwwwwwwwwwwwwwwwwwwwww(DataFetcher<?> dataFetcher, Data data, DataSource dataSource) throws GlideException {
        if (data == null) {
            dataFetcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return null;
        }
        try {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Resource<R> Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(data, dataSource);
            if (Log.isLoggable("DecodeJob", 2)) {
                Wwwwwwwwwwwwwwwwwwww("Decoded result " + Wwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } finally {
            dataFetcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public int compareTo(@NonNull DecodeJob<?> decodeJob) {
        int Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww() - decodeJob.Wwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwww2 == 0) {
            return this.f4291Wwwwwwwww - decodeJob.f4291Wwwwwwwww;
        }
        return Wwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, Object obj, DataFetcher<?> dataFetcher, DataSource dataSource, Key key2) {
        this.f4284Kkkkkkkkkkkkkkkkkkkkkkkkkk = key;
        this.f4282Kkkkkkkkkkkkkkkkkkkkkkkk = obj;
        this.f4280Kkkkkkkkkkkkkkkkkkkkkk = dataFetcher;
        this.f4281Kkkkkkkkkkkkkkkkkkkkkkk = dataSource;
        this.f4283Kkkkkkkkkkkkkkkkkkkkkkkkk = key2;
        boolean z = false;
        if (key != this.f4307Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(0)) {
            z = true;
        }
        this.f4276Kkkkkkkkkkkkkkkkkk = z;
        if (Thread.currentThread() != this.f4285Www) {
            Wwwwwwwwww(RunReason.DECODE_DATA);
            return;
        }
        GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("DecodeJob.decodeFromRetrievedData");
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwww();
        } finally {
            GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    @NonNull
    public StateVerifier Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4305Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwww(RunReason.SWITCH_TO_SOURCE_SERVICE);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4277Kkkkkkkkkkkkkkkkkkk = true;
        DataFetcherGenerator dataFetcherGenerator = this.f4279Kkkkkkkkkkkkkkkkkkkkk;
        if (dataFetcherGenerator != null) {
            dataFetcherGenerator.cancel();
        }
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, Exception exc, DataFetcher<?> dataFetcher, DataSource dataSource) {
        dataFetcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        GlideException glideException = new GlideException("Fetching data failed", exc);
        glideException.setLoggingDetails(key, dataSource, dataFetcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        this.f4306Wwwwwwwwwwwwwwwwwwwwwwww.add(glideException);
        if (Thread.currentThread() != this.f4285Www) {
            Wwwwwwwwww(RunReason.SWITCH_TO_SOURCE_SERVICE);
        } else {
            Wwwwwwwww();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("DecodeJob#run(reason=%s, model=%s)", this.f4289Wwwwwww, this.f4286Wwww);
        DataFetcher<?> dataFetcher = this.f4280Kkkkkkkkkkkkkkkkkkkkkk;
        try {
            try {
                if (this.f4277Kkkkkkkkkkkkkkkkkkk) {
                    Wwwwwwwwwwwwwwww();
                    if (dataFetcher != null) {
                        dataFetcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    return;
                }
                Wwwwwww();
                if (dataFetcher != null) {
                    dataFetcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } catch (CallbackException e) {
                throw e;
            }
        }
    }
}
