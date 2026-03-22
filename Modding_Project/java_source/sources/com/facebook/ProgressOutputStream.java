package com.facebook;

import android.os.Handler;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.facebook.GraphRequestBatch;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u001c\u0018\u00002\u00020\u00012\u00020\u0002B3\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u0018\u0010\u001dJ\u0017\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u0018\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0010H\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\"\u0010!R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R \u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0017\u0010\f\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0014\u0010,\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010(R$\u00100\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u000b8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b.\u0010(\u001a\u0004\b/\u0010*R\u0016\u00102\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010(R\u0018\u00105\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104¨\u00066"}, d2 = {"Lcom/facebook/ProgressOutputStream;", "Ljava/io/FilterOutputStream;", "Lcom/facebook/RequestOutputStream;", "Ljava/io/OutputStream;", "out", "Lcom/facebook/GraphRequestBatch;", "requests", "", "Lcom/facebook/GraphRequest;", "Lcom/facebook/RequestProgress;", "progressMap", "", "maxProgress", "<init>", "(Ljava/io/OutputStream;Lcom/facebook/GraphRequestBatch;Ljava/util/Map;J)V", "size", "", "Wwwwwwwwwwwwww", "(J)V", AdActivity.REQUEST_KEY_EXTRA, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequest;)V", "", "buffer", "write", "([B)V", "", TypedValues.CycleType.S_WAVE_OFFSET, SessionDescription.ATTR_LENGTH, "([BII)V", "oneByte", "(I)V", "close", "()V", "Kkkkkkkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/GraphRequestBatch;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwwwwww", "J", "Kkkkkkkkkkkkkkkkkkkkkk", "()J", "Wwwwwwwwwwwwwwwwwwwwww", "threshold", "<set-?>", "Wwwwwwwwwwwwwwwwwwwww", "Kkkkkkkkkkkkkkkkkkkkkkk", "batchProgress", "Wwwwwwwwwwwwwwwwwwww", "lastReportedProgress", "Wwwwwwwwwwwwwwwwwww", "Lcom/facebook/RequestProgress;", "currentRequestProgress", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ProgressOutputStream extends FilterOutputStream implements RequestOutputStream, AutoCloseable {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RequestProgress f6087Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f6088Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f6089Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f6090Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f6091Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<GraphRequest, RequestProgress> f6092Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GraphRequestBatch f6093Wwwwwwwwwwwwwwwwwwwwwwwww;

    public ProgressOutputStream(@NotNull OutputStream outputStream, @NotNull GraphRequestBatch graphRequestBatch, @NotNull Map<GraphRequest, RequestProgress> map, long j) {
        super(outputStream);
        this.f6093Wwwwwwwwwwwwwwwwwwwwwwwww = graphRequestBatch;
        this.f6092Wwwwwwwwwwwwwwwwwwwwwwww = map;
        this.f6091Wwwwwwwwwwwwwwwwwwwwwww = j;
        this.f6090Wwwwwwwwwwwwwwwwwwwwww = FacebookSdk.Wwwwwww();
    }

    public static final void Kkkkkkkkkkkkkkkkkkkk(GraphRequestBatch.Callback callback, ProgressOutputStream progressOutputStream) {
        ((GraphRequestBatch.OnProgressCallback) callback).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(progressOutputStream.f6093Wwwwwwwwwwwwwwwwwwwwwwwww, progressOutputStream.Kkkkkkkkkkkkkkkkkkkkkkk(), progressOutputStream.Kkkkkkkkkkkkkkkkkkkkkk());
    }

    private final void Wwwwwwwwwwwwww(long j) {
        RequestProgress requestProgress = this.f6087Wwwwwwwwwwwwwwwwwww;
        if (requestProgress != null) {
            requestProgress.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
        }
        long j2 = this.f6089Wwwwwwwwwwwwwwwwwwwww + j;
        this.f6089Wwwwwwwwwwwwwwwwwwwww = j2;
        if (j2 < this.f6088Wwwwwwwwwwwwwwwwwwww + this.f6090Wwwwwwwwwwwwwwwwwwwwww && j2 < this.f6091Wwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkk();
    }

    public final void Kkkkkkkkkkkkkkkkkkkkk() {
        Boolean valueOf;
        if (this.f6089Wwwwwwwwwwwwwwwwwwwww > this.f6088Wwwwwwwwwwwwwwwwwwww) {
            for (final GraphRequestBatch.Callback callback : this.f6093Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww()) {
                if (callback instanceof GraphRequestBatch.OnProgressCallback) {
                    Handler Wwwwwwwwwwwwwwwwwwwwwwww2 = this.f6093Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                        valueOf = null;
                    } else {
                        valueOf = Boolean.valueOf(Wwwwwwwwwwwwwwwwwwwwwwww2.post(new Runnable() { // from class: com.facebook.Wwwwwwwwwwwwwwwww
                            @Override // java.lang.Runnable
                            public final void run() {
                                ProgressOutputStream.Kkkkkkkkkkkkkkkkkkkk(GraphRequestBatch.Callback.this, this);
                            }
                        }));
                    }
                    if (valueOf == null) {
                        ((GraphRequestBatch.OnProgressCallback) callback).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6093Wwwwwwwwwwwwwwwwwwwwwwwww, this.f6089Wwwwwwwwwwwwwwwwwwwww, this.f6091Wwwwwwwwwwwwwwwwwwwwwww);
                    }
                }
            }
            this.f6088Wwwwwwwwwwwwwwwwwwww = this.f6089Wwwwwwwwwwwwwwwwwwwww;
        }
    }

    public final long Kkkkkkkkkkkkkkkkkkkkkk() {
        return this.f6091Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Kkkkkkkkkkkkkkkkkkkkkkk() {
        return this.f6089Wwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.facebook.RequestOutputStream
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable GraphRequest graphRequest) {
        RequestProgress requestProgress;
        if (graphRequest != null) {
            requestProgress = this.f6092Wwwwwwwwwwwwwwwwwwwwwwww.get(graphRequest);
        } else {
            requestProgress = null;
        }
        this.f6087Wwwwwwwwwwwwwwwwwww = requestProgress;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        for (RequestProgress requestProgress : this.f6092Wwwwwwwwwwwwwwwwwwwwwwww.values()) {
            requestProgress.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        Kkkkkkkkkkkkkkkkkkkkk();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(@NotNull byte[] bArr) throws IOException {
        ((FilterOutputStream) this).out.write(bArr);
        Wwwwwwwwwwwwww(bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(@NotNull byte[] bArr, int i, int i2) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i, i2);
        Wwwwwwwwwwwwww(i2);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        ((FilterOutputStream) this).out.write(i);
        Wwwwwwwwwwwwww(1L);
    }
}
