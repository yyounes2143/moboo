package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import java.security.MessageDigest;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class Options implements Key {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayMap<Option<?>, Object> f4187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new CachedHashCodeArrayMap();

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Option<T> option, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        option.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, messageDigest);
    }

    @NonNull
    public <T> Options Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Option<T> option, @NonNull T t) {
        this.f4187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(option, t);
        return this;
    }

    public Options Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Option<?> option) {
        this.f4187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(option);
        return this;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Options options) {
        this.f4187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.putAll((SimpleArrayMap<? extends Option<?>, ? extends Object>) options.f4187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Nullable
    public <T> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Option<T> option) {
        if (this.f4187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.containsKey(option)) {
            return (T) this.f4187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(option);
        }
        return option.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // com.bumptech.glide.load.Key
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
        for (int i = 0; i < this.f4187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size(); i++) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.keyAt(i), this.f4187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.valueAt(i), messageDigest);
        }
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof Options) {
            return this.f4187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(((Options) obj).f4187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.f4187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    public String toString() {
        return "Options{values=" + this.f4187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.END_OBJ;
    }
}
