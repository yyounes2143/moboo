package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.MediaDataSource;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class VideoDecoder<T> implements ResourceDecoder<T, Bitmap> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MediaMetadataRetrieverFactory f4841Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BitmapPool f4842Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MediaInitializer<T> f4843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Option<Long> f4840Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Option.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new Option.CacheKeyUpdater<Long>() { // from class: com.bumptech.glide.load.resource.bitmap.VideoDecoder.1

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ByteBuffer f4844Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ByteBuffer.allocate(8);

        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull byte[] bArr, @NonNull Long l, @NonNull MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.f4844Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f4844Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.position(0);
                messageDigest.update(this.f4844Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.putLong(l.longValue()).array());
            }
        }
    });

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Option<Integer> f4839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Option.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new Option.CacheKeyUpdater<Integer>() { // from class: com.bumptech.glide.load.resource.bitmap.VideoDecoder.2

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ByteBuffer f4845Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ByteBuffer.allocate(4);

        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull byte[] bArr, @NonNull Integer num, @NonNull MessageDigest messageDigest) {
            if (num == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f4845Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f4845Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.position(0);
                messageDigest.update(this.f4845Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.putInt(num.intValue()).array());
            }
        }
    });

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final MediaMetadataRetrieverFactory f4838Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaMetadataRetrieverFactory();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final List<String> f4837Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableList(Arrays.asList("TP1A", "TD1A.220804.031"));

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class AssetFileDescriptorInitializer implements MediaInitializer<AssetFileDescriptor> {
        public AssetFileDescriptorInitializer() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaExtractor mediaExtractor, AssetFileDescriptor assetFileDescriptor) throws IOException {
            mediaExtractor.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(23)
    /* loaded from: classes3.dex */
    public static final class ByteBufferInitializer implements MediaInitializer<ByteBuffer> {
        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaMetadataRetriever mediaMetadataRetriever, ByteBuffer byteBuffer) {
            mediaMetadataRetriever.setDataSource(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteBuffer));
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaExtractor mediaExtractor, ByteBuffer byteBuffer) throws IOException {
            mediaExtractor.setDataSource(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteBuffer));
        }

        public final MediaDataSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final ByteBuffer byteBuffer) {
            return new MediaDataSource() { // from class: com.bumptech.glide.load.resource.bitmap.VideoDecoder.ByteBufferInitializer.1
                @Override // android.media.MediaDataSource
                public long getSize() {
                    return byteBuffer.limit();
                }

                @Override // android.media.MediaDataSource
                public int readAt(long j, byte[] bArr, int i, int i2) {
                    if (j >= byteBuffer.limit()) {
                        return -1;
                    }
                    byteBuffer.position((int) j);
                    int min = Math.min(i2, byteBuffer.remaining());
                    byteBuffer.get(bArr, i, min);
                    return min;
                }

                @Override // java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                }
            };
        }
    }

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public interface MediaInitializer<T> {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaMetadataRetriever mediaMetadataRetriever, T t);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaExtractor mediaExtractor, T t) throws IOException;
    }

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class MediaMetadataRetrieverFactory {
        public MediaMetadataRetriever Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new MediaMetadataRetriever();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class ParcelFileDescriptorInitializer implements MediaInitializer<ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaExtractor mediaExtractor, ParcelFileDescriptor parcelFileDescriptor) throws IOException {
            mediaExtractor.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class VideoDecoderException extends RuntimeException {
        private static final long serialVersionUID = -2556382523004027815L;

        public VideoDecoderException() {
            super("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
        }
    }

    public VideoDecoder(BitmapPool bitmapPool, MediaInitializer<T> mediaInitializer) {
        this(bitmapPool, mediaInitializer, f4838Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public static ResourceDecoder<ParcelFileDescriptor, Bitmap> Wwwwwwwwwwwwwwwwwwwwww(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new ParcelFileDescriptorInitializer());
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwww() {
        for (String str : f4837Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (Build.ID.startsWith(str)) {
                return true;
            }
        }
        return false;
    }

    @VisibleForTesting
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Build.MODEL.startsWith("Pixel") && Build.VERSION.SDK_INT == 33) {
            return Wwwwwwwwwwwwwwwwwwwwwwww();
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 30 && i < 33) {
            return true;
        }
        return false;
    }

    @RequiresApi(30)
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwww(MediaMetadataRetriever mediaMetadataRetriever) throws NumberFormatException {
        String extractMetadata = mediaMetadataRetriever.extractMetadata(36);
        String extractMetadata2 = mediaMetadataRetriever.extractMetadata(35);
        int parseInt = Integer.parseInt(extractMetadata);
        int parseInt2 = Integer.parseInt(extractMetadata2);
        if ((parseInt == 7 || parseInt == 6) && parseInt2 == 6) {
            return true;
        }
        return false;
    }

    @Nullable
    @TargetApi(27)
    public static Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwww(MediaMetadataRetriever mediaMetadataRetriever, long j, int i, int i2, int i3, DownsampleStrategy downsampleStrategy) {
        Bitmap scaledFrameAtTime;
        try {
            int parseInt = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            int parseInt2 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            int parseInt3 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (parseInt3 == 90 || parseInt3 == 270) {
                parseInt2 = parseInt;
                parseInt = parseInt2;
            }
            float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = downsampleStrategy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parseInt, parseInt2, i2, i3);
            scaledFrameAtTime = mediaMetadataRetriever.getScaledFrameAtTime(j, i, Math.round(parseInt * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), Math.round(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 * parseInt2));
            return scaledFrameAtTime;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaMetadataRetriever mediaMetadataRetriever, long j, int i) {
        return mediaMetadataRetriever.getFrameAtTime(j, i);
    }

    public static Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaMetadataRetriever mediaMetadataRetriever, Bitmap bitmap) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwww()) {
            try {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwww(mediaMetadataRetriever)) {
                    if (Math.abs(Integer.parseInt(mediaMetadataRetriever.extractMetadata(24))) == 180) {
                        Matrix matrix = new Matrix();
                        matrix.postRotate(180.0f, bitmap.getWidth() / 2.0f, bitmap.getHeight() / 2.0f);
                        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                    }
                    return bitmap;
                }
            } catch (NumberFormatException unused) {
            }
        }
        return bitmap;
    }

    @RequiresApi(api = 23)
    public static ResourceDecoder<ByteBuffer, Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new ByteBufferInitializer());
    }

    public static ResourceDecoder<AssetFileDescriptor, Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new AssetFileDescriptorInitializer());
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwww(@NonNull T t, MediaMetadataRetriever mediaMetadataRetriever) {
        String str = Build.DEVICE;
        if (str != null && str.matches(".+_cheets|cheets_.+")) {
            MediaExtractor mediaExtractor = null;
            try {
                if (!"video/webm".equals(mediaMetadataRetriever.extractMetadata(12))) {
                    return false;
                }
                MediaExtractor mediaExtractor2 = new MediaExtractor();
                try {
                    this.f4843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaExtractor2, t);
                    int trackCount = mediaExtractor2.getTrackCount();
                    for (int i = 0; i < trackCount; i++) {
                        if ("video/x-vnd.on2.vp8".equals(mediaExtractor2.getTrackFormat(i).getString("mime"))) {
                            mediaExtractor2.release();
                            return true;
                        }
                    }
                    mediaExtractor2.release();
                } catch (Throwable unused) {
                    mediaExtractor = mediaExtractor2;
                    if (mediaExtractor != null) {
                        mediaExtractor.release();
                    }
                    return false;
                }
            } catch (Throwable unused2) {
            }
        }
        return false;
    }

    @Nullable
    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull T t, MediaMetadataRetriever mediaMetadataRetriever, long j, int i, int i2, int i3, DownsampleStrategy downsampleStrategy) {
        Bitmap bitmap;
        if (!Wwwwwwwwwwwwwwwwwwwwwww(t, mediaMetadataRetriever)) {
            if (Build.VERSION.SDK_INT >= 27 && i2 != Integer.MIN_VALUE && i3 != Integer.MIN_VALUE && downsampleStrategy != DownsampleStrategy.f4751Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                bitmap = Wwwwwwwwwwwwwwwwwwwwwwwwwww(mediaMetadataRetriever, j, i, i2, i3, downsampleStrategy);
            } else {
                bitmap = null;
            }
            if (bitmap == null) {
                bitmap = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaMetadataRetriever, j, i);
            }
            Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaMetadataRetriever, bitmap);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            throw new VideoDecoderException();
        }
        throw new IllegalStateException("Cannot decode VP8 video on CrOS.");
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public Resource<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull T t, int i, int i2, @NonNull Options options) throws IOException {
        long longValue = ((Long) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f4840Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)).longValue();
        if (longValue < 0 && longValue != -1) {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + longValue);
        }
        Integer num = (Integer) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f4839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        if (num == null) {
            num = 2;
        }
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DownsampleStrategy.f4749Wwwwwwwwwwwwwwwwwwwwwwwwwww);
        if (downsampleStrategy == null) {
            downsampleStrategy = DownsampleStrategy.f4750Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        DownsampleStrategy downsampleStrategy2 = downsampleStrategy;
        MediaMetadataRetriever Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4841Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        try {
            this.f4843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, t);
            try {
                Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(t, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, longValue, num.intValue(), i, i2, downsampleStrategy2);
                if (Build.VERSION.SDK_INT >= 29) {
                    androidx.core.provider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.release();
                }
                return BitmapResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f4842Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                if (Build.VERSION.SDK_INT >= 29) {
                    androidx.core.provider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.release();
                }
                throw th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull T t, @NonNull Options options) {
        return true;
    }

    @VisibleForTesting
    public VideoDecoder(BitmapPool bitmapPool, MediaInitializer<T> mediaInitializer, MediaMetadataRetrieverFactory mediaMetadataRetrieverFactory) {
        this.f4842Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bitmapPool;
        this.f4843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = mediaInitializer;
        this.f4841Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = mediaMetadataRetrieverFactory;
    }
}
