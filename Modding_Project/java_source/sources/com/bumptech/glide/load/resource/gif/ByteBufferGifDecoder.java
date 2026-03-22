package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.gifdecoder.GifHeaderParser;
import com.bumptech.glide.gifdecoder.StandardGifDecoder;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.UnitTransformation;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ByteBufferGifDecoder implements ResourceDecoder<ByteBuffer, GifDrawable> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GifBitmapProvider f4866Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GifDecoderFactory f4867Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GifHeaderParserPool f4868Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<ImageHeaderParser> f4869Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f4870Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final GifDecoderFactory f4865Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new GifDecoderFactory();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final GifHeaderParserPool f4864Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new GifHeaderParserPool();

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class GifDecoderFactory {
        public GifDecoder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GifDecoder.BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer, int i) {
            return new StandardGifDecoder(bitmapProvider, gifHeader, byteBuffer, i);
        }
    }

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class GifHeaderParserPool {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Queue<GifHeaderParser> f4871Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);

        public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GifHeaderParser gifHeaderParser) {
            gifHeaderParser.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f4871Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.offer(gifHeaderParser);
        }

        public synchronized GifHeaderParser Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteBuffer byteBuffer) {
            GifHeaderParser poll;
            try {
                poll = this.f4871Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.poll();
                if (poll == null) {
                    poll = new GifHeaderParser();
                }
            } catch (Throwable th) {
                throw th;
            }
            return poll.Wwwwwwwwwwwwwwwwwww(byteBuffer);
        }
    }

    public ByteBufferGifDecoder(Context context, List<ImageHeaderParser> list, BitmapPool bitmapPool, ArrayPool arrayPool) {
        this(context, list, bitmapPool, arrayPool, f4864Wwwwwwwwwwwwwwwwwwwwwwwwwwww, f4865Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GifHeader gifHeader, int i, int i2) {
        int highestOneBit;
        int min = Math.min(gifHeader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() / i2, gifHeader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() / i);
        if (min == 0) {
            highestOneBit = 0;
        } else {
            highestOneBit = Integer.highestOneBit(min);
        }
        int max = Math.max(1, highestOneBit);
        if (Log.isLoggable("BufferGifDecoder", 2) && max > 1) {
            gifHeader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            gifHeader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return max;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ByteBuffer byteBuffer, @NonNull Options options) throws IOException {
        if (!((Boolean) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GifOptions.f4912Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)).booleanValue() && ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4869Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, byteBuffer) == ImageHeaderParser.ImageType.GIF) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public GifDrawableResource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ByteBuffer byteBuffer, int i, int i2, @NonNull Options options) {
        GifHeaderParser Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4868Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteBuffer);
        try {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteBuffer, i, i2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, options);
        } finally {
            this.f4868Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
    }

    @Nullable
    public final GifDrawableResource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteBuffer byteBuffer, int i, int i2, GifHeaderParser gifHeaderParser, Options options) {
        Bitmap.Config config;
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        try {
            GifHeader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = gifHeaderParser.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() > 0 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == 0) {
                if (options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GifOptions.f4913Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) == DecodeFormat.PREFER_RGB_565) {
                    config = Bitmap.Config.RGB_565;
                } else {
                    config = Bitmap.Config.ARGB_8888;
                }
                GifDecoder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4867Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4866Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, byteBuffer, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, i, i2));
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(config);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == null) {
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    }
                    return null;
                }
                GifDrawableResource gifDrawableResource = new GifDrawableResource(new GifDrawable(this.f4870Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, UnitTransformation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), i, i2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3));
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                return gifDrawableResource;
            }
            return null;
        } finally {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        }
    }

    @VisibleForTesting
    public ByteBufferGifDecoder(Context context, List<ImageHeaderParser> list, BitmapPool bitmapPool, ArrayPool arrayPool, GifHeaderParserPool gifHeaderParserPool, GifDecoderFactory gifDecoderFactory) {
        this.f4870Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
        this.f4869Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f4867Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = gifDecoderFactory;
        this.f4866Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new GifBitmapProvider(bitmapPool, arrayPool);
        this.f4868Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = gifHeaderParserPool;
    }
}
