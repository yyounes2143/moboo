package okio;

import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\t\u0010\nJ/\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J/\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u0018\u0010\u0017R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lokio/NioFileSystemFileHandle;", "Lokio/FileHandle;", "", "readWrite", "Ljava/nio/channels/FileChannel;", "fileChannel", "<init>", "(ZLjava/nio/channels/FileChannel;)V", "", "Kkkkkkkkkkkkkkkkk", "()J", "fileOffset", "", "array", "", "arrayOffset", "byteCount", "Kkkkkkkkkkkkkkkkkk", "(J[BII)I", "", "Kkkkkkkkkkkkkkkk", "(J[BII)V", "Kkkkkkkkkkkkkkkkkkk", "()V", "Kkkkkkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwwww", "Ljava/nio/channels/FileChannel;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class NioFileSystemFileHandle extends FileHandle {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FileChannel f13193Wwwwwwwwwwwwwwwwwwwww;

    public NioFileSystemFileHandle(boolean z, @NotNull FileChannel fileChannel) {
        super(z);
        this.f13193Wwwwwwwwwwwwwwwwwwwww = fileChannel;
    }

    @Override // okio.FileHandle
    public synchronized void Kkkkkkkkkkkkkkkk(long j, @NotNull byte[] bArr, int i, int i2) {
        this.f13193Wwwwwwwwwwwwwwwwwwwww.position(j);
        this.f13193Wwwwwwwwwwwwwwwwwwwww.write(ByteBuffer.wrap(bArr, i, i2));
    }

    @Override // okio.FileHandle
    public synchronized long Kkkkkkkkkkkkkkkkk() {
        return this.f13193Wwwwwwwwwwwwwwwwwwwww.size();
    }

    @Override // okio.FileHandle
    public synchronized int Kkkkkkkkkkkkkkkkkk(long j, @NotNull byte[] bArr, int i, int i2) {
        this.f13193Wwwwwwwwwwwwwwwwwwwww.position(j);
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i, i2);
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            int read = this.f13193Wwwwwwwwwwwwwwwwwwwww.read(wrap);
            if (read == -1) {
                if (i3 == 0) {
                    return -1;
                }
            } else {
                i3 += read;
            }
        }
        return i3;
    }

    @Override // okio.FileHandle
    public synchronized void Kkkkkkkkkkkkkkkkkkk() {
        this.f13193Wwwwwwwwwwwwwwwwwwwww.force(true);
    }

    @Override // okio.FileHandle
    public synchronized void Kkkkkkkkkkkkkkkkkkkk() {
        this.f13193Wwwwwwwwwwwwwwwwwwwww.close();
    }
}
