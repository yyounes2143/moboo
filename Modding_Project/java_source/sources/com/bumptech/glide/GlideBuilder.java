package com.bumptech.glide;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideExperiments;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPoolAdapter;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.InternalCacheDiskCacheFactory;
import com.bumptech.glide.load.engine.cache.LruResourceCache;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.cache.MemorySizeCalculator;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.DefaultConnectivityMonitorFactory;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.module.AppGlideModule;
import com.bumptech.glide.module.GlideModule;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class GlideBuilder {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<RequestListener<Object>> f3985Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f3986Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public GlideExecutor f3987Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RequestManagerRetriever.RequestManagerFactory f3988Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ConnectivityMonitorFactory f3991Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MemorySizeCalculator f3992Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DiskCache.Factory f3993Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public GlideExecutor f3994Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public GlideExecutor f3995Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MemoryCache f3996Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ArrayPool f3997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public BitmapPool f3998Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Engine f3999Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Class<?>, TransitionOptions<?, ?>> f4001Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GlideExperiments.Builder f4000Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new GlideExperiments.Builder();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f3990Wwwwwwwwwwwwwwwwwwwwwww = 4;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Glide.RequestOptionsFactory f3989Wwwwwwwwwwwwwwwwwwwwww = new Glide.RequestOptionsFactory() { // from class: com.bumptech.glide.GlideBuilder.1
        @Override // com.bumptech.glide.Glide.RequestOptionsFactory
        @NonNull
        public RequestOptions build() {
            return new RequestOptions();
        }
    };

    /* compiled from: Proguard */
    /* renamed from: com.bumptech.glide.GlideBuilder$2  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Glide.RequestOptionsFactory {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ RequestOptions f4003Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.bumptech.glide.Glide.RequestOptionsFactory
        @NonNull
        public RequestOptions build() {
            RequestOptions requestOptions = this.f4003Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (requestOptions != null) {
                return requestOptions;
            }
            return new RequestOptions();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class EnableImageDecoderForBitmaps implements GlideExperiments.Experiment {
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class LogRequestOrigins implements GlideExperiments.Experiment {
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class ManualOverrideHardwareBitmapMaxFdCount implements GlideExperiments.Experiment {
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class UseDirectResourceLoader implements GlideExperiments.Experiment {
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class WaitForFramesAfterTrimMemory implements GlideExperiments.Experiment {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable RequestManagerRetriever.RequestManagerFactory requestManagerFactory) {
        this.f3988Wwwwwwwwwwwwwwwwwwwww = requestManagerFactory;
    }

    @NonNull
    public Glide Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context, List<GlideModule> list, AppGlideModule appGlideModule) {
        if (this.f3995Wwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f3995Wwwwwwwwwwwwwwwwwwwwwwwwwwww = GlideExecutor.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (this.f3994Wwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f3994Wwwwwwwwwwwwwwwwwwwwwwwwwww = GlideExecutor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (this.f3987Wwwwwwwwwwwwwwwwwwww == null) {
            this.f3987Wwwwwwwwwwwwwwwwwwww = GlideExecutor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (this.f3992Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f3992Wwwwwwwwwwwwwwwwwwwwwwwww = new MemorySizeCalculator.Builder(context).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (this.f3991Wwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f3991Wwwwwwwwwwwwwwwwwwwwwwww = new DefaultConnectivityMonitorFactory();
        }
        if (this.f3998Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f3992Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                this.f3998Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LruBitmapPool(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } else {
                this.f3998Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new BitmapPoolAdapter();
            }
        }
        if (this.f3997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f3997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LruArrayPool(this.f3992Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        if (this.f3996Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f3996Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LruResourceCache(this.f3992Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        if (this.f3993Wwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f3993Wwwwwwwwwwwwwwwwwwwwwwwwww = new InternalCacheDiskCacheFactory(context);
        }
        if (this.f3999Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f3999Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Engine(this.f3996Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f3993Wwwwwwwwwwwwwwwwwwwwwwwwww, this.f3994Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f3995Wwwwwwwwwwwwwwwwwwwwwwwwwwww, GlideExecutor.Wwwwwwwwwwwwwwwwwwwwwwwwww(), this.f3987Wwwwwwwwwwwwwwwwwwww, this.f3986Wwwwwwwwwwwwwwwwwww);
        }
        List<RequestListener<Object>> list2 = this.f3985Wwwwwwwwwwwwwwwwww;
        if (list2 == null) {
            this.f3985Wwwwwwwwwwwwwwwwww = Collections.EMPTY_LIST;
        } else {
            this.f3985Wwwwwwwwwwwwwwwwww = Collections.unmodifiableList(list2);
        }
        GlideExperiments Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = this.f4000Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        return new Glide(context, this.f3999Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f3996Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f3998Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f3997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, new RequestManagerRetriever(this.f3988Wwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3), this.f3991Wwwwwwwwwwwwwwwwwwwwwwww, this.f3990Wwwwwwwwwwwwwwwwwwwwwww, this.f3989Wwwwwwwwwwwwwwwwwwwwww, this.f4001Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f3985Wwwwwwwwwwwwwwwwww, list, appGlideModule, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
    }
}
