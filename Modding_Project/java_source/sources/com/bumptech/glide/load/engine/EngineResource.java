package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
class EngineResource<Z> implements Resource<Z> {

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4397Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4398Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Key f4399Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResourceListener f4400Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Resource<Z> f4401Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f4402Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f4403Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface ResourceListener {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, EngineResource<?> engineResource);
    }

    public EngineResource(Resource<Z> resource, boolean z, boolean z2, Key key, ResourceListener resourceListener) {
        this.f4401Wwwwwwwwwwwwwwwwwwwwwww = (Resource) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resource);
        this.f4403Wwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f4402Wwwwwwwwwwwwwwwwwwwwwwww = z2;
        this.f4399Wwwwwwwwwwwwwwwwwwwww = key;
        this.f4400Wwwwwwwwwwwwwwwwwwwwww = (ResourceListener) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceListener);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        synchronized (this) {
            int i = this.f4398Wwwwwwwwwwwwwwwwwwww;
            if (i > 0) {
                z = true;
                int i2 = i - 1;
                this.f4398Wwwwwwwwwwwwwwwwwwww = i2;
                if (i2 != 0) {
                    z = false;
                }
            } else {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
        }
        if (z) {
            this.f4400Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4399Wwwwwwwwwwwwwwwwwwwww, this);
        }
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4403Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Resource<Z> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4401Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f4397Wwwwwwwwwwwwwwwwwww) {
            this.f4398Wwwwwwwwwwwwwwwwwwww++;
        } else {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<Z> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4401Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Z get() {
        return this.f4401Wwwwwwwwwwwwwwwwwwwwwww.get();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return this.f4401Wwwwwwwwwwwwwwwwwwwwwww.getSize();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public synchronized void recycle() {
        if (this.f4398Wwwwwwwwwwwwwwwwwwww <= 0) {
            if (!this.f4397Wwwwwwwwwwwwwwwwwww) {
                this.f4397Wwwwwwwwwwwwwwwwwww = true;
                if (this.f4402Wwwwwwwwwwwwwwwwwwwwwwww) {
                    this.f4401Wwwwwwwwwwwwwwwwwwwwwww.recycle();
                }
            } else {
                throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
            }
        } else {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
    }

    public synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f4403Wwwwwwwwwwwwwwwwwwwwwwwww + ", listener=" + this.f4400Wwwwwwwwwwwwwwwwwwwwww + ", key=" + this.f4399Wwwwwwwwwwwwwwwwwwwww + ", acquired=" + this.f4398Wwwwwwwwwwwwwwwwwwww + ", isRecycled=" + this.f4397Wwwwwwwwwwwwwwwwwww + ", resource=" + this.f4401Wwwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.END_OBJ;
    }
}
