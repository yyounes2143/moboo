package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.engine.cache.DiskCache;
import java.io.File;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class DiskLruCacheFactory implements DiskCache.Factory {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CacheDirectoryGetter f4504Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f4505Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* renamed from: com.bumptech.glide.load.engine.cache.DiskLruCacheFactory$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements CacheDirectoryGetter {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ String f4506Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
        public File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new File(this.f4506Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    /* renamed from: com.bumptech.glide.load.engine.cache.DiskLruCacheFactory$2  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements CacheDirectoryGetter {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ String f4507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ String f4508Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
        public File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new File(this.f4508Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface CacheDirectoryGetter {
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public DiskLruCacheFactory(CacheDirectoryGetter cacheDirectoryGetter, long j) {
        this.f4505Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f4504Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cacheDirectoryGetter;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache.Factory
    public DiskCache build() {
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4504Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isDirectory() && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.mkdirs()) {
            return null;
        }
        return DiskLruCacheWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f4505Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
