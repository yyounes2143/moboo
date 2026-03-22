package com.bumptech.glide.load.resource.transcode;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.bytes.BytesResource;
import java.io.ByteArrayOutputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class BitmapBytesTranscoder implements ResourceTranscoder<Bitmap, byte[]> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4917Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bitmap.CompressFormat f4918Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public BitmapBytesTranscoder() {
        this(Bitmap.CompressFormat.JPEG, 100);
    }

    @Override // com.bumptech.glide.load.resource.transcode.ResourceTranscoder
    @Nullable
    public Resource<byte[]> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Resource<Bitmap> resource, @NonNull Options options) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        resource.get().compress(this.f4918Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4917Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, byteArrayOutputStream);
        resource.recycle();
        return new BytesResource(byteArrayOutputStream.toByteArray());
    }

    public BitmapBytesTranscoder(@NonNull Bitmap.CompressFormat compressFormat, int i) {
        this.f4918Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = compressFormat;
        this.f4917Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
    }
}
