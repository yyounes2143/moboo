package org.chromium.net;

import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class UploadDataProviders {

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class ByteBufferUploadProvider extends UploadDataProvider {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ByteBuffer f13474Wwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // org.chromium.net.UploadDataProvider
        public long getLength() {
            return this.f13474Wwwwwwwwwwwwwwwwwwwwwwwww.limit();
        }

        @Override // org.chromium.net.UploadDataProvider
        public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
            if (byteBuffer.hasRemaining()) {
                if (byteBuffer.remaining() >= this.f13474Wwwwwwwwwwwwwwwwwwwwwwwww.remaining()) {
                    byteBuffer.put(this.f13474Wwwwwwwwwwwwwwwwwwwwwwwww);
                } else {
                    int limit = this.f13474Wwwwwwwwwwwwwwwwwwwwwwwww.limit();
                    ByteBuffer byteBuffer2 = this.f13474Wwwwwwwwwwwwwwwwwwwwwwwww;
                    byteBuffer2.limit(byteBuffer2.position() + byteBuffer.remaining());
                    byteBuffer.put(this.f13474Wwwwwwwwwwwwwwwwwwwwwwwww);
                    this.f13474Wwwwwwwwwwwwwwwwwwwwwwwww.limit(limit);
                }
                uploadDataSink.onReadSucceeded(false);
                return;
            }
            throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
        }

        @Override // org.chromium.net.UploadDataProvider
        public void rewind(UploadDataSink uploadDataSink) {
            this.f13474Wwwwwwwwwwwwwwwwwwwwwwwww.position(0);
            uploadDataSink.onRewindSucceeded();
        }

        public ByteBufferUploadProvider(ByteBuffer byteBuffer) {
            this.f13474Wwwwwwwwwwwwwwwwwwwwwwwww = byteBuffer;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public interface FileChannelProvider {
        FileChannel getChannel() throws IOException;
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class FileUploadProvider extends UploadDataProvider {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Object f13475Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final FileChannelProvider f13476Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile FileChannel f13477Wwwwwwwwwwwwwwwwwwwwwwwww;

        public final FileChannel Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            if (this.f13477Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
                synchronized (this.f13475Wwwwwwwwwwwwwwwwwwwwwww) {
                    try {
                        if (this.f13477Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
                            this.f13477Wwwwwwwwwwwwwwwwwwwwwwwww = this.f13476Wwwwwwwwwwwwwwwwwwwwwwww.getChannel();
                        }
                    } finally {
                    }
                }
            }
            return this.f13477Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.chromium.net.UploadDataProvider, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            FileChannel fileChannel = this.f13477Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (fileChannel != null) {
                fileChannel.close();
            }
        }

        @Override // org.chromium.net.UploadDataProvider
        public long getLength() throws IOException {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size();
        }

        @Override // org.chromium.net.UploadDataProvider
        public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasRemaining()) {
                FileChannel Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                int i = 0;
                while (i == 0) {
                    int read = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.read(byteBuffer);
                    if (read == -1) {
                        break;
                    }
                    i += read;
                }
                uploadDataSink.onReadSucceeded(false);
                return;
            }
            throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
        }

        @Override // org.chromium.net.UploadDataProvider
        public void rewind(UploadDataSink uploadDataSink) throws IOException {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().position(0L);
            uploadDataSink.onRewindSucceeded();
        }

        public FileUploadProvider(FileChannelProvider fileChannelProvider) {
            this.f13475Wwwwwwwwwwwwwwwwwwwwwww = new Object();
            this.f13476Wwwwwwwwwwwwwwwwwwwwwwww = fileChannelProvider;
        }
    }

    private UploadDataProviders() {
    }

    public static UploadDataProvider create(final File file) {
        return new FileUploadProvider(new FileChannelProvider() { // from class: org.chromium.net.UploadDataProviders.1
            @Override // org.chromium.net.UploadDataProviders.FileChannelProvider
            public FileChannel getChannel() throws IOException {
                return new FileInputStream(file).getChannel();
            }
        });
    }

    public static UploadDataProvider create(final ParcelFileDescriptor parcelFileDescriptor) {
        return new FileUploadProvider(new FileChannelProvider() { // from class: org.chromium.net.UploadDataProviders.2
            @Override // org.chromium.net.UploadDataProviders.FileChannelProvider
            public FileChannel getChannel() throws IOException {
                if (parcelFileDescriptor.getStatSize() != -1) {
                    return new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor).getChannel();
                }
                parcelFileDescriptor.close();
                throw new IllegalArgumentException("Not a file: " + parcelFileDescriptor);
            }
        });
    }

    public static UploadDataProvider create(ByteBuffer byteBuffer) {
        return new ByteBufferUploadProvider(byteBuffer.slice());
    }

    public static UploadDataProvider create(byte[] bArr, int i, int i2) {
        return new ByteBufferUploadProvider(ByteBuffer.wrap(bArr, i, i2).slice());
    }

    public static UploadDataProvider create(byte[] bArr) {
        return create(bArr, 0, bArr.length);
    }
}
