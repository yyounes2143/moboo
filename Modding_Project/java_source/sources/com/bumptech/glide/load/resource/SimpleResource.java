package com.bumptech.glide.load.resource;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Preconditions;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class SimpleResource<T> implements Resource<T> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final T f4724Wwwwwwwwwwwwwwwwwwwwwwwww;

    public SimpleResource(@NonNull T t) {
        this.f4724Wwwwwwwwwwwwwwwwwwwwwwwww = (T) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(t);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return (Class<T>) this.f4724Wwwwwwwwwwwwwwwwwwwwwwwww.getClass();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public final T get() {
        return this.f4724Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        return 1;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public void recycle() {
    }
}
