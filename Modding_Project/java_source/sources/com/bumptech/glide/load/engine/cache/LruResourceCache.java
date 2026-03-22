package com.bumptech.glide.load.engine.cache;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.util.LruCache;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class LruResourceCache extends LruCache<Key, Resource<?>> implements MemoryCache {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MemoryCache.ResourceRemovedListener f4520Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public LruResourceCache(long j) {
        super(j);
    }

    @Override // com.bumptech.glide.util.LruCache
    /* renamed from: Wwwwwwwwwwwwwwwwwwww */
    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Key key, @Nullable Resource<?> resource) {
        MemoryCache.ResourceRemovedListener resourceRemovedListener = this.f4520Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (resourceRemovedListener != null && resource != null) {
            resourceRemovedListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resource);
        }
    }

    @Override // com.bumptech.glide.util.LruCache
    /* renamed from: Wwwwwwwwwwwwwwwwwwwww */
    public int Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Resource<?> resource) {
        if (resource == null) {
            return super.Wwwwwwwwwwwwwwwwwwwwwwwwww(null);
        }
        return resource.getSize();
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MemoryCache.ResourceRemovedListener resourceRemovedListener) {
        this.f4520Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceRemovedListener;
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    @Nullable
    public /* bridge */ /* synthetic */ Resource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Key key) {
        return (Resource) super.Wwwwwwwwwwwwwwwwwwwwwww(key);
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    @Nullable
    public /* bridge */ /* synthetic */ Resource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Key key, @Nullable Resource resource) {
        return (Resource) super.Wwwwwwwwwwwwwwwwwwwwwwww(key, resource);
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    @SuppressLint({"InlinedApi"})
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i >= 40) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else if (i < 20 && i != 15) {
        } else {
            Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() / 2);
        }
    }
}
