package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.util.MultiClassKey;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ModelToResourceClassCache {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AtomicReference<MultiClassKey> f5006Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicReference<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayMap<MultiClassKey, List<Class<?>>> f5005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayMap<>();

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3, @NonNull List<Class<?>> list) {
        synchronized (this.f5005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f5005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(new MultiClassKey(cls, cls2, cls3), list);
        }
    }

    @Nullable
    public List<Class<?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3) {
        List<Class<?>> list;
        MultiClassKey andSet = this.f5006Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getAndSet(null);
        if (andSet == null) {
            andSet = new MultiClassKey(cls, cls2, cls3);
        } else {
            andSet.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2, cls3);
        }
        synchronized (this.f5005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            list = this.f5005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(andSet);
        }
        this.f5006Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(andSet);
        return list;
    }
}
