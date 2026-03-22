package okio.internal;

import kotlin.Metadata;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\n\u001a\u0004\b\t\u0010\fR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u000e\u001a\u0004\b\r\u0010\u000f¨\u0006\u0010"}, d2 = {"Lokio/internal/EocdRecord;", "", "", "entryCount", "centralDirectoryOffset", "", "commentByteCount", "<init>", "(JJI)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "()I", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
final class EocdRecord {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public EocdRecord(long j, long j2, int i) {
        this.f13270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f13269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j2;
        this.f13268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
