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
public final class GranularRoundedCorners extends BitmapTransformation {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f4775Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = "com.bumptech.glide.load.resource.bitmap.GranularRoundedCorners".getBytes(Key.f4180Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final float f4776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final float f4777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final float f4778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final float f4779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapTransformation
    public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        return TransformationUtils.Wwwwwwwwwwwwwwwwwww(bitmapPool, bitmap, this.f4779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.bumptech.glide.load.Key
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f4775Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        messageDigest.update(ByteBuffer.allocate(16).putFloat(this.f4779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).putFloat(this.f4778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).putFloat(this.f4777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).putFloat(this.f4776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww).array());
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof GranularRoundedCorners) {
            GranularRoundedCorners granularRoundedCorners = (GranularRoundedCorners) obj;
            if (this.f4779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == granularRoundedCorners.f4779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == granularRoundedCorners.f4778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == granularRoundedCorners.f4777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == granularRoundedCorners.f4776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return Util.Wwwwwwwwwwwwwwwwwwwwww(this.f4776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Util.Wwwwwwwwwwwwwwwwwwwwww(this.f4777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Util.Wwwwwwwwwwwwwwwwwwwwww(this.f4778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Util.Wwwwwwwwwwwwwwwwwwww(-2013597734, Util.Wwwwwwwwwwwwwwwwwwwwwww(this.f4779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)))));
    }
}
