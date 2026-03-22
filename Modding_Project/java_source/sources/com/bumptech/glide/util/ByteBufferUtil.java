package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class ByteBufferUtil {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicReference<byte[]> f5179Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicReference<>();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class SafeArray {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final byte[] f5182Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f5183Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f5184Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public SafeArray(@NonNull byte[] bArr, int i, int i2) {
            this.f5182Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bArr;
            this.f5184Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f5183Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        }
    }

    @NonNull
    public static InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ByteBuffer byteBuffer) {
        return new ByteBufferStream(byteBuffer);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ByteBuffer byteBuffer, @NonNull File file) throws IOException {
        RandomAccessFile randomAccessFile;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteBuffer);
        FileChannel fileChannel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                fileChannel = randomAccessFile.getChannel();
                fileChannel.write(byteBuffer);
                fileChannel.force(false);
                fileChannel.close();
                randomAccessFile.close();
                try {
                    fileChannel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th) {
                th = th;
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    @NonNull
    public static byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ByteBuffer byteBuffer) {
        SafeArray Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteBuffer);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5184Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 0 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5183Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f5182Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length) {
            return byteBuffer.array();
        }
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[asReadOnlyBuffer.limit()];
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(asReadOnlyBuffer);
        asReadOnlyBuffer.get(bArr);
        return bArr;
    }

    public static ByteBuffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteBuffer byteBuffer) {
        return (ByteBuffer) byteBuffer.position(0);
    }

    @Nullable
    public static SafeArray Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ByteBuffer byteBuffer) {
        if (!byteBuffer.isReadOnly() && byteBuffer.hasArray()) {
            return new SafeArray(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
        }
        return null;
    }

    @NonNull
    public static ByteBuffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] andSet = f5179Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (true) {
            int read = inputStream.read(andSet);
            if (read >= 0) {
                byteArrayOutputStream.write(andSet, 0, read);
            } else {
                f5179Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(andSet);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteBuffer.allocateDirect(byteArray.length).put(byteArray));
            }
        }
    }

    @NonNull
    public static ByteBuffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull File file) throws IOException {
        Throwable th;
        RandomAccessFile randomAccessFile;
        FileChannel fileChannel = null;
        try {
            long length = file.length();
            if (length <= 2147483647L) {
                if (length != 0) {
                    randomAccessFile = new RandomAccessFile(file, "r");
                    try {
                        FileChannel channel = randomAccessFile.getChannel();
                        try {
                            MappedByteBuffer load = channel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
                            try {
                                channel.close();
                            } catch (IOException unused) {
                            }
                            try {
                                randomAccessFile.close();
                            } catch (IOException unused2) {
                            }
                            return load;
                        } catch (Throwable th2) {
                            th = th2;
                            fileChannel = channel;
                            if (fileChannel != null) {
                                try {
                                    fileChannel.close();
                                } catch (IOException unused3) {
                                }
                            }
                            if (randomAccessFile != null) {
                                try {
                                    randomAccessFile.close();
                                } catch (IOException unused4) {
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } else {
                    throw new IOException("File unsuitable for memory mapping");
                }
            } else {
                throw new IOException("File too large to map into memory");
            }
        } catch (Throwable th4) {
            th = th4;
            randomAccessFile = null;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class ByteBufferStream extends InputStream {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f5180Wwwwwwwwwwwwwwwwwwwwwwww = -1;
        @NonNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ByteBuffer f5181Wwwwwwwwwwwwwwwwwwwwwwwww;

        public ByteBufferStream(@NonNull ByteBuffer byteBuffer) {
            this.f5181Wwwwwwwwwwwwwwwwwwwwwwwww = byteBuffer;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f5181Wwwwwwwwwwwwwwwwwwwwwwwww.remaining();
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i) {
            this.f5180Wwwwwwwwwwwwwwwwwwwwwwww = this.f5181Wwwwwwwwwwwwwwwwwwwwwwwww.position();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f5181Wwwwwwwwwwwwwwwwwwwwwwwww.hasRemaining()) {
                return this.f5181Wwwwwwwwwwwwwwwwwwwwwwwww.get() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public synchronized void reset() throws IOException {
            int i = this.f5180Wwwwwwwwwwwwwwwwwwwwwwww;
            if (i != -1) {
                this.f5181Wwwwwwwwwwwwwwwwwwwwwwwww.position(i);
            } else {
                throw new IOException("Cannot reset to unset mark position");
            }
        }

        @Override // java.io.InputStream
        public long skip(long j) {
            if (!this.f5181Wwwwwwwwwwwwwwwwwwwwwwwww.hasRemaining()) {
                return -1L;
            }
            long min = Math.min(j, available());
            ByteBuffer byteBuffer = this.f5181Wwwwwwwwwwwwwwwwwwwwwwwww;
            byteBuffer.position((int) (byteBuffer.position() + min));
            return min;
        }

        @Override // java.io.InputStream
        public int read(@NonNull byte[] bArr, int i, int i2) {
            if (this.f5181Wwwwwwwwwwwwwwwwwwwwwwwww.hasRemaining()) {
                int min = Math.min(i2, available());
                this.f5181Wwwwwwwwwwwwwwwwwwwwwwwww.get(bArr, i, min);
                return min;
            }
            return -1;
        }
    }
}
