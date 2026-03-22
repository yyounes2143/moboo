package com.bumptech.glide.load.resource.bitmap;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class DefaultImageHeaderParser implements ImageHeaderParser {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f4744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final int[] f4743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class ByteBufferReader implements Reader {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ByteBuffer f4745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public ByteBufferReader(ByteBuffer byteBuffer) {
            this.f4745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public short Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws Reader.EndOfFileException {
            if (this.f4745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remaining() >= 1) {
                return (short) (this.f4745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get() & 255);
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i) {
            int min = Math.min(i, this.f4745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remaining());
            if (min == 0) {
                return -1;
            }
            this.f4745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(bArr, 0, min);
            return min;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws Reader.EndOfFileException {
            return (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() << 8) | Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long skip(long j) {
            int min = (int) Math.min(this.f4745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remaining(), j);
            ByteBuffer byteBuffer = this.f4745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class RandomAccessReader {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ByteBuffer f4746Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public RandomAccessReader(byte[] bArr, int i) {
            this.f4746Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteOrder byteOrder) {
            this.f4746Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.order(byteOrder);
        }

        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f4746Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remaining();
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
            if (this.f4746Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remaining() - i >= i2) {
                return true;
            }
            return false;
        }

        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, 4)) {
                return this.f4746Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getInt(i);
            }
            return -1;
        }

        public short Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, 2)) {
                return this.f4746Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getShort(i);
            }
            return (short) -1;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface Reader {

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public static final class EndOfFileException extends IOException {
            private static final long serialVersionUID = 1;

            public EndOfFileException() {
                super("Unexpectedly reached end of a file");
            }
        }

        short Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException;

        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i) throws IOException;

        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException;

        long skip(long j) throws IOException;
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class StreamReader implements Reader {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final InputStream f4747Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public StreamReader(InputStream inputStream) {
            this.f4747Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = inputStream;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public short Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            int read = this.f4747Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.read();
            if (read != -1) {
                return (short) read;
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i) throws IOException {
            int i2 = 0;
            int i3 = 0;
            while (i2 < i && (i3 = this.f4747Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.read(bArr, i2, i - i2)) != -1) {
                i2 += i3;
            }
            if (i2 == 0 && i3 == -1) {
                throw new Reader.EndOfFileException();
            }
            return i2;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            return (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() << 8) | Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long skip(long j) throws IOException {
            if (j < 0) {
                return 0L;
            }
            long j2 = j;
            while (j2 > 0) {
                long skip = this.f4747Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.skip(j2);
                if (skip <= 0) {
                    if (this.f4747Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j2 -= skip;
            }
            return j - j2;
        }
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwww(RandomAccessReader randomAccessReader) {
        ByteOrder byteOrder;
        short Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        int i;
        int i2;
        short Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = randomAccessReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(6);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != 18761) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != 19789) {
                byteOrder = ByteOrder.BIG_ENDIAN;
            } else {
                byteOrder = ByteOrder.BIG_ENDIAN;
            }
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        randomAccessReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteOrder);
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = randomAccessReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(10) + 6;
        short Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = randomAccessReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
        for (int i3 = 0; i3 < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4; i3++) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, i3);
            if (randomAccessReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) == 274 && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = randomAccessReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + 2)) >= 1 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 <= 12 && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = randomAccessReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + 4)) >= 0 && (i = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + f4743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2]) <= 4 && (i2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + 8) >= 0 && i2 <= randomAccessReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && i >= 0 && i + i2 <= randomAccessReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                return randomAccessReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2);
            }
        }
        return -1;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if ((i & 65496) != 65496 && i != 19789 && i != 18761) {
            return false;
        }
        return true;
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
        return i + 2 + (i2 * 12);
    }

    public final ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwww(Reader reader, int i) throws IOException {
        boolean z;
        if (((reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() << 16) | reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != 1718909296) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = (reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() << 16) | reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 1635150195) {
            return ImageHeaderParser.ImageType.ANIMATED_AVIF;
        }
        int i2 = 0;
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 1635150182) {
            z = true;
        } else {
            z = false;
        }
        reader.skip(4L);
        int i3 = i - 16;
        if (i3 % 4 == 0) {
            while (i2 < 5 && i3 > 0) {
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = (reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() << 16) | reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == 1635150195) {
                    return ImageHeaderParser.ImageType.ANIMATED_AVIF;
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == 1635150182) {
                    z = true;
                }
                i2++;
                i3 -= 4;
            }
        }
        if (z) {
            return ImageHeaderParser.ImageType.AVIF;
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwww(Reader reader, byte[] bArr, int i) throws IOException {
        if (reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, i) != i || !Wwwwwwwwwwwwwwwwwwwwwwwwww(bArr, i)) {
            return -1;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwww(new RandomAccessReader(bArr, i));
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwww(Reader reader) throws IOException {
        short Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        while (reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == 255 && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != 218 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 217) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - 2;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 225) {
                long j = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                if (reader.skip(j) != j) {
                    return -1;
                }
            } else {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        }
        return -1;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i) {
        boolean z;
        if (bArr != null && i > f4744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            int i2 = 0;
            while (true) {
                byte[] bArr2 = f4744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (i2 >= bArr2.length) {
                    break;
                } else if (bArr[i2] != bArr2[i2]) {
                    return false;
                } else {
                    i2++;
                }
            }
        }
        return z;
    }

    @NonNull
    public final ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Reader reader) throws IOException {
        try {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 65496) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 << 8) | reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 4671814) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 << 8) | reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == -1991225785) {
                reader.skip(21L);
                try {
                    if (reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() >= 3) {
                        return ImageHeaderParser.ImageType.PNG_A;
                    }
                    return ImageHeaderParser.ImageType.PNG;
                } catch (Reader.EndOfFileException unused) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != 1380533830) {
                return Wwwwwwwwwwwwwwwwwwwwww(reader, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
            } else {
                reader.skip(4L);
                if (((reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() << 16) | reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != 1464156752) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = (reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() << 16) | reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 & (-256)) != 1448097792) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int i = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 & 255;
                if (i == 88) {
                    reader.skip(4L);
                    short Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 & 2) != 0) {
                        return ImageHeaderParser.ImageType.ANIMATED_WEBP;
                    }
                    if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 & 16) != 0) {
                        return ImageHeaderParser.ImageType.WEBP_A;
                    }
                    return ImageHeaderParser.ImageType.WEBP;
                } else if (i == 76) {
                    reader.skip(4L);
                    if ((reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() & 8) != 0) {
                        return ImageHeaderParser.ImageType.WEBP_A;
                    }
                    return ImageHeaderParser.ImageType.WEBP;
                } else {
                    return ImageHeaderParser.ImageType.WEBP;
                }
            }
        } catch (Reader.EndOfFileException unused2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Reader reader, ArrayPool arrayPool) throws IOException {
        int Wwwwwwwwwwwwwwwwwwwwwwwww2;
        try {
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwww(reader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) || (Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww(reader)) == -1) {
                return -1;
            }
            byte[] bArr = (byte[]) arrayPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww2, byte[].class);
            int Wwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwww(reader, bArr, Wwwwwwwwwwwwwwwwwwwwwwwww2);
            arrayPool.put(bArr);
            return Wwwwwwwwwwwwwwwwwwwwwww2;
        } catch (Reader.EndOfFileException unused) {
            return -1;
        }
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull InputStream inputStream, @NonNull ArrayPool arrayPool) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(new StreamReader((InputStream) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream)), (ArrayPool) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayPool));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull InputStream inputStream) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(new StreamReader((InputStream) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream)));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ByteBuffer byteBuffer, @NonNull ArrayPool arrayPool) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ByteBufferReader((ByteBuffer) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteBuffer)), (ArrayPool) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayPool));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ByteBuffer byteBuffer) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(new ByteBufferReader((ByteBuffer) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteBuffer)));
    }
}
