package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class RoundedCorners extends BitmapTransformation {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f4820Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "com.bumptech.glide.load.resource.bitmap.RoundedCorners".getBytes(Key.f4180Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4821Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapTransformation
    public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        return TransformationUtils.Wwwwwwwwwwwwwwwwww(bitmapPool, bitmap, this.f4821Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.bumptech.glide.load.Key
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f4820Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f4821Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).array());
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (!(obj instanceof RoundedCorners) || this.f4821Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != ((RoundedCorners) obj).f4821Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return false;
        }
        return true;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return Util.Wwwwwwwwwwwwwwwwwwww(-569625254, Util.Wwwwwwwwwwwwwwwwwwwww(this.f4821Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
    }
}
