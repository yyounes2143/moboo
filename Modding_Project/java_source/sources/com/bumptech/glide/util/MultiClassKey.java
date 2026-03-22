package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MultiClassKey {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Class<?> f5207Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Class<?> f5208Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Class<?> f5209Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public MultiClassKey() {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        this.f5209Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
        this.f5208Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls2;
        this.f5207Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MultiClassKey multiClassKey = (MultiClassKey) obj;
        if (this.f5209Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(multiClassKey.f5209Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f5208Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(multiClassKey.f5208Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5207Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, multiClassKey.f5207Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i;
        int hashCode = ((this.f5209Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f5208Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31;
        Class<?> cls = this.f5207Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (cls != null) {
            i = cls.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }

    public String toString() {
        return "MultiClassKey{first=" + this.f5209Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", second=" + this.f5208Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.END_OBJ;
    }

    public MultiClassKey(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2, cls3);
    }
}
