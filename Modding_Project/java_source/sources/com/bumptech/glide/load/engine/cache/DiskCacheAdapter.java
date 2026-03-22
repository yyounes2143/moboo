package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.cache.DiskCache;
import java.io.File;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class DiskCacheAdapter implements DiskCache {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class Factory implements DiskCache.Factory {
        @Override // com.bumptech.glide.load.engine.cache.DiskCache.Factory
        public DiskCache build() {
            return new DiskCacheAdapter();
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key) {
        return null;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public void clear() {
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, DiskCache.Writer writer) {
    }
}
