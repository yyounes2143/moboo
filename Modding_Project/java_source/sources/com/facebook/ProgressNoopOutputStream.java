package com.facebook;

import android.os.Handler;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u000f\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J'\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0016\u0010\u001bJ\u0017\u0010\u0016\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0016\u0010\u001dR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR \u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\r0 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010(\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R$\u0010.\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u00188\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-¨\u0006/"}, d2 = {"Lcom/facebook/ProgressNoopOutputStream;", "Ljava/io/OutputStream;", "Lcom/facebook/RequestOutputStream;", "Landroid/os/Handler;", "callbackHandler", "<init>", "(Landroid/os/Handler;)V", "Lcom/facebook/GraphRequest;", "currentRequest", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequest;)V", "", "Lcom/facebook/RequestProgress;", "Kkkkkkkkkkkkkkkkkkkkkkk", "()Ljava/util/Map;", "", "size", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)V", "", "buffer", "write", "([B)V", "", TypedValues.CycleType.S_WAVE_OFFSET, SessionDescription.ATTR_LENGTH, "([BII)V", "oneByte", "(I)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "progressMap", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/GraphRequest;", "Wwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/RequestProgress;", "currentRequestProgress", "<set-?>", "Wwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwww", "()I", "maxProgress", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ProgressNoopOutputStream extends OutputStream implements RequestOutputStream {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f6082Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RequestProgress f6083Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public GraphRequest f6084Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<GraphRequest, RequestProgress> f6085Wwwwwwwwwwwwwwwwwwwwwwww = new HashMap();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f6086Wwwwwwwwwwwwwwwwwwwwwwwww;

    public ProgressNoopOutputStream(@Nullable Handler handler) {
        this.f6086Wwwwwwwwwwwwwwwwwwwwwwwww = handler;
    }

    @NotNull
    public final Map<GraphRequest, RequestProgress> Kkkkkkkkkkkkkkkkkkkkkkk() {
        return this.f6085Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwww() {
        return this.f6082Wwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        GraphRequest graphRequest = this.f6084Wwwwwwwwwwwwwwwwwwwwwww;
        if (graphRequest == null) {
            return;
        }
        if (this.f6083Wwwwwwwwwwwwwwwwwwwwww == null) {
            RequestProgress requestProgress = new RequestProgress(this.f6086Wwwwwwwwwwwwwwwwwwwwwwwww, graphRequest);
            this.f6083Wwwwwwwwwwwwwwwwwwwwww = requestProgress;
            this.f6085Wwwwwwwwwwwwwwwwwwwwwwww.put(graphRequest, requestProgress);
        }
        RequestProgress requestProgress2 = this.f6083Wwwwwwwwwwwwwwwwwwwwww;
        if (requestProgress2 != null) {
            requestProgress2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
        }
        this.f6082Wwwwwwwwwwwwwwwwwwwww += (int) j;
    }

    @Override // com.facebook.RequestOutputStream
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable GraphRequest graphRequest) {
        RequestProgress requestProgress;
        this.f6084Wwwwwwwwwwwwwwwwwwwwwww = graphRequest;
        if (graphRequest != null) {
            requestProgress = this.f6085Wwwwwwwwwwwwwwwwwwwwwwww.get(graphRequest);
        } else {
            requestProgress = null;
        }
        this.f6083Wwwwwwwwwwwwwwwwwwwwww = requestProgress;
    }

    @Override // java.io.OutputStream
    public void write(@NotNull byte[] bArr) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(@NotNull byte[] bArr, int i, int i2) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(i2);
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(1L);
    }
}
