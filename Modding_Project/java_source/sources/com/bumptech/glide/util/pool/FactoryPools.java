package com.bumptech.glide.util.pool;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class FactoryPools {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Resetter<Object> f5216Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Resetter<Object>() { // from class: com.bumptech.glide.util.pool.FactoryPools.1
        @Override // com.bumptech.glide.util.pool.FactoryPools.Resetter
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Object obj) {
        }
    };

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface Factory<T> {
        T create();
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class FactoryPool<T> implements Pools.Pool<T> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Pools.Pool<T> f5217Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Resetter<T> f5218Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Factory<T> f5219Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public FactoryPool(@NonNull Pools.Pool<T> pool, @NonNull Factory<T> factory, @NonNull Resetter<T> resetter) {
            this.f5217Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = pool;
            this.f5219Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = factory;
            this.f5218Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resetter;
        }

        @Override // androidx.core.util.Pools.Pool
        public T acquire() {
            T acquire = this.f5217Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.acquire();
            if (acquire == null) {
                acquire = this.f5219Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.create();
                if (Log.isLoggable("FactoryPools", 2)) {
                    acquire.getClass().toString();
                }
            }
            if (acquire instanceof Poolable) {
                ((Poolable) acquire).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
            }
            return acquire;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t) {
            if (t instanceof Poolable) {
                ((Poolable) t).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
            }
            this.f5218Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(t);
            return this.f5217Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.release(t);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface Poolable {
        @NonNull
        StateVerifier Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface Resetter<T> {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull T t);
    }

    @NonNull
    public static <T> Pools.Pool<List<T>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Pools.SynchronizedPool(i), new Factory<List<T>>() { // from class: com.bumptech.glide.util.pool.FactoryPools.2
            @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
            @NonNull
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public List<T> create() {
                return new ArrayList();
            }
        }, new Resetter<List<T>>() { // from class: com.bumptech.glide.util.pool.FactoryPools.3
            @Override // com.bumptech.glide.util.pool.FactoryPools.Resetter
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull List<T> list) {
                list.clear();
            }
        });
    }

    @NonNull
    public static <T> Pools.Pool<List<T>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(20);
    }

    @NonNull
    public static <T extends Poolable> Pools.Pool<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, @NonNull Factory<T> factory) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Pools.SynchronizedPool(i), factory);
    }

    @NonNull
    public static <T> Resetter<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return (Resetter<T>) f5216Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public static <T> Pools.Pool<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Pools.Pool<T> pool, @NonNull Factory<T> factory, @NonNull Resetter<T> resetter) {
        return new FactoryPool(pool, factory, resetter);
    }

    @NonNull
    public static <T extends Poolable> Pools.Pool<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Pools.Pool<T> pool, @NonNull Factory<T> factory) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(pool, factory, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }
}
