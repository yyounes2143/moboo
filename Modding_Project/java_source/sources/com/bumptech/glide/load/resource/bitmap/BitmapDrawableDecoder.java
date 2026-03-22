package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Preconditions;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class BitmapDrawableDecoder<DataType> implements ResourceDecoder<DataType, BitmapDrawable> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Resources f4726Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResourceDecoder<DataType, Bitmap> f4727Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public BitmapDrawableDecoder(@NonNull Resources resources, @NonNull ResourceDecoder<DataType, Bitmap> resourceDecoder) {
        this.f4726Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (Resources) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resources);
        this.f4727Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (ResourceDecoder) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceDecoder);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public Resource<BitmapDrawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull DataType datatype, int i, int i2, @NonNull Options options) throws IOException {
        return LazyBitmapDrawableResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4726Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4727Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(datatype, i, i2, options));
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull DataType datatype, @NonNull Options options) throws IOException {
        return this.f4727Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(datatype, options);
    }
}
