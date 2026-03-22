package com.bumptech.glide.signature;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class ObjectKey implements Key {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Object f5178Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ObjectKey(@NonNull Object obj) {
        this.f5178Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
    }

    @Override // com.bumptech.glide.load.Key
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
        messageDigest.update(this.f5178Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString().getBytes(Key.f4180Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof ObjectKey) {
            return this.f5178Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(((ObjectKey) obj).f5178Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.f5178Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    public String toString() {
        return "ObjectKey{object=" + this.f5178Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.END_OBJ;
    }
}
