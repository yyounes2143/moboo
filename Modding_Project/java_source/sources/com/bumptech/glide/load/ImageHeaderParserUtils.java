package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class ImageHeaderParserUtils {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface OrientationReader {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface TypeReader {
        ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    @NonNull
    public static ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull List<ImageHeaderParser> list, TypeReader typeReader) throws IOException {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = typeReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list.get(i));
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != ImageHeaderParser.ImageType.UNKNOWN) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @NonNull
    public static ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull List<ImageHeaderParser> list, @Nullable final ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww(list, new TypeReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.2
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.TypeReader
            public ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageHeaderParser imageHeaderParser) throws IOException {
                try {
                    return imageHeaderParser.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteBuffer);
                } finally {
                    ByteBufferUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteBuffer);
                }
            }
        });
    }

    @NonNull
    public static ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull List<ImageHeaderParser> list, @Nullable final InputStream inputStream, @NonNull ArrayPool arrayPool) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        }
        inputStream.mark(5242880);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww(list, new TypeReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.1
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.TypeReader
            public ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageHeaderParser imageHeaderParser) throws IOException {
                try {
                    return imageHeaderParser.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream);
                } finally {
                    inputStream.reset();
                }
            }
        });
    }

    @NonNull
    @RequiresApi(21)
    public static ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull List<ImageHeaderParser> list, @NonNull final ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, @NonNull final ArrayPool arrayPool) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww(list, new TypeReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.3
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.TypeReader
            public ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageHeaderParser imageHeaderParser) throws IOException {
                RecyclableBufferedInputStream recyclableBufferedInputStream = null;
                try {
                    RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream(ParcelFileDescriptorRewinder.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getFileDescriptor()), arrayPool);
                    try {
                        ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = imageHeaderParser.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(recyclableBufferedInputStream2);
                        recyclableBufferedInputStream2.release();
                        ParcelFileDescriptorRewinder.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    } catch (Throwable th) {
                        th = th;
                        recyclableBufferedInputStream = recyclableBufferedInputStream2;
                        if (recyclableBufferedInputStream != null) {
                            recyclableBufferedInputStream.release();
                        }
                        ParcelFileDescriptorRewinder.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        });
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull List<ImageHeaderParser> list, OrientationReader orientationReader) throws IOException {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = orientationReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list.get(i));
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != -1) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        }
        return -1;
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull List<ImageHeaderParser> list, @Nullable final ByteBuffer byteBuffer, @NonNull final ArrayPool arrayPool) throws IOException {
        if (byteBuffer == null) {
            return -1;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list, new OrientationReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.4
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.OrientationReader
            public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageHeaderParser imageHeaderParser) throws IOException {
                try {
                    return imageHeaderParser.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteBuffer, arrayPool);
                } finally {
                    ByteBufferUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteBuffer);
                }
            }
        });
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull List<ImageHeaderParser> list, @Nullable final InputStream inputStream, @NonNull final ArrayPool arrayPool) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        }
        inputStream.mark(5242880);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list, new OrientationReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.5
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.OrientationReader
            public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageHeaderParser imageHeaderParser) throws IOException {
                try {
                    return imageHeaderParser.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream, arrayPool);
                } finally {
                    inputStream.reset();
                }
            }
        });
    }

    @RequiresApi(21)
    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull List<ImageHeaderParser> list, @NonNull final ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, @NonNull final ArrayPool arrayPool) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list, new OrientationReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.6
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.OrientationReader
            public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageHeaderParser imageHeaderParser) throws IOException {
                RecyclableBufferedInputStream recyclableBufferedInputStream = null;
                try {
                    RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream(ParcelFileDescriptorRewinder.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getFileDescriptor()), arrayPool);
                    try {
                        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = imageHeaderParser.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(recyclableBufferedInputStream2, arrayPool);
                        recyclableBufferedInputStream2.release();
                        ParcelFileDescriptorRewinder.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    } catch (Throwable th) {
                        th = th;
                        recyclableBufferedInputStream = recyclableBufferedInputStream2;
                        if (recyclableBufferedInputStream != null) {
                            recyclableBufferedInputStream.release();
                        }
                        ParcelFileDescriptorRewinder.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        });
    }
}
