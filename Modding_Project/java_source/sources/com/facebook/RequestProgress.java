package com.facebook;

import android.os.Handler;
import com.facebook.GraphRequest;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\r\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\r\u0010\fJ\r\u0010\u000e\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0012R\u0014\u0010\u0014\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0013R$\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\b8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u000e\u0010\u0013\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0013R$\u0010\u001d\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\b8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u001b\u0010\u0013\u001a\u0004\b\u001c\u0010\u0017¨\u0006\u001e"}, d2 = {"Lcom/facebook/RequestProgress;", "", "Landroid/os/Handler;", "callbackHandler", "Lcom/facebook/GraphRequest;", AdActivity.REQUEST_KEY_EXTRA, "<init>", "(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V", "", "size", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "Lcom/facebook/GraphRequest;", "J", "threshold", "<set-?>", "getProgress", "()J", "progress", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "lastReportedProgress", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "getMaxProgress", "maxProgress", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RequestProgress {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f6094Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f6095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f6096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f6097Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = FacebookSdk.Wwwwwww();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GraphRequest f6098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f6099Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public RequestProgress(@Nullable Handler handler, @NotNull GraphRequest graphRequest) {
        this.f6099Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = handler;
        this.f6098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = graphRequest;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphRequest.Callback callback, long j, long j2) {
        ((GraphRequest.OnProgressCallback) callback).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, j2);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Boolean valueOf;
        if (this.f6096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww > this.f6095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            final GraphRequest.Callback Wwwwwwwwwwwwwwwwwwww2 = this.f6098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww();
            final long j = this.f6094Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (j > 0 && (Wwwwwwwwwwwwwwwwwwww2 instanceof GraphRequest.OnProgressCallback)) {
                final long j2 = this.f6096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                Handler handler = this.f6099Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (handler == null) {
                    valueOf = null;
                } else {
                    valueOf = Boolean.valueOf(handler.post(new Runnable() { // from class: com.facebook.Wwwwwwwwwwwwwwww
                        @Override // java.lang.Runnable
                        public final void run() {
                            RequestProgress.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphRequest.Callback.this, j2, j);
                        }
                    }));
                }
                if (valueOf == null) {
                    ((GraphRequest.OnProgressCallback) Wwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j2, j);
                }
                this.f6095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f6096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        this.f6094Wwwwwwwwwwwwwwwwwwwwwwwwwwwww += j;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        long j2 = this.f6096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + j;
        this.f6096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j2;
        if (j2 < this.f6095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww + this.f6097Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && j2 < this.f6094Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
