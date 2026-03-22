package coil.decode;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import androidx.media3.common.MimeTypes;
import coil.ImageLoader;
import coil.decode.Decoder;
import coil.decode.ImageSource;
import coil.fetch.SourceResult;
import coil.request.Options;
import coil.size.Scale;
import coil.size.Size;
import coil.size.Sizes;
import coil.util.Bitmaps;
import coil.util.Utils;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreKt;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\u0018\u0000 \u001d2\u00020\u0001:\u0003\u001d\u001e\u001fB+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\r\u001a\u00020\fH\u0096@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u0010\u001a\u00020\f*\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\u0015\u001a\u00020\u0014*\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u0017\u001a\u00020\u0014*\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0017\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u001bR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"Lcoil/decode/BitmapFactoryDecoder;", "Lcoil/decode/Decoder;", "Lcoil/decode/ImageSource;", "source", "Lcoil/request/Options;", "options", "Lkotlinx/coroutines/sync/Semaphore;", "parallelismLock", "Lcoil/decode/ExifOrientationPolicy;", "exifOrientationPolicy", "<init>", "(Lcoil/decode/ImageSource;Lcoil/request/Options;Lkotlinx/coroutines/sync/Semaphore;Lcoil/decode/ExifOrientationPolicy;)V", "Lcoil/decode/DecodeResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroid/graphics/BitmapFactory$Options;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/BitmapFactory$Options;)Lcoil/decode/DecodeResult;", "Lcoil/decode/ExifData;", "exifData", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/BitmapFactory$Options;Lcoil/decode/ExifData;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/decode/ImageSource;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/Options;", "Lkotlinx/coroutines/sync/Semaphore;", "Lcoil/decode/ExifOrientationPolicy;", "Companion", "ExceptionCatchingSource", "Factory", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class BitmapFactoryDecoder implements Decoder {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ExifOrientationPolicy f1812Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Semaphore f1813Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Options f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageSource f1815Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcoil/decode/BitmapFactoryDecoder$Companion;", "", "()V", "DEFAULT_MAX_PARALLELISM", "", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bR4\u0010\u0013\u001a\n\u0018\u00010\fj\u0004\u0018\u0001`\r2\u000e\u0010\u000e\u001a\n\u0018\u00010\fj\u0004\u0018\u0001`\r8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;", "Lokio/ForwardingSource;", "Lokio/Source;", "delegate", "<init>", "(Lokio/Source;)V", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "Ljava/lang/Exception;", "Lkotlin/Exception;", "<set-?>", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Exception;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Exception;", "exception", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ExceptionCatchingSource extends ForwardingSource {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Exception f1816Wwwwwwwwwwwwwwwwwwwwwwwww;

        public ExceptionCatchingSource(@NotNull Source source) {
            super(source);
        }

        @Nullable
        public final Exception Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1816Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(@NotNull Buffer buffer, long j) {
            try {
                return super.read(buffer, j);
            } catch (Exception e) {
                this.f1816Wwwwwwwwwwwwwwwwwwwwwwwww = e;
                throw e;
            }
        }
    }

    public BitmapFactoryDecoder(@NotNull ImageSource imageSource, @NotNull Options options, @NotNull Semaphore semaphore, @NotNull ExifOrientationPolicy exifOrientationPolicy) {
        this.f1815Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageSource;
        this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = options;
        this.f1813Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = semaphore;
        this.f1812Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = exifOrientationPolicy;
    }

    public final DecodeResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapFactory.Options options) {
        ExceptionCatchingSource exceptionCatchingSource = new ExceptionCatchingSource(this.f1815Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
        BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exceptionCatchingSource);
        boolean z = true;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.peek().Kkkkkkkkkkkkkkkkkkkkkkkkk(), null, options);
        Exception Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = exceptionCatchingSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            options.inJustDecodeBounds = false;
            ExifUtils exifUtils = ExifUtils.INSTANCE;
            ExifData Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = exifUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(options.outMimeType, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f1812Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Exception Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = exceptionCatchingSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 == null) {
                options.inMutable = false;
                if (Build.VERSION.SDK_INT >= 26 && this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                    options.inPreferredColorSpace = this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                options.inPremultiplied = this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(options, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(options, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                try {
                    Bitmap decodeStream = BitmapFactory.decodeStream(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkkk(), null, options);
                    CloseableKt.closeFinally(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null);
                    Exception Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = exceptionCatchingSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 == null) {
                        if (decodeStream != null) {
                            decodeStream.setDensity(this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().getResources().getDisplayMetrics().densityDpi);
                            BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().getResources(), exifUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(decodeStream, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3));
                            if (options.inSampleSize <= 1 && !options.inScaled) {
                                z = false;
                            }
                            return new DecodeResult(bitmapDrawable, z);
                        }
                        throw new IllegalStateException("BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the input source (e.g. network, disk, or memory) as it's not encoded as a valid image format.");
                    }
                    throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5;
                } finally {
                }
            } else {
                throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4;
            }
        } else {
            throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapFactory.Options options, ExifData exifData) {
        int i;
        int i2;
        int Wwwwwwww2;
        int Wwwwwwww3;
        ImageSource.Metadata Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f1815Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        boolean z = true;
        if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof ResourceMetadata) && Sizes.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww())) {
            options.inSampleSize = 1;
            options.inScaled = true;
            options.inDensity = ((ResourceMetadata) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            options.inTargetDensity = this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().getResources().getDisplayMetrics().densityDpi;
        } else if (options.outWidth > 0 && options.outHeight > 0) {
            if (ExifUtilsKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exifData)) {
                i = options.outHeight;
            } else {
                i = options.outWidth;
            }
            if (ExifUtilsKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exifData)) {
                i2 = options.outWidth;
            } else {
                i2 = options.outHeight;
            }
            Size Wwwwwwwwwwwwwwwwwwwww2 = this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww();
            Scale Wwwwwwwwwwwwwwwwwwwwww2 = this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww();
            if (Sizes.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2)) {
                Wwwwwwww2 = i;
            } else {
                Wwwwwwww2 = Utils.Wwwwwwww(Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwww2);
            }
            Size Wwwwwwwwwwwwwwwwwwwww3 = this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww();
            Scale Wwwwwwwwwwwwwwwwwwwwww3 = this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww();
            if (Sizes.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww3)) {
                Wwwwwwww3 = i2;
            } else {
                Wwwwwwww3 = Utils.Wwwwwwww(Wwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwww3);
            }
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = DecodeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, Wwwwwwww2, Wwwwwwww3, this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww());
            options.inSampleSize = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
            double Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DecodeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i / Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, i2 / Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwww2, Wwwwwwww3, this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww());
            if (this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = RangesKt.coerceAtMost(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 1.0d);
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 1.0d) {
                z = false;
            }
            options.inScaled = !z;
            if (!z) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 1.0d) {
                    options.inDensity = MathKt.roundToInt(Integer.MAX_VALUE / Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    options.inTargetDensity = Integer.MAX_VALUE;
                    return;
                }
                options.inDensity = Integer.MAX_VALUE;
                options.inTargetDensity = MathKt.roundToInt(Integer.MAX_VALUE * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        } else {
            options.inSampleSize = 1;
            options.inScaled = false;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapFactory.Options options, ExifData exifData) {
        Bitmap.Config config;
        Bitmap.Config config2;
        Bitmap.Config config3;
        Bitmap.Config Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (exifData.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() || ExifUtilsKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exifData)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Bitmaps.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        if (this.f1814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == Bitmap.Config.ARGB_8888 && Intrinsics.areEqual(options.outMimeType, MimeTypes.IMAGE_JPEG)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Bitmap.Config.RGB_565;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            config = options.outConfig;
            config2 = Bitmap.Config.RGBA_F16;
            if (config == config2) {
                config3 = Bitmap.Config.HARDWARE;
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != config3) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Bitmap.Config.RGBA_F16;
                }
            }
        }
        options.inPreferredConfig = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006d  */
    @Override // coil.decode.Decoder
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super coil.decode.DecodeResult> r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof coil.decode.BitmapFactoryDecoder$decode$1
            if (r0 == 0) goto L13
            r0 = r8
            coil.decode.BitmapFactoryDecoder$decode$1 r0 = (coil.decode.BitmapFactoryDecoder$decode$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil.decode.BitmapFactoryDecoder$decode$1 r0 = new coil.decode.BitmapFactoryDecoder$decode$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L47
            if (r2 == r4) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r0 = r0.L$0
            kotlinx.coroutines.sync.Semaphore r0 = (kotlinx.coroutines.sync.Semaphore) r0
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L30
            goto L70
        L30:
            r8 = move-exception
            goto L7a
        L32:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3a:
            java.lang.Object r2 = r0.L$1
            kotlinx.coroutines.sync.Semaphore r2 = (kotlinx.coroutines.sync.Semaphore) r2
            java.lang.Object r5 = r0.L$0
            coil.decode.BitmapFactoryDecoder r5 = (coil.decode.BitmapFactoryDecoder) r5
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r2
            goto L5a
        L47:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Semaphore r8 = r7.f1813Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r4
            java.lang.Object r2 = r8.acquire(r0)
            if (r2 != r1) goto L59
            goto L6c
        L59:
            r5 = r7
        L5a:
            coil.decode.BitmapFactoryDecoder$decode$2$1 r2 = new coil.decode.BitmapFactoryDecoder$decode$2$1     // Catch: java.lang.Throwable -> L76
            r2.<init>()     // Catch: java.lang.Throwable -> L76
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L76
            r5 = 0
            r0.L$1 = r5     // Catch: java.lang.Throwable -> L76
            r0.label = r3     // Catch: java.lang.Throwable -> L76
            java.lang.Object r0 = kotlinx.coroutines.InterruptibleKt.runInterruptible$default(r5, r2, r0, r4, r5)     // Catch: java.lang.Throwable -> L76
            if (r0 != r1) goto L6d
        L6c:
            return r1
        L6d:
            r6 = r0
            r0 = r8
            r8 = r6
        L70:
            coil.decode.DecodeResult r8 = (coil.decode.DecodeResult) r8     // Catch: java.lang.Throwable -> L30
            r0.release()
            return r8
        L76:
            r0 = move-exception
            r6 = r0
            r0 = r8
            r8 = r6
        L7a:
            r0.release()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.decode.BitmapFactoryDecoder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\t\b\u0017¢\u0006\u0004\b\u0006\u0010\bJ'\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0096\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcoil/decode/BitmapFactoryDecoder$Factory;", "Lcoil/decode/Decoder$Factory;", "", "maxParallelism", "Lcoil/decode/ExifOrientationPolicy;", "exifOrientationPolicy", "<init>", "(ILcoil/decode/ExifOrientationPolicy;)V", "()V", "Lcoil/fetch/SourceResult;", "result", "Lcoil/request/Options;", "options", "Lcoil/ImageLoader;", "imageLoader", "Lcoil/decode/Decoder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/fetch/SourceResult;Lcoil/request/Options;Lcoil/ImageLoader;)Lcoil/decode/Decoder;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "Lcoil/decode/ExifOrientationPolicy;", "Lkotlinx/coroutines/sync/Semaphore;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlinx/coroutines/sync/Semaphore;", "parallelismLock", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Factory implements Decoder.Factory {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Semaphore f1817Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ExifOrientationPolicy f1818Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Factory(int i, @NotNull ExifOrientationPolicy exifOrientationPolicy) {
            this.f1818Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = exifOrientationPolicy;
            this.f1817Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = SemaphoreKt.Semaphore$default(i, 0, 2, null);
        }

        @Override // coil.decode.Decoder.Factory
        @NotNull
        public Decoder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SourceResult sourceResult, @NotNull Options options, @NotNull ImageLoader imageLoader) {
            return new BitmapFactoryDecoder(sourceResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), options, this.f1817Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f1818Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public boolean equals(@Nullable Object obj) {
            return obj instanceof Factory;
        }

        public int hashCode() {
            return Factory.class.hashCode();
        }

        public /* synthetic */ Factory(int i, ExifOrientationPolicy exifOrientationPolicy, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 4 : i, (i2 & 2) != 0 ? ExifOrientationPolicy.RESPECT_PERFORMANCE : exifOrientationPolicy);
        }

        @SinceKotlin(version = "999.9")
        public Factory() {
            this(0, null, 3, null);
        }
    }
}
