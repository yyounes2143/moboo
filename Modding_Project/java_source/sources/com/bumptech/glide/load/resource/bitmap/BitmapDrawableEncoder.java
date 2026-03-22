package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.io.File;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class BitmapDrawableEncoder implements ResourceEncoder<BitmapDrawable> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResourceEncoder<Bitmap> f4728Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BitmapPool f4729Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public BitmapDrawableEncoder(BitmapPool bitmapPool, ResourceEncoder<Bitmap> resourceEncoder) {
        this.f4729Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bitmapPool;
        this.f4728Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceEncoder;
    }

    @Override // com.bumptech.glide.load.Encoder
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Resource<BitmapDrawable> resource, @NonNull File file, @NonNull Options options) {
        return this.f4728Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new BitmapResource(resource.get().getBitmap(), this.f4729Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), file, options);
    }

    @Override // com.bumptech.glide.load.ResourceEncoder
    @NonNull
    public EncodeStrategy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Options options) {
        return this.f4728Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(options);
    }
}
