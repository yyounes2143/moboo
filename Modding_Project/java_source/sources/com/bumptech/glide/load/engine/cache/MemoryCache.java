package com.bumptech.glide.load.engine.cache;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Resource;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface MemoryCache {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface ResourceRemovedListener {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Resource<?> resource);
    }

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ResourceRemovedListener resourceRemovedListener);

    long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @Nullable
    Resource<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Key key);

    @Nullable
    Resource<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Key key, @Nullable Resource<?> resource);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i);

    long getCurrentSize();
}
