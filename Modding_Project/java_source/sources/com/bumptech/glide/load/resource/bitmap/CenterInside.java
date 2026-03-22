package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.security.MessageDigest;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class CenterInside extends BitmapTransformation {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f4741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(Key.f4180Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapTransformation
    public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        return TransformationUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmapPool, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.Key
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f4741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        return obj instanceof CenterInside;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return -670243078;
    }
}
