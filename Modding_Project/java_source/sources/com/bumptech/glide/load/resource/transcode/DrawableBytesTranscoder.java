package com.bumptech.glide.load.resource.transcode;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.gif.GifDrawable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class DrawableBytesTranscoder implements ResourceTranscoder<Drawable, byte[]> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResourceTranscoder<GifDrawable, byte[]> f4920Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResourceTranscoder<Bitmap, byte[]> f4921Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BitmapPool f4922Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public DrawableBytesTranscoder(@NonNull BitmapPool bitmapPool, @NonNull ResourceTranscoder<Bitmap, byte[]> resourceTranscoder, @NonNull ResourceTranscoder<GifDrawable, byte[]> resourceTranscoder2) {
        this.f4922Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bitmapPool;
        this.f4921Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceTranscoder;
        this.f4920Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceTranscoder2;
    }

    @Override // com.bumptech.glide.load.resource.transcode.ResourceTranscoder
    @Nullable
    public Resource<byte[]> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Resource<Drawable> resource, @NonNull Options options) {
        Drawable drawable = resource.get();
        if (drawable instanceof BitmapDrawable) {
            return this.f4921Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(((BitmapDrawable) drawable).getBitmap(), this.f4922Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), options);
        }
        if (drawable instanceof GifDrawable) {
            return this.f4920Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resource), options);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static Resource<GifDrawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Resource<Drawable> resource) {
        return resource;
    }
}
