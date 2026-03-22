package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.util.ExceptionPassthroughInputStream;
import com.bumptech.glide.util.MarkEnforcingInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class StreamBitmapDecoder implements ResourceDecoder<InputStream, Bitmap> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayPool f4822Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Downsampler f4823Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class UntrustedCallbacks implements Downsampler.DecodeCallbacks {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ExceptionPassthroughInputStream f4824Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final RecyclableBufferedInputStream f4825Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public UntrustedCallbacks(RecyclableBufferedInputStream recyclableBufferedInputStream, ExceptionPassthroughInputStream exceptionPassthroughInputStream) {
            this.f4825Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = recyclableBufferedInputStream;
            this.f4824Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = exceptionPassthroughInputStream;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f4825Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapPool bitmapPool, Bitmap bitmap) throws IOException {
            IOException Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4824Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                if (bitmap != null) {
                    bitmapPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
                }
                throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        }
    }

    public StreamBitmapDecoder(Downsampler downsampler, ArrayPool arrayPool) {
        this.f4823Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = downsampler;
        this.f4822Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayPool;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull InputStream inputStream, @NonNull Options options) {
        return this.f4823Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww(inputStream);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public Resource<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull InputStream inputStream, int i, int i2, @NonNull Options options) throws IOException {
        boolean z;
        RecyclableBufferedInputStream recyclableBufferedInputStream;
        if (inputStream instanceof RecyclableBufferedInputStream) {
            recyclableBufferedInputStream = (RecyclableBufferedInputStream) inputStream;
            z = false;
        } else {
            z = true;
            recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, this.f4822Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        ExceptionPassthroughInputStream Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = ExceptionPassthroughInputStream.Wwwwwwwwwwwwwwwwwwwwwwwwwww(recyclableBufferedInputStream);
        try {
            return this.f4823Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(new MarkEnforcingInputStream(Wwwwwwwwwwwwwwwwwwwwwwwwwww2), i, i2, options, new UntrustedCallbacks(recyclableBufferedInputStream, Wwwwwwwwwwwwwwwwwwwwwwwwwww2));
        } finally {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2.release();
            if (z) {
                recyclableBufferedInputStream.release();
            }
        }
    }
}
