package coil.decode;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.io.InputStream;
import kotlin.Metadata;
import kotlinx.coroutines.DebugKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0006\u0010\nJ'\u0010\u0006\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0007J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0002\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcoil/decode/ExifInterfaceInputStream;", "Ljava/io/InputStream;", "delegate", "<init>", "(Ljava/io/InputStream;)V", "", "read", "()I", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "([B)I", DebugKt.DEBUG_PROPERTY_VALUE_OFF, "len", "([BII)I", "", "n", "skip", "(J)J", "available", "", "close", "()V", "bytesRead", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)I", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/io/InputStream;", "Wwwwwwwwwwwwwwwwwwwwwwww", "I", "availableBytes", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
final class ExifInterfaceInputStream extends InputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f1825Wwwwwwwwwwwwwwwwwwwwwwww = 1073741824;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InputStream f1826Wwwwwwwwwwwwwwwwwwwwwwwww;

    public ExifInterfaceInputStream(@NotNull InputStream inputStream) {
        this.f1826Wwwwwwwwwwwwwwwwwwwwwwwww = inputStream;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i == -1) {
            this.f1825Wwwwwwwwwwwwwwwwwwwwwwww = 0;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f1825Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f1826Wwwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // java.io.InputStream
    public int read() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1826Wwwwwwwwwwwwwwwwwwwwwwwww.read());
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        return this.f1826Wwwwwwwwwwwwwwwwwwwwwwwww.skip(j);
    }

    @Override // java.io.InputStream
    public int read(@NotNull byte[] bArr) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1826Wwwwwwwwwwwwwwwwwwwwwwwww.read(bArr));
    }

    @Override // java.io.InputStream
    public int read(@NotNull byte[] bArr, int i, int i2) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1826Wwwwwwwwwwwwwwwwwwwwwwwww.read(bArr, i, i2));
    }
}
