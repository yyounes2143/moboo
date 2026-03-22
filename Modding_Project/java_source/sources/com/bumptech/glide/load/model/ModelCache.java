package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Util;
import java.util.Queue;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ModelCache<A, B> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LruCache<ModelKey<A>, B> f4637Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class ModelKey<A> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final Queue<ModelKey<?>> f4639Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public A f4640Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f4641Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f4642Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public static <A> ModelKey<A> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(A a2, int i, int i2) {
            ModelKey<A> modelKey;
            Queue<ModelKey<?>> queue = f4639Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            synchronized (queue) {
                modelKey = (ModelKey<A>) queue.poll();
            }
            if (modelKey == null) {
                modelKey = new ModelKey<>();
            }
            modelKey.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(a2, i, i2);
            return modelKey;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Queue<ModelKey<?>> queue = f4639Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            synchronized (queue) {
                queue.offer(this);
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(A a2, int i, int i2) {
            this.f4640Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = a2;
            this.f4641Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f4642Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        }

        public boolean equals(Object obj) {
            if (obj instanceof ModelKey) {
                ModelKey modelKey = (ModelKey) obj;
                if (this.f4641Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == modelKey.f4641Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4642Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == modelKey.f4642Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4640Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(modelKey.f4640Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return (((this.f4642Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww * 31) + this.f4641Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f4640Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }
    }

    public ModelCache() {
        this(250L);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(A a2, int i, int i2, B b) {
        this.f4637Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(ModelKey.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(a2, i, i2), b);
    }

    @Nullable
    public B Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(A a2, int i, int i2) {
        ModelKey<A> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ModelKey.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(a2, i, i2);
        B Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4637Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public ModelCache(long j) {
        this.f4637Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LruCache<ModelKey<A>, B>(j) { // from class: com.bumptech.glide.load.model.ModelCache.1
            @Override // com.bumptech.glide.util.LruCache
            /* renamed from: Wwwwwwwwwwwwwwwwwwwww */
            public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ModelKey<A> modelKey, @Nullable B b) {
                modelKey.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        };
    }
}
