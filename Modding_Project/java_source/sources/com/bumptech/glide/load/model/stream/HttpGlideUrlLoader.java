package com.bumptech.glide.load.model.stream;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.HttpUrlFetcher;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class HttpGlideUrlLoader implements ModelLoader<GlideUrl, InputStream> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Option<Integer> f4691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Option.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ModelCache<GlideUrl, GlideUrl> f4692Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Factory implements ModelLoaderFactory<GlideUrl, InputStream> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ModelCache<GlideUrl, GlideUrl> f4693Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ModelCache<>(500);

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<GlideUrl, InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new HttpGlideUrlLoader(this.f4693Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    public HttpGlideUrlLoader() {
        this(null);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull GlideUrl glideUrl) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ModelLoader.LoadData<InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull GlideUrl glideUrl, int i, int i2, @NonNull Options options) {
        ModelCache<GlideUrl, GlideUrl> modelCache = this.f4692Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (modelCache != null) {
            GlideUrl Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = modelCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(glideUrl, 0, 0);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                this.f4692Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(glideUrl, 0, 0, glideUrl);
            } else {
                glideUrl = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        }
        return new ModelLoader.LoadData<>(glideUrl, new HttpUrlFetcher(glideUrl, ((Integer) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f4691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)).intValue()));
    }

    public HttpGlideUrlLoader(@Nullable ModelCache<GlideUrl, GlideUrl> modelCache) {
        this.f4692Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = modelCache;
    }
}
