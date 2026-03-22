package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.ImageReader;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import j$.util.Objects;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class Downsampler {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Queue<BitmapFactory.Options> f4757Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<ImageHeaderParser.ImageType> f4758Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DecodeCallbacks f4759Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<String> f4760Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Option<Boolean> f4761Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Option<Boolean> f4762Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HardwareConfigState f4766Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = HardwareConfigState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<ImageHeaderParser> f4767Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayPool f4768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DisplayMetrics f4769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BitmapPool f4770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Option<DecodeFormat> f4765Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Option.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", DecodeFormat.DEFAULT);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Option<PreferredColorSpace> f4764Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Option.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace");
    @Deprecated

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Option<DownsampleStrategy> f4763Wwwwwwwwwwwwwwwwwwwwwwwwwww = DownsampleStrategy.f4749Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface DecodeCallbacks {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapPool bitmapPool, Bitmap bitmap) throws IOException;
    }

    static {
        Boolean bool = Boolean.FALSE;
        f4762Wwwwwwwwwwwwwwwwwwwwwwwwww = Option.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        f4761Wwwwwwwwwwwwwwwwwwwwwwwww = Option.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
        f4760Wwwwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f4759Wwwwwwwwwwwwwwwwwwwwwww = new DecodeCallbacks() { // from class: com.bumptech.glide.load.resource.bitmap.Downsampler.1
            @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            }

            @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapPool bitmapPool, Bitmap bitmap) {
            }
        };
        f4758Wwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        f4757Wwwwwwwwwwwwwwwwwwwww = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
    }

    public Downsampler(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, BitmapPool bitmapPool, ArrayPool arrayPool) {
        this.f4767Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f4769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (DisplayMetrics) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(displayMetrics);
        this.f4770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (BitmapPool) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmapPool);
        this.f4768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (ArrayPool) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayPool);
    }

    @TargetApi(26)
    public static void Wwwwwwwwww(BitmapFactory.Options options, BitmapPool bitmapPool, int i, int i2) {
        Bitmap.Config config;
        Bitmap.Config config2;
        if (Build.VERSION.SDK_INT >= 26) {
            Bitmap.Config config3 = options.inPreferredConfig;
            config2 = Bitmap.Config.HARDWARE;
            if (config3 != config2) {
                config = options.outConfig;
            } else {
                return;
            }
        } else {
            config = null;
        }
        if (config == null) {
            config = options.inPreferredConfig;
        }
        options.inBitmap = bitmapPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, config);
    }

    public static int Wwwwwwwwwww(double d) {
        return (int) (d + 0.5d);
    }

    public static void Wwwwwwwwwwww(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public static void Wwwwwwwwwwwww(BitmapFactory.Options options) {
        Wwwwwwwwwwww(options);
        Queue<BitmapFactory.Options> queue = f4757Wwwwwwwwwwwwwwwwwwwww;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    public static IOException Wwwwwwwwwwwwww(IllegalArgumentException illegalArgumentException, int i, int i2, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i + ", outHeight: " + i2 + ", outMimeType: " + str + ", inBitmap: " + Wwwwwwwwwwwwwwwwwwwww(options), illegalArgumentException);
    }

    public static void Wwwwwwwwwwwwwww(int i, int i2, String str, BitmapFactory.Options options, Bitmap bitmap, int i3, int i4, long j) {
        Wwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
        Wwwwwwwwwwwwwwwwwwwww(options);
        int i5 = options.inSampleSize;
        Thread.currentThread().getName();
        LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
    }

    public static boolean Wwwwwwwwwwwwwwww(BitmapFactory.Options options) {
        int i;
        int i2 = options.inTargetDensity;
        if (i2 > 0 && (i = options.inDensity) > 0 && i2 != i) {
            return true;
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwwwwww(int i) {
        if (i != 90 && i != 270) {
            return false;
        }
        return true;
    }

    public static String Wwwwwwwwwwwwwwwwwwwww(BitmapFactory.Options options) {
        return Wwwwwwwwwwwwwwwwwwwwwwwww(options.inBitmap);
    }

    public static int[] Wwwwwwwwwwwwwwwwwwwwww(ImageReader imageReader, BitmapFactory.Options options, DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool) throws IOException {
        options.inJustDecodeBounds = true;
        Wwwwwwwwwwwwwwwwwwwwwwwwww(imageReader, options, decodeCallbacks, bitmapPool);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwww(double d) {
        if (d > 1.0d) {
            d = 1.0d / d;
        }
        return (int) Math.round(d * 2.147483647E9d);
    }

    public static synchronized BitmapFactory.Options Wwwwwwwwwwwwwwwwwwwwwwww() {
        BitmapFactory.Options poll;
        synchronized (Downsampler.class) {
            Queue<BitmapFactory.Options> queue = f4757Wwwwwwwwwwwwwwwwwwwww;
            synchronized (queue) {
                poll = queue.poll();
            }
            if (poll == null) {
                poll = new BitmapFactory.Options();
                Wwwwwwwwwwww(poll);
            }
        }
        return poll;
    }

    @Nullable
    @TargetApi(19)
    public static String Wwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    public static Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwww(ImageReader imageReader, BitmapFactory.Options options, DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool) throws IOException {
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (!options.inJustDecodeBounds) {
            decodeCallbacks.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            imageReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        int i = options.outWidth;
        int i2 = options.outHeight;
        String str = options.outMimeType;
        TransformationUtils.Wwwwwwwwwwwwwwwwwwwwwwwwww().lock();
        try {
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwww2 = imageReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(options);
            } catch (IllegalArgumentException e) {
                IOException Wwwwwwwwwwwwww2 = Wwwwwwwwwwwwww(e, i, i2, str, options);
                Bitmap bitmap = options.inBitmap;
                if (bitmap != null) {
                    try {
                        bitmapPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
                        options.inBitmap = null;
                        Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(imageReader, options, decodeCallbacks, bitmapPool);
                    } catch (IOException unused) {
                        throw Wwwwwwwwwwwwww2;
                    }
                } else {
                    throw Wwwwwwwwwwwwww2;
                }
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        } finally {
            TransformationUtils.Wwwwwwwwwwwwwwwwwwwwwwwwww().unlock();
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageHeaderParser.ImageType imageType, ImageReader imageReader, DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool, DownsampleStrategy downsampleStrategy, int i, int i2, int i3, int i4, int i5, BitmapFactory.Options options) throws IOException {
        int i6;
        int i7;
        int min;
        int i8;
        int floor;
        double floor2;
        int i9;
        if (i2 > 0 && i3 > 0) {
            if (Wwwwwwwwwwwwwwwww(i)) {
                i7 = i2;
                i6 = i3;
            } else {
                i6 = i2;
                i7 = i3;
            }
            float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = downsampleStrategy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i6, i7, i4, i5);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0.0f) {
                DownsampleStrategy.SampleSizeRounding Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = downsampleStrategy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i6, i7, i4, i5);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    float f = i6;
                    float f2 = i7;
                    int Wwwwwwwwwww2 = i6 / Wwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 * f);
                    int Wwwwwwwwwww3 = i7 / Wwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 * f2);
                    DownsampleStrategy.SampleSizeRounding sampleSizeRounding = DownsampleStrategy.SampleSizeRounding.MEMORY;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == sampleSizeRounding) {
                        min = Math.max(Wwwwwwwwwww2, Wwwwwwwwwww3);
                    } else {
                        min = Math.min(Wwwwwwwwwww2, Wwwwwwwwwww3);
                    }
                    int i10 = Build.VERSION.SDK_INT;
                    if (i10 > 23 || !f4760Wwwwwwwwwwwwwwwwwwwwwwww.contains(options.outMimeType)) {
                        int max = Math.max(1, Integer.highestOneBit(min));
                        i8 = (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != sampleSizeRounding || ((float) max) >= 1.0f / Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) ? max : max << 1;
                    } else {
                        i8 = 1;
                    }
                    options.inSampleSize = i8;
                    if (imageType == ImageHeaderParser.ImageType.JPEG) {
                        float min2 = Math.min(i8, 8);
                        floor = (int) Math.ceil(f / min2);
                        i9 = (int) Math.ceil(f2 / min2);
                        int i11 = i8 / 8;
                        if (i11 > 0) {
                            floor /= i11;
                            i9 /= i11;
                        }
                    } else {
                        if (imageType != ImageHeaderParser.ImageType.PNG && imageType != ImageHeaderParser.ImageType.PNG_A) {
                            if (imageType.isWebp()) {
                                if (i10 >= 24) {
                                    float f3 = i8;
                                    floor = Math.round(f / f3);
                                    i9 = Math.round(f2 / f3);
                                } else {
                                    float f4 = i8;
                                    floor = (int) Math.floor(f / f4);
                                    floor2 = Math.floor(f2 / f4);
                                }
                            } else if (i6 % i8 == 0 && i7 % i8 == 0) {
                                floor = i6 / i8;
                                i9 = i7 / i8;
                            } else {
                                int[] Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww(imageReader, options, decodeCallbacks, bitmapPool);
                                floor = Wwwwwwwwwwwwwwwwwwwwww2[0];
                                i9 = Wwwwwwwwwwwwwwwwwwwwww2[1];
                            }
                        } else {
                            float f5 = i8;
                            floor = (int) Math.floor(f / f5);
                            floor2 = Math.floor(f2 / f5);
                        }
                        i9 = (int) floor2;
                    }
                    double Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = downsampleStrategy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(floor, i9, i4, i5);
                    options.inTargetDensity = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                    options.inDensity = Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                    if (Wwwwwwwwwwwwwwww(options)) {
                        options.inScaled = true;
                        return;
                    }
                    options.inTargetDensity = 0;
                    options.inDensity = 0;
                    return;
                }
                throw new IllegalArgumentException("Cannot round with null rounding");
            }
            throw new IllegalArgumentException("Cannot scale with factor: " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + " from: " + downsampleStrategy + ", source: [" + i2 + "x" + i3 + "], target: [" + i4 + "x" + i5 + "]");
        } else if (Log.isLoggable("Downsampler", 3)) {
            Objects.toString(imageType);
        }
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(double d) {
        int Wwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwww(d);
        int Wwwwwwwwwww2 = Wwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww2 * d);
        return Wwwwwwwwwww((d / (Wwwwwwwwwww2 / Wwwwwwwwwwwwwwwwwwwwwww2)) * Wwwwwwwwwww2);
    }

    public final boolean Wwwwwwwww(ImageHeaderParser.ImageType imageType) {
        return true;
    }

    public boolean Wwwwwwwwwwwwwwwwww(ByteBuffer byteBuffer) {
        return true;
    }

    public boolean Wwwwwwwwwwwwwwwwwww(InputStream inputStream) {
        return true;
    }

    public boolean Wwwwwwwwwwwwwwwwwwww(ParcelFileDescriptor parcelFileDescriptor) {
        return ParcelFileDescriptorRewinder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwww(ImageReader imageReader, BitmapFactory.Options options, DownsampleStrategy downsampleStrategy, DecodeFormat decodeFormat, PreferredColorSpace preferredColorSpace, boolean z, int i, int i2, boolean z2, DecodeCallbacks decodeCallbacks) throws IOException {
        boolean z3;
        int i3;
        ColorSpace.Named named;
        ColorSpace colorSpace;
        ColorSpace.Named named2;
        ColorSpace colorSpace2;
        ColorSpace colorSpace3;
        ColorSpace colorSpace4;
        boolean isWideGamut;
        float f;
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int[] Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww(imageReader, options, decodeCallbacks, this.f4770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        int i4 = Wwwwwwwwwwwwwwwwwwwwww2[0];
        int i5 = Wwwwwwwwwwwwwwwwwwwwww2[1];
        String str = options.outMimeType;
        if (i4 != -1 && i5 != -1) {
            z3 = z;
        } else {
            z3 = false;
        }
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = imageReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int Wwwwwwwwwwwwwwwwwwwwwwwww2 = TransformationUtils.Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        boolean Wwwwwwwwwwwwwwwwwwwwww3 = TransformationUtils.Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        int i6 = i;
        if (i6 == Integer.MIN_VALUE) {
            if (Wwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww2)) {
                i3 = i2;
                i6 = i5;
            } else {
                i3 = i2;
                i6 = i4;
            }
        } else {
            i3 = i2;
        }
        if (i3 == Integer.MIN_VALUE) {
            if (Wwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww2)) {
                i3 = i4;
            } else {
                i3 = i5;
            }
        }
        ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = imageReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, imageReader, decodeCallbacks, this.f4770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, downsampleStrategy, Wwwwwwwwwwwwwwwwwwwwwwwww2, i4, i5, i6, i3, options);
        int i7 = i6;
        int i8 = i3;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageReader, decodeFormat, z3, Wwwwwwwwwwwwwwwwwwwwww3, options, i7, i8);
        int i9 = Build.VERSION.SDK_INT;
        if (Wwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            if (i4 < 0 || i5 < 0 || !z2) {
                if (Wwwwwwwwwwwwwwww(options)) {
                    f = options.inTargetDensity / options.inDensity;
                } else {
                    f = 1.0f;
                }
                float f2 = options.inSampleSize;
                int round = Math.round(((int) Math.ceil(i4 / f2)) * f);
                i8 = Math.round(((int) Math.ceil(i5 / f2)) * f);
                i7 = round;
            }
            if (i7 > 0 && i8 > 0) {
                Wwwwwwwwww(options, this.f4770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i7, i8);
            }
        }
        if (preferredColorSpace != null) {
            if (i9 >= 28) {
                if (preferredColorSpace == PreferredColorSpace.DISPLAY_P3) {
                    colorSpace3 = options.outColorSpace;
                    if (colorSpace3 != null) {
                        colorSpace4 = options.outColorSpace;
                        isWideGamut = colorSpace4.isWideGamut();
                        if (isWideGamut) {
                            named2 = ColorSpace.Named.DISPLAY_P3;
                            colorSpace2 = ColorSpace.get(named2);
                            options.inPreferredColorSpace = colorSpace2;
                        }
                    }
                }
                named2 = ColorSpace.Named.SRGB;
                colorSpace2 = ColorSpace.get(named2);
                options.inPreferredColorSpace = colorSpace2;
            } else if (i9 >= 26) {
                named = ColorSpace.Named.SRGB;
                colorSpace = ColorSpace.get(named);
                options.inPreferredColorSpace = colorSpace;
            }
        }
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(imageReader, options, decodeCallbacks, this.f4770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        decodeCallbacks.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwww2);
        if (Log.isLoggable("Downsampler", 2)) {
            Wwwwwwwwwwwwwww(i4, i5, str, options, Wwwwwwwwwwwwwwwwwwwwwwwwww2, i, i2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2.setDensity(this.f4769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.densityDpi);
            Bitmap Wwwwwwwwwwwwwwwwwwww2 = TransformationUtils.Wwwwwwwwwwwwwwwwwwww(this.f4770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwww2.equals(Wwwwwwwwwwwwwwwwwwww2)) {
                this.f4770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            return Wwwwwwwwwwwwwwwwwwww2;
        }
        return null;
    }

    public Resource<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteBuffer byteBuffer, int i, int i2, Options options) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ImageReader.ByteBufferReader(byteBuffer, this.f4767Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), i, i2, options, f4759Wwwwwwwwwwwwwwwwwwwwwww);
    }

    public Resource<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream, int i, int i2, Options options, DecodeCallbacks decodeCallbacks) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ImageReader.InputStreamImageReader(inputStream, this.f4767Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), i, i2, options, decodeCallbacks);
    }

    public final Resource<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageReader imageReader, int i, int i2, Options options, DecodeCallbacks decodeCallbacks) throws IOException {
        boolean z;
        byte[] bArr = (byte[]) this.f4768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(65536, byte[].class);
        BitmapFactory.Options Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwww2.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f4765Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        PreferredColorSpace preferredColorSpace = (PreferredColorSpace) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f4764Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DownsampleStrategy.f4749Wwwwwwwwwwwwwwwwwwwwwwwwwww);
        boolean booleanValue = ((Boolean) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f4762Wwwwwwwwwwwwwwwwwwwwwwwwww)).booleanValue();
        Option<Boolean> option = f4761Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(option) != null && ((Boolean) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(option)).booleanValue()) {
            z = true;
        } else {
            z = false;
        }
        try {
            return BitmapResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww(imageReader, Wwwwwwwwwwwwwwwwwwwwwwww2, downsampleStrategy, decodeFormat, preferredColorSpace, z, i, i2, booleanValue, decodeCallbacks), this.f4770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        } finally {
            Wwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwww2);
            this.f4768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(bArr);
        }
    }

    @RequiresApi(21)
    public Resource<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ParcelFileDescriptor parcelFileDescriptor, int i, int i2, Options options) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ImageReader.ParcelFileDescriptorImageReader(parcelFileDescriptor, this.f4767Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), i, i2, options, f4759Wwwwwwwwwwwwwwwwwwwwwww);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageReader imageReader, DecodeFormat decodeFormat, boolean z, boolean z2, BitmapFactory.Options options, int i, int i2) {
        boolean z3;
        Bitmap.Config config;
        if (!this.f4766Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, options, z, z2)) {
            if (decodeFormat != DecodeFormat.PREFER_ARGB_8888) {
                try {
                    z3 = imageReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().hasAlpha();
                } catch (IOException unused) {
                    if (Log.isLoggable("Downsampler", 3)) {
                        Objects.toString(decodeFormat);
                    }
                    z3 = false;
                }
                if (z3) {
                    config = Bitmap.Config.ARGB_8888;
                } else {
                    config = Bitmap.Config.RGB_565;
                }
                options.inPreferredConfig = config;
                if (config == Bitmap.Config.RGB_565) {
                    options.inDither = true;
                    return;
                }
                return;
            }
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        }
    }
}
