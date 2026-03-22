package com.bumptech.glide.load.engine.cache;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class SafeKeyGenerator {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LruCache<Key, String> f4537Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LruCache<>(1000);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Pools.Pool<PoolableDigestContainer> f4536Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = FactoryPools.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(10, new FactoryPools.Factory<PoolableDigestContainer>() { // from class: com.bumptech.glide.load.engine.cache.SafeKeyGenerator.1
        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public PoolableDigestContainer create() {
            try {
                return new PoolableDigestContainer(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
    });

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class PoolableDigestContainer implements FactoryPools.Poolable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final StateVerifier f4539Wwwwwwwwwwwwwwwwwwwwwwww = StateVerifier.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final MessageDigest f4540Wwwwwwwwwwwwwwwwwwwwwwwww;

        public PoolableDigestContainer(MessageDigest messageDigest) {
            this.f4540Wwwwwwwwwwwwwwwwwwwwwwwww = messageDigest;
        }

        @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
        @NonNull
        public StateVerifier Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f4539Wwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        synchronized (this.f4537Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4537Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(key);
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key);
        }
        synchronized (this.f4537Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f4537Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(key, Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key) {
        PoolableDigestContainer poolableDigestContainer = (PoolableDigestContainer) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4536Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.acquire());
        try {
            key.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(poolableDigestContainer.f4540Wwwwwwwwwwwwwwwwwwwwwwwww);
            return Util.Wwwwwwwwwww(poolableDigestContainer.f4540Wwwwwwwwwwwwwwwwwwwwwwwww.digest());
        } finally {
            this.f4536Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.release(poolableDigestContainer);
        }
    }
}
