package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
class EngineKey implements Key {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4388Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Options f4389Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Class<?>, Transformation<?>> f4390Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Key f4391Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<?> f4392Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<?> f4393Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4394Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Object f4396Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public EngineKey(Object obj, Key key, int i, int i2, Map<Class<?>, Transformation<?>> map, Class<?> cls, Class<?> cls2, Options options) {
        this.f4396Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
        this.f4391Wwwwwwwwwwwwwwwwwwwwwwwwwwww = (Key) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, "Signature must not be null");
        this.f4395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f4394Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f4390Wwwwwwwwwwwwwwwwwwwwwwwwwww = (Map) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(map);
        this.f4393Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (Class) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, "Resource class must not be null");
        this.f4392Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = (Class) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls2, "Transcode class must not be null");
        this.f4389Wwwwwwwwwwwwwwwwwwwwwwwwww = (Options) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(options);
    }

    @Override // com.bumptech.glide.load.Key
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof EngineKey) {
            EngineKey engineKey = (EngineKey) obj;
            if (this.f4396Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(engineKey.f4396Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f4391Wwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(engineKey.f4391Wwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f4394Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == engineKey.f4394Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == engineKey.f4395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4390Wwwwwwwwwwwwwwwwwwwwwwwwwww.equals(engineKey.f4390Wwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f4393Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(engineKey.f4393Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f4392Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(engineKey.f4392Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f4389Wwwwwwwwwwwwwwwwwwwwwwwwww.equals(engineKey.f4389Wwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        if (this.f4388Wwwwwwwwwwwwwwwwwwwwwwwww == 0) {
            int hashCode = this.f4396Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
            this.f4388Wwwwwwwwwwwwwwwwwwwwwwwww = hashCode;
            int hashCode2 = (((((hashCode * 31) + this.f4391Wwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f4395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f4394Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f4388Wwwwwwwwwwwwwwwwwwwwwwwww = hashCode2;
            int hashCode3 = (hashCode2 * 31) + this.f4390Wwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
            this.f4388Wwwwwwwwwwwwwwwwwwwwwwwww = hashCode3;
            int hashCode4 = (hashCode3 * 31) + this.f4393Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
            this.f4388Wwwwwwwwwwwwwwwwwwwwwwwww = hashCode4;
            int hashCode5 = (hashCode4 * 31) + this.f4392Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
            this.f4388Wwwwwwwwwwwwwwwwwwwwwwwww = hashCode5;
            this.f4388Wwwwwwwwwwwwwwwwwwwwwwwww = (hashCode5 * 31) + this.f4389Wwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }
        return this.f4388Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String toString() {
        return "EngineKey{model=" + this.f4396Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", width=" + this.f4395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", height=" + this.f4394Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", resourceClass=" + this.f4393Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", transcodeClass=" + this.f4392Wwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", signature=" + this.f4391Wwwwwwwwwwwwwwwwwwwwwwwwwwww + ", hashCode=" + this.f4388Wwwwwwwwwwwwwwwwwwwwwwwww + ", transformations=" + this.f4390Wwwwwwwwwwwwwwwwwwwwwwwwwww + ", options=" + this.f4389Wwwwwwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.END_OBJ;
    }
}
