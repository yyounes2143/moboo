package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import java.security.MessageDigest;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class DataCacheKey implements Key {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Key f4253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Key f4254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public DataCacheKey(Key key, Key key2) {
        this.f4254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = key;
        this.f4253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = key2;
    }

    @Override // com.bumptech.glide.load.Key
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
        this.f4254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(messageDigest);
        this.f4253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(messageDigest);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof DataCacheKey) {
            DataCacheKey dataCacheKey = (DataCacheKey) obj;
            if (this.f4254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(dataCacheKey.f4254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f4253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(dataCacheKey.f4253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return (this.f4254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f4253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    public String toString() {
        return "DataCacheKey{sourceKey=" + this.f4254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", signature=" + this.f4253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.END_OBJ;
    }
}
