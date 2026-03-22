package com.bumptech.glide.load.resource.drawable;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.DefaultOnHeaderDecodedListener;
import com.bumptech.glide.util.ByteBufferUtil;
import com.bumptech.glide.util.Util;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* compiled from: Proguard */
@RequiresApi(28)
/* loaded from: classes3.dex */
public final class AnimatedImageDecoder {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayPool f4850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<ImageHeaderParser> f4851Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class AnimatedImageDrawableResource implements Resource<Drawable> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final AnimatedImageDrawable f4852Wwwwwwwwwwwwwwwwwwwwwwwww;

        public AnimatedImageDrawableResource(AnimatedImageDrawable animatedImageDrawable) {
            this.f4852Wwwwwwwwwwwwwwwwwwwwwwwww = animatedImageDrawable;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        @NonNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public AnimatedImageDrawable get() {
            return this.f4852Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        @NonNull
        public Class<Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return Drawable.class;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public int getSize() {
            int intrinsicWidth;
            int intrinsicHeight;
            intrinsicWidth = this.f4852Wwwwwwwwwwwwwwwwwwwwwwwww.getIntrinsicWidth();
            intrinsicHeight = this.f4852Wwwwwwwwwwwwwwwwwwwwwwwww.getIntrinsicHeight();
            return intrinsicWidth * intrinsicHeight * Util.Wwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap.Config.ARGB_8888) * 2;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public void recycle() {
            this.f4852Wwwwwwwwwwwwwwwwwwwwwwwww.stop();
            this.f4852Wwwwwwwwwwwwwwwwwwwwwwwww.clearAnimationCallbacks();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class ByteBufferAnimatedImageDecoder implements ResourceDecoder<ByteBuffer, Drawable> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final AnimatedImageDecoder f4853Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public ByteBufferAnimatedImageDecoder(AnimatedImageDecoder animatedImageDecoder) {
            this.f4853Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = animatedImageDecoder;
        }

        @Override // com.bumptech.glide.load.ResourceDecoder
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ByteBuffer byteBuffer, @NonNull Options options) throws IOException {
            return this.f4853Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteBuffer);
        }

        @Override // com.bumptech.glide.load.ResourceDecoder
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Resource<Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ByteBuffer byteBuffer, int i, int i2, @NonNull Options options) throws IOException {
            ImageDecoder.Source createSource;
            createSource = ImageDecoder.createSource(byteBuffer);
            return this.f4853Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(createSource, i, i2, options);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class StreamAnimatedImageDecoder implements ResourceDecoder<InputStream, Drawable> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final AnimatedImageDecoder f4854Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public StreamAnimatedImageDecoder(AnimatedImageDecoder animatedImageDecoder) {
            this.f4854Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = animatedImageDecoder;
        }

        @Override // com.bumptech.glide.load.ResourceDecoder
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull InputStream inputStream, @NonNull Options options) throws IOException {
            return this.f4854Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream);
        }

        @Override // com.bumptech.glide.load.ResourceDecoder
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Resource<Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull InputStream inputStream, int i, int i2, @NonNull Options options) throws IOException {
            ImageDecoder.Source createSource;
            createSource = ImageDecoder.createSource(ByteBufferUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream));
            return this.f4854Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(createSource, i, i2, options);
        }
    }

    public AnimatedImageDecoder(List<ImageHeaderParser> list, ArrayPool arrayPool) {
        this.f4851Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f4850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayPool;
    }

    public static ResourceDecoder<InputStream, Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<ImageHeaderParser> list, ArrayPool arrayPool) {
        return new StreamAnimatedImageDecoder(new AnimatedImageDecoder(list, arrayPool));
    }

    public static ResourceDecoder<ByteBuffer, Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<ImageHeaderParser> list, ArrayPool arrayPool) {
        return new ByteBufferAnimatedImageDecoder(new AnimatedImageDecoder(list, arrayPool));
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageHeaderParser.ImageType imageType) {
        if (imageType != ImageHeaderParser.ImageType.ANIMATED_WEBP) {
            if (Build.VERSION.SDK_INT < 31 || imageType != ImageHeaderParser.ImageType.ANIMATED_AVIF) {
                return false;
            }
            return true;
        }
        return true;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteBuffer byteBuffer) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4851Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, byteBuffer));
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4851Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, inputStream, this.f4850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
    }

    public Resource<Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ImageDecoder.Source source, int i, int i2, @NonNull Options options) throws IOException {
        Drawable decodeDrawable;
        decodeDrawable = ImageDecoder.decodeDrawable(source, new DefaultOnHeaderDecodedListener(i, i2, options));
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(decodeDrawable)) {
            return new AnimatedImageDrawableResource(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(decodeDrawable));
        }
        throw new IOException("Received unexpected drawable type for animated image, failing: " + decodeDrawable);
    }
}
