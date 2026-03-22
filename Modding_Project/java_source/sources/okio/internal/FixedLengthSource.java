package okio.internal;

import java.io.IOException;
import kotlin.Metadata;
import okio.Buffer;
import okio.ForwardingSource;
import okio.Source;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u0011\u001a\u00020\u0010*\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0014¨\u0006\u0019"}, d2 = {"Lokio/internal/FixedLengthSource;", "Lokio/ForwardingSource;", "Lokio/Source;", "delegate", "", "size", "", "truncate", "<init>", "(Lokio/Source;JZ)V", "Lokio/Buffer;", "sink", "byteCount", "read", "(Lokio/Buffer;J)J", "newSize", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwww", "bytesReceived", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class FixedLengthSource extends ForwardingSource {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13271Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13272Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13273Wwwwwwwwwwwwwwwwwwwwwwwww;

    public FixedLengthSource(@NotNull Source source, long j, boolean z) {
        super(source);
        this.f13273Wwwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f13272Wwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Buffer buffer, long j) {
        Buffer buffer2 = new Buffer();
        buffer2.Wwwwwwwwwwwwwwwwwwwwwwww(buffer);
        buffer.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer2, j);
        buffer2.Kkkkkkkkkkkkkkkkkkkkkkk();
    }

    @Override // okio.ForwardingSource, okio.Source
    public long read(@NotNull Buffer buffer, long j) {
        long j2 = this.f13271Wwwwwwwwwwwwwwwwwwwwwww;
        long j3 = this.f13273Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (j2 > j3) {
            j = 0;
        } else if (this.f13272Wwwwwwwwwwwwwwwwwwwwwwww) {
            long j4 = j3 - j2;
            if (j4 == 0) {
                return -1L;
            }
            j = Math.min(j, j4);
        }
        long read = super.read(buffer, j);
        int i = (read > (-1L) ? 1 : (read == (-1L) ? 0 : -1));
        if (i != 0) {
            this.f13271Wwwwwwwwwwwwwwwwwwwwwww += read;
        }
        long j5 = this.f13271Wwwwwwwwwwwwwwwwwwwwwww;
        long j6 = this.f13273Wwwwwwwwwwwwwwwwwwwwwwwww;
        if ((j5 < j6 && i == 0) || j5 > j6) {
            if (read > 0 && j5 > j6) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer, buffer.Kk() - (this.f13271Wwwwwwwwwwwwwwwwwwwwwww - this.f13273Wwwwwwwwwwwwwwwwwwwwwwwww));
            }
            throw new IOException("expected " + this.f13273Wwwwwwwwwwwwwwwwwwwwwwwww + " bytes but got " + this.f13271Wwwwwwwwwwwwwwwwwwwwwww);
        }
        return read;
    }
}
