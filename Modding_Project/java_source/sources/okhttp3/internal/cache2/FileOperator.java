package okhttp3.internal.cache2;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ%\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\rR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/cache2/FileOperator;", "", "Ljava/nio/channels/FileChannel;", "fileChannel", "<init>", "(Ljava/nio/channels/FileChannel;)V", "", "pos", "Lokio/Buffer;", "source", "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JLokio/Buffer;J)V", "sink", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/nio/channels/FileChannel;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class FileOperator {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FileChannel f12578Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public FileOperator(@NotNull FileChannel fileChannel) {
        this.f12578Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fileChannel;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, @NotNull Buffer buffer, long j2) throws IOException {
        if (j2 >= 0 && j2 <= buffer.Kk()) {
            long j3 = j;
            long j4 = j2;
            while (j4 > 0) {
                long transferFrom = this.f12578Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.transferFrom(buffer, j3, j4);
                j3 += transferFrom;
                j4 -= transferFrom;
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, @NotNull Buffer buffer, long j2) {
        if (j2 >= 0) {
            long j3 = j;
            long j4 = j2;
            while (j4 > 0) {
                long transferTo = this.f12578Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.transferTo(j3, j4, buffer);
                j3 += transferTo;
                j4 -= transferTo;
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
