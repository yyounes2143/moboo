package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class Option<T> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final CacheKeyUpdater<Object> f4182Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new CacheKeyUpdater<Object>() { // from class: com.bumptech.glide.load.Option.1
        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull byte[] bArr, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile byte[] f4183Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f4184Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CacheKeyUpdater<T> f4185Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final T f4186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface CacheKeyUpdater<T> {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull byte[] bArr, @NonNull T t, @NonNull MessageDigest messageDigest);
    }

    public Option(@NonNull String str, @Nullable T t, @NonNull CacheKeyUpdater<T> cacheKeyUpdater) {
        this.f4184Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        this.f4186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = t;
        this.f4185Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (CacheKeyUpdater) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cacheKeyUpdater);
    }

    @NonNull
    public static <T> Option<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str, @NonNull T t) {
        return new Option<>(str, t, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @NonNull
    public static <T> Option<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
        return new Option<>(str, null, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @NonNull
    public static <T> CacheKeyUpdater<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return (CacheKeyUpdater<T>) f4182Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public static <T> Option<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str, @Nullable T t, @NonNull CacheKeyUpdater<T> cacheKeyUpdater) {
        return new Option<>(str, t, cacheKeyUpdater);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull T t, @NonNull MessageDigest messageDigest) {
        this.f4185Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), t, messageDigest);
    }

    @NonNull
    public final byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f4183Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f4183Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f4184Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getBytes(Key.f4180Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return this.f4183Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Option) {
            return this.f4184Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(((Option) obj).f4184Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return false;
    }

    public int hashCode() {
        return this.f4184Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    public String toString() {
        return "Option{key='" + this.f4184Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + '\'' + AbstractJsonLexerKt.END_OBJ;
    }
}
