package com.bumptech.glide.load.resource.drawable;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
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
@Deprecated
/* loaded from: classes3.dex */
public final class AnimatedWebpDecoder {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayPool f4855Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<ImageHeaderParser> f4856Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class AnimatedImageDrawableResource implements Resource<Drawable> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final AnimatedImageDrawable f4857Wwwwwwwwwwwwwwwwwwwwwwwww;

        public AnimatedImageDrawableResource(AnimatedImageDrawable animatedImageDrawable) {
            this.f4857Wwwwwwwwwwwwwwwwwwwwwwwww = animatedImageDrawable;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        @NonNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public AnimatedImageDrawable get() {
            return this.f4857Wwwwwwwwwwwwwwwwwwwwwwwww;
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
            intrinsicWidth = this.f4857Wwwwwwwwwwwwwwwwwwwwwwwww.getIntrinsicWidth();
            intrinsicHeight = this.f4857Wwwwwwwwwwwwwwwwwwwwwwwww.getIntrinsicHeight();
            return intrinsicWidth * intrinsicHeight * Util.Wwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap.Config.ARGB_8888) * 2;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public void recycle() {
            this.f4857Wwwwwwwwwwwwwwwwwwwwwwwww.stop();
            this.f4857Wwwwwwwwwwwwwwwwwwwwwwwww.clearAnimationCallbacks();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class ByteBufferAnimatedWebpDecoder implements ResourceDecoder<ByteBuffer, Drawable> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final AnimatedWebpDecoder f4858Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.bumptech.glide.load.ResourceDecoder
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ByteBuffer byteBuffer, @NonNull Options options) throws IOException {
            return this.f4858Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteBuffer);
        }

        @Override // com.bumptech.glide.load.ResourceDecoder
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Resource<Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ByteBuffer byteBuffer, int i, int i2, @NonNull Options options) throws IOException {
            ImageDecoder.Source createSource;
            createSource = ImageDecoder.createSource(byteBuffer);
            return this.f4858Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(createSource, i, i2, options);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class StreamAnimatedWebpDecoder implements ResourceDecoder<InputStream, Drawable> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final AnimatedWebpDecoder f4859Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.bumptech.glide.load.ResourceDecoder
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull InputStream inputStream, @NonNull Options options) throws IOException {
            return this.f4859Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream);
        }

        @Override // com.bumptech.glide.load.ResourceDecoder
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Resource<Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull InputStream inputStream, int i, int i2, @NonNull Options options) throws IOException {
            ImageDecoder.Source createSource;
            createSource = ImageDecoder.createSource(ByteBufferUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream));
            return this.f4859Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(createSource, i, i2, options);
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageHeaderParser.ImageType imageType) {
        if (imageType == ImageHeaderParser.ImageType.ANIMATED_WEBP) {
            return true;
        }
        return false;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteBuffer byteBuffer) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4856Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, byteBuffer));
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4856Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, inputStream, this.f4855Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
    }

    public Resource<Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ImageDecoder.Source source, int i, int i2, @NonNull Options options) throws IOException {
        Drawable decodeDrawable;
        decodeDrawable = ImageDecoder.decodeDrawable(source, new DefaultOnHeaderDecodedListener(i, i2, options));
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(decodeDrawable)) {
            return new AnimatedImageDrawableResource(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(decodeDrawable));
        }
        throw new IOException("Received unexpected drawable type for animated webp, failing: " + decodeDrawable);
    }
}
