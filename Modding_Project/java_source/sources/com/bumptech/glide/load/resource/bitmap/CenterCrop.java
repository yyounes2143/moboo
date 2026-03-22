package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.security.MessageDigest;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class CenterCrop extends BitmapTransformation {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f4740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(Key.f4180Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapTransformation
    public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        return TransformationUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmapPool, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.Key
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f4740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        return obj instanceof CenterCrop;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return -599754482;
    }
}
