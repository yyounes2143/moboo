package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class LockedResource<Z> implements Resource<Z>, FactoryPools.Poolable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pools.Pool<LockedResource<?>> f4413Wwwwwwwwwwwwwwwwwwwww = FactoryPools.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(20, new FactoryPools.Factory<LockedResource<?>>() { // from class: com.bumptech.glide.load.engine.LockedResource.1
        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public LockedResource<?> create() {
            return new LockedResource<>();
        }
    });

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4414Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4415Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Resource<Z> f4416Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final StateVerifier f4417Wwwwwwwwwwwwwwwwwwwwwwwww = StateVerifier.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    private void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4416Wwwwwwwwwwwwwwwwwwwwwwww = null;
        f4413Wwwwwwwwwwwwwwwwwwwww.release(this);
    }

    @NonNull
    public static <Z> LockedResource<Z> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Resource<Z> resource) {
        LockedResource<Z> lockedResource = (LockedResource) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f4413Wwwwwwwwwwwwwwwwwwwww.acquire());
        lockedResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resource);
        return lockedResource;
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4417Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (this.f4415Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f4415Wwwwwwwwwwwwwwwwwwwwwww = false;
            if (this.f4414Wwwwwwwwwwwwwwwwwwwwww) {
                recycle();
            }
        } else {
            throw new IllegalStateException("Already unlocked");
        }
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    @NonNull
    public StateVerifier Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4417Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Resource<Z> resource) {
        this.f4414Wwwwwwwwwwwwwwwwwwwwww = false;
        this.f4415Wwwwwwwwwwwwwwwwwwwwwww = true;
        this.f4416Wwwwwwwwwwwwwwwwwwwwwwww = resource;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<Z> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4416Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Z get() {
        return this.f4416Wwwwwwwwwwwwwwwwwwwwwwww.get();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return this.f4416Wwwwwwwwwwwwwwwwwwwwwwww.getSize();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public synchronized void recycle() {
        this.f4417Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f4414Wwwwwwwwwwwwwwwwwwwwww = true;
        if (!this.f4415Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f4416Wwwwwwwwwwwwwwwwwwwwwwww.recycle();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }
}
