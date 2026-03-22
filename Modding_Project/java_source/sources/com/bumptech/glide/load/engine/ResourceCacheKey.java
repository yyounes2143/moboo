package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class ResourceCacheKey implements Key {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final LruCache<Class<?>, byte[]> f4428Wwwwwwwwwwwwwwwwwwwwwwwww = new LruCache<>(50);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Transformation<?> f4429Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Options f4430Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<?> f4431Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4432Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4433Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Key f4434Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Key f4435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayPool f4436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ResourceCacheKey(ArrayPool arrayPool, Key key, Key key2, int i, int i2, Transformation<?> transformation, Class<?> cls, Options options) {
        this.f4436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayPool;
        this.f4435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = key;
        this.f4434Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = key2;
        this.f4433Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f4432Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f4429Wwwwwwwwwwwwwwwwwwwwwwwwww = transformation;
        this.f4431Wwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
        this.f4430Wwwwwwwwwwwwwwwwwwwwwwwwwww = options;
    }

    public final byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        LruCache<Class<?>, byte[]> lruCache = f4428Wwwwwwwwwwwwwwwwwwwwwwwww;
        byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = lruCache.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4431Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            byte[] bytes = this.f4431Wwwwwwwwwwwwwwwwwwwwwwwwwwww.getName().getBytes(Key.f4180Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            lruCache.Wwwwwwwwwwwwwwwwwwwwwwww(this.f4431Wwwwwwwwwwwwwwwwwwwwwwwwwwww, bytes);
            return bytes;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // com.bumptech.glide.load.Key
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f4436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f4433Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww).putInt(this.f4432Wwwwwwwwwwwwwwwwwwwwwwwwwwwww).array();
        this.f4434Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(messageDigest);
        this.f4435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(messageDigest);
        messageDigest.update(bArr);
        Transformation<?> transformation = this.f4429Wwwwwwwwwwwwwwwwwwwwwwwwww;
        if (transformation != null) {
            transformation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(messageDigest);
        }
        this.f4430Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(messageDigest);
        messageDigest.update(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        this.f4436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(bArr);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof ResourceCacheKey) {
            ResourceCacheKey resourceCacheKey = (ResourceCacheKey) obj;
            if (this.f4432Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == resourceCacheKey.f4432Wwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4433Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == resourceCacheKey.f4433Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4429Wwwwwwwwwwwwwwwwwwwwwwwwww, resourceCacheKey.f4429Wwwwwwwwwwwwwwwwwwwwwwwwww) && this.f4431Wwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(resourceCacheKey.f4431Wwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f4435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(resourceCacheKey.f4435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f4434Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(resourceCacheKey.f4434Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f4430Wwwwwwwwwwwwwwwwwwwwwwwwwww.equals(resourceCacheKey.f4430Wwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        int hashCode = (((((this.f4435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f4434Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f4433Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f4432Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Transformation<?> transformation = this.f4429Wwwwwwwwwwwwwwwwwwwwwwwwww;
        if (transformation != null) {
            hashCode = (hashCode * 31) + transformation.hashCode();
        }
        return (((hashCode * 31) + this.f4431Wwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f4430Wwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    public String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f4435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", signature=" + this.f4434Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", width=" + this.f4433Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", height=" + this.f4432Wwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", decodedResourceClass=" + this.f4431Wwwwwwwwwwwwwwwwwwwwwwwwwwww + ", transformation='" + this.f4429Wwwwwwwwwwwwwwwwwwwwwwwwww + "', options=" + this.f4430Wwwwwwwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.END_OBJ;
    }
}
