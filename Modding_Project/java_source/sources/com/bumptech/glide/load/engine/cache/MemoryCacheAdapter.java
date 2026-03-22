package com.bumptech.glide.load.engine.cache;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.cache.MemoryCache;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MemoryCacheAdapter implements MemoryCache {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MemoryCache.ResourceRemovedListener f4521Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MemoryCache.ResourceRemovedListener resourceRemovedListener) {
        this.f4521Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceRemovedListener;
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return 0L;
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    @Nullable
    public Resource<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Key key) {
        return null;
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    @Nullable
    public Resource<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Key key, @Nullable Resource<?> resource) {
        if (resource != null) {
            this.f4521Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resource);
            return null;
        }
        return null;
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    public long getCurrentSize() {
        return 0L;
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
    }
}
