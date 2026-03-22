package com.bumptech.glide.provider;

import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.load.engine.DecodePath;
import com.bumptech.glide.load.engine.LoadPath;
import com.bumptech.glide.load.resource.transcode.UnitTranscoder;
import com.bumptech.glide.util.MultiClassKey;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class LoadPathCache {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final LoadPath<?, ?, ?> f5002Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LoadPath<>(Object.class, Object.class, Object.class, Collections.singletonList(new DecodePath(Object.class, Object.class, Object.class, Collections.EMPTY_LIST, new UnitTranscoder(), null)), null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayMap<MultiClassKey, LoadPath<?, ?, ?>> f5004Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AtomicReference<MultiClassKey> f5003Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicReference<>();

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<?> cls, Class<?> cls2, Class<?> cls3, @Nullable LoadPath<?, ?, ?> loadPath) {
        synchronized (this.f5004Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            ArrayMap<MultiClassKey, LoadPath<?, ?, ?>> arrayMap = this.f5004Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            MultiClassKey multiClassKey = new MultiClassKey(cls, cls2, cls3);
            if (loadPath == null) {
                loadPath = f5002Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            arrayMap.put(multiClassKey, loadPath);
        }
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable LoadPath<?, ?, ?> loadPath) {
        return f5002Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(loadPath);
    }

    public final MultiClassKey Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        MultiClassKey andSet = this.f5003Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getAndSet(null);
        if (andSet == null) {
            andSet = new MultiClassKey();
        }
        andSet.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2, cls3);
        return andSet;
    }

    @Nullable
    public <Data, TResource, Transcode> LoadPath<Data, TResource, Transcode> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        LoadPath<Data, TResource, Transcode> loadPath;
        MultiClassKey Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2, cls3);
        synchronized (this.f5004Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            loadPath = (LoadPath<Data, TResource, Transcode>) this.f5004Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        this.f5003Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        return loadPath;
    }
}
