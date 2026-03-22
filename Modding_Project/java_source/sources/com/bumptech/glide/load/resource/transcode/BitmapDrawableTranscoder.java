package com.bumptech.glide.load.resource.transcode;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.bitmap.LazyBitmapDrawableResource;
import com.bumptech.glide.util.Preconditions;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class BitmapDrawableTranscoder implements ResourceTranscoder<Bitmap, BitmapDrawable> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Resources f4919Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public BitmapDrawableTranscoder(@NonNull Resources resources) {
        this.f4919Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (Resources) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resources);
    }

    @Override // com.bumptech.glide.load.resource.transcode.ResourceTranscoder
    @Nullable
    public Resource<BitmapDrawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Resource<Bitmap> resource, @NonNull Options options) {
        return LazyBitmapDrawableResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4919Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, resource);
    }
}
