package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.EngineResource;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskCacheAdapter;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.request.ResourceCallback;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.pool.FactoryPools;
import j$.util.Objects;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class Engine implements EngineJobListener, MemoryCache.ResourceRemovedListener, EngineResource.ResourceListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final boolean f4329Wwwwwwwwwwwwwwwwwwwwwwwwww = Log.isLoggable("Engine", 2);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ActiveResources f4330Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DecodeJobFactory f4331Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LazyDiskCacheProvider f4332Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResourceRecycler f4333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final EngineJobFactory f4334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MemoryCache f4335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final EngineKeyFactory f4336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Jobs f4337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class DecodeJobFactory {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f4338Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Pools.Pool<DecodeJob<?>> f4339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = FactoryPools.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(150, new FactoryPools.Factory<DecodeJob<?>>() { // from class: com.bumptech.glide.load.engine.Engine.DecodeJobFactory.1
            @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public DecodeJob<?> create() {
                DecodeJobFactory decodeJobFactory = DecodeJobFactory.this;
                return new DecodeJob<>(decodeJobFactory.f4340Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, decodeJobFactory.f4339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
        });

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DecodeJob.DiskCacheProvider f4340Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public DecodeJobFactory(DecodeJob.DiskCacheProvider diskCacheProvider) {
            this.f4340Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = diskCacheProvider;
        }

        public <R> DecodeJob<R> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GlideContext glideContext, Object obj, EngineKey engineKey, Key key, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, DiskCacheStrategy diskCacheStrategy, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, boolean z3, Options options, DecodeJob.Callback<R> callback) {
            DecodeJob decodeJob = (DecodeJob) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.acquire());
            int i3 = this.f4338Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f4338Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i3 + 1;
            return decodeJob.Wwwwwwwwwwwwwwwwwwwww(glideContext, obj, engineKey, key, i, i2, cls, cls2, priority, diskCacheStrategy, map, z, z2, z3, options, callback, i3);
        }
    }

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class EngineJobFactory {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Pools.Pool<EngineJob<?>> f4342Wwwwwwwwwwwwwwwwwwwwwwwwwwww = FactoryPools.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(150, new FactoryPools.Factory<EngineJob<?>>() { // from class: com.bumptech.glide.load.engine.Engine.EngineJobFactory.1
            @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public EngineJob<?> create() {
                EngineJobFactory engineJobFactory = EngineJobFactory.this;
                return new EngineJob<>(engineJobFactory.f4348Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, engineJobFactory.f4347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, engineJobFactory.f4346Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, engineJobFactory.f4345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, engineJobFactory.f4344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, engineJobFactory.f4343Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, engineJobFactory.f4342Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
        });

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final EngineResource.ResourceListener f4343Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final EngineJobListener f4344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final GlideExecutor f4345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final GlideExecutor f4346Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final GlideExecutor f4347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final GlideExecutor f4348Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public EngineJobFactory(GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, EngineJobListener engineJobListener, EngineResource.ResourceListener resourceListener) {
            this.f4348Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = glideExecutor;
            this.f4347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = glideExecutor2;
            this.f4346Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = glideExecutor3;
            this.f4345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = glideExecutor4;
            this.f4344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = engineJobListener;
            this.f4343Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceListener;
        }

        public <R> EngineJob<R> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, boolean z, boolean z2, boolean z3, boolean z4) {
            return ((EngineJob) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4342Wwwwwwwwwwwwwwwwwwwwwwwwwwww.acquire())).Wwwwwwwwwwwwwwwwwwwwwww(key, z, z2, z3, z4);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class LazyDiskCacheProvider implements DecodeJob.DiskCacheProvider {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile DiskCache f4350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DiskCache.Factory f4351Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public LazyDiskCacheProvider(DiskCache.Factory factory) {
            this.f4351Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = factory;
        }

        @Override // com.bumptech.glide.load.engine.DecodeJob.DiskCacheProvider
        public DiskCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f4350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                synchronized (this) {
                    try {
                        if (this.f4350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                            this.f4350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f4351Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.build();
                        }
                        if (this.f4350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                            this.f4350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DiskCacheAdapter();
                        }
                    } finally {
                    }
                }
            }
            return this.f4350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class LoadStatus {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ResourceCallback f4353Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final EngineJob<?> f4354Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public LoadStatus(ResourceCallback resourceCallback, EngineJob<?> engineJob) {
            this.f4353Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceCallback;
            this.f4354Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = engineJob;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            synchronized (Engine.this) {
                this.f4354Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwww(this.f4353Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
        }
    }

    public Engine(MemoryCache memoryCache, DiskCache.Factory factory, GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, boolean z) {
        this(memoryCache, factory, glideExecutor, glideExecutor2, glideExecutor3, glideExecutor4, null, null, null, null, null, null, z);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwww(String str, long j, Key key) {
        LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
        Objects.toString(key);
    }

    public final <R> LoadStatus Wwwwwwwwwwwwwwwwwwwwww(GlideContext glideContext, Object obj, Key key, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, DiskCacheStrategy diskCacheStrategy, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, Options options, boolean z3, boolean z4, boolean z5, boolean z6, ResourceCallback resourceCallback, Executor executor, EngineKey engineKey, long j) {
        EngineJob<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(engineKey, z6);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceCallback, executor);
            if (f4329Wwwwwwwwwwwwwwwwwwwwwwwwww) {
                Wwwwwwwwwwwwwwwwwwwwwwww("Added to existing load", j, engineKey);
            }
            return new LoadStatus(resourceCallback, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        EngineJob<R> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = this.f4334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(engineKey, z3, z4, z5, z6);
        DecodeJob<R> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = this.f4331Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(glideContext, obj, engineKey, key, i, i2, cls, cls2, priority, diskCacheStrategy, map, z, z2, z6, options, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
        this.f4337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(engineKey, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceCallback, executor);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4);
        if (f4329Wwwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwww("Started new load", j, engineKey);
        }
        return new LoadStatus(resourceCallback, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwww(Resource<?> resource) {
        if (resource instanceof EngineResource) {
            ((EngineResource) resource).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    @Nullable
    public final EngineResource<?> Wwwwwwwwwwwwwwwwwwwwwwwww(EngineKey engineKey, boolean z, long j) {
        if (!z) {
            return null;
        }
        EngineResource<?> Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(engineKey);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            if (f4329Wwwwwwwwwwwwwwwwwwwwwwwwww) {
                Wwwwwwwwwwwwwwwwwwwwwwww("Loaded resource from active resources", j, engineKey);
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        EngineResource<?> Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(engineKey);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        if (f4329Wwwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwww("Loaded resource from cache", j, engineKey);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final EngineResource<?> Wwwwwwwwwwwwwwwwwwwwwwwwww(Key key) {
        EngineResource<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(key);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f4330Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Nullable
    public final EngineResource<?> Wwwwwwwwwwwwwwwwwwwwwwwwwww(Key key) {
        EngineResource<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4330Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public <R> LoadStatus Wwwwwwwwwwwwwwwwwwwwwwwwwwww(GlideContext glideContext, Object obj, Key key, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, DiskCacheStrategy diskCacheStrategy, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, Options options, boolean z3, boolean z4, boolean z5, boolean z6, ResourceCallback resourceCallback, Executor executor) {
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = f4329Wwwwwwwwwwwwwwwwwwwwwwwwww ? LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() : 0L;
        EngineKey Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, key, i, i2, map, cls, cls2, options);
        synchronized (this) {
            try {
                EngineResource<?> Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, z3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                if (Wwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return Wwwwwwwwwwwwwwwwwwwwww(glideContext, obj, key, i, i2, cls, cls2, priority, diskCacheStrategy, map, z, z2, options, z3, z4, z5, z6, resourceCallback, executor, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                resourceCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww2, DataSource.MEMORY_CACHE, false);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final EngineResource<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key) {
        Resource<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof EngineResource) {
            return (EngineResource) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        return new EngineResource<>(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, true, true, key, this);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4332Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().clear();
    }

    @Override // com.bumptech.glide.load.engine.EngineResource.ResourceListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, EngineResource<?> engineResource) {
        this.f4330Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key);
        if (engineResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            this.f4335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, engineResource);
        } else {
            this.f4333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(engineResource, false);
        }
    }

    @Override // com.bumptech.glide.load.engine.EngineJobListener
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(EngineJob<?> engineJob, Key key) {
        this.f4337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, engineJob);
    }

    @Override // com.bumptech.glide.load.engine.EngineJobListener
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(EngineJob<?> engineJob, Key key, EngineResource<?> engineResource) {
        if (engineResource != null) {
            try {
                if (engineResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    this.f4330Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, engineResource);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f4337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, engineJob);
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache.ResourceRemovedListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Resource<?> resource) {
        this.f4333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resource, true);
    }

    @VisibleForTesting
    public Engine(MemoryCache memoryCache, DiskCache.Factory factory, GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, Jobs jobs, EngineKeyFactory engineKeyFactory, ActiveResources activeResources, EngineJobFactory engineJobFactory, DecodeJobFactory decodeJobFactory, ResourceRecycler resourceRecycler, boolean z) {
        this.f4335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = memoryCache;
        LazyDiskCacheProvider lazyDiskCacheProvider = new LazyDiskCacheProvider(factory);
        this.f4332Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = lazyDiskCacheProvider;
        ActiveResources activeResources2 = activeResources == null ? new ActiveResources(z) : activeResources;
        this.f4330Wwwwwwwwwwwwwwwwwwwwwwwwwww = activeResources2;
        activeResources2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        this.f4336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = engineKeyFactory == null ? new EngineKeyFactory() : engineKeyFactory;
        this.f4337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jobs == null ? new Jobs() : jobs;
        this.f4334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = engineJobFactory == null ? new EngineJobFactory(glideExecutor, glideExecutor2, glideExecutor3, glideExecutor4, this, this) : engineJobFactory;
        this.f4331Wwwwwwwwwwwwwwwwwwwwwwwwwwww = decodeJobFactory == null ? new DecodeJobFactory(lazyDiskCacheProvider) : decodeJobFactory;
        this.f4333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceRecycler == null ? new ResourceRecycler() : resourceRecycler;
        memoryCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }
}
