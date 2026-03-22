package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.data.InputStreamRewinder;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.ByteBufferUtil;
import com.bumptech.glide.util.Preconditions;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
interface ImageReader {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class InputStreamImageReader implements ImageReader {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<ImageHeaderParser> f4800Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ArrayPool f4801Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final InputStreamRewinder f4802Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public InputStreamImageReader(InputStream inputStream, List<ImageHeaderParser> list, ArrayPool arrayPool) {
            this.f4801Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (ArrayPool) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayPool);
            this.f4800Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (List) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list);
            this.f4802Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new InputStreamRewinder(inputStream, arrayPool);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            return ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4800Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4802Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f4801Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            return ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4800Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4802Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f4801Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f4802Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        @Nullable
        public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeStream(this.f4802Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, options);
        }
    }

    ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException;

    int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException;

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @Nullable
    Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapFactory.Options options) throws IOException;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class ByteArrayReader implements ImageReader {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ArrayPool f4791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<ImageHeaderParser> f4792Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final byte[] f4793Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            return ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4792Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, ByteBuffer.wrap(this.f4793Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            return ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4792Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, ByteBuffer.wrap(this.f4793Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), this.f4791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        @Nullable
        public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapFactory.Options options) {
            byte[] bArr = this.f4793Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class ByteBufferReader implements ImageReader {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ArrayPool f4794Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<ImageHeaderParser> f4795Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ByteBuffer f4796Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public ByteBufferReader(ByteBuffer byteBuffer, List<ImageHeaderParser> list, ArrayPool arrayPool) {
            this.f4796Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = byteBuffer;
            this.f4795Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
            this.f4794Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayPool;
        }

        public final InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return ByteBufferUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteBufferUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4796Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            return ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4795Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, ByteBufferUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4796Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            return ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4795Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, ByteBufferUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4796Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), this.f4794Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        @Nullable
        public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapFactory.Options options) {
            return BitmapFactory.decodeStream(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class FileReader implements ImageReader {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ArrayPool f4797Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<ImageHeaderParser> f4798Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final File f4799Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            RecyclableBufferedInputStream recyclableBufferedInputStream;
            Throwable th;
            try {
                recyclableBufferedInputStream = new RecyclableBufferedInputStream(new FileInputStream(this.f4799Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), this.f4797Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                try {
                    ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4798Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, recyclableBufferedInputStream, this.f4797Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    try {
                        recyclableBufferedInputStream.close();
                    } catch (IOException unused) {
                    }
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                } catch (Throwable th2) {
                    th = th2;
                    if (recyclableBufferedInputStream != null) {
                        try {
                            recyclableBufferedInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                recyclableBufferedInputStream = null;
                th = th3;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            RecyclableBufferedInputStream recyclableBufferedInputStream;
            Throwable th;
            try {
                recyclableBufferedInputStream = new RecyclableBufferedInputStream(new FileInputStream(this.f4799Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), this.f4797Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                try {
                    int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4798Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, recyclableBufferedInputStream, this.f4797Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    try {
                        recyclableBufferedInputStream.close();
                    } catch (IOException unused) {
                    }
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                } catch (Throwable th2) {
                    th = th2;
                    if (recyclableBufferedInputStream != null) {
                        try {
                            recyclableBufferedInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                recyclableBufferedInputStream = null;
                th = th3;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        @Nullable
        public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapFactory.Options options) throws FileNotFoundException {
            RecyclableBufferedInputStream recyclableBufferedInputStream = null;
            try {
                RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream(this.f4799Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), this.f4797Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                try {
                    Bitmap decodeStream = BitmapFactory.decodeStream(recyclableBufferedInputStream2, null, options);
                    try {
                        recyclableBufferedInputStream2.close();
                    } catch (IOException unused) {
                    }
                    return decodeStream;
                } catch (Throwable th) {
                    th = th;
                    recyclableBufferedInputStream = recyclableBufferedInputStream2;
                    if (recyclableBufferedInputStream != null) {
                        try {
                            recyclableBufferedInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(21)
    /* loaded from: classes3.dex */
    public static final class ParcelFileDescriptorImageReader implements ImageReader {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ParcelFileDescriptorRewinder f4803Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<ImageHeaderParser> f4804Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ArrayPool f4805Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public ParcelFileDescriptorImageReader(ParcelFileDescriptor parcelFileDescriptor, List<ImageHeaderParser> list, ArrayPool arrayPool) {
            this.f4805Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (ArrayPool) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayPool);
            this.f4804Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (List) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list);
            this.f4803Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            return ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4804Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4803Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4805Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            return ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4804Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4803Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4805Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        @Nullable
        public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeFileDescriptor(this.f4803Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getFileDescriptor(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        }
    }
}
