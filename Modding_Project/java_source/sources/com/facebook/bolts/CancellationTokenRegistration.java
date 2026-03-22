package com.facebook.bolts;

import java.io.Closeable;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/facebook/bolts/CancellationTokenRegistration;", "Ljava/io/Closeable;", "", "close", "()V", "Ljava/lang/Runnable;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Runnable;", "action", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "Z", "closed", "Lcom/facebook/bolts/CancellationTokenSource;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/bolts/CancellationTokenSource;", "tokenSource", "facebook-bolts_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class CancellationTokenRegistration implements Closeable, AutoCloseable {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public CancellationTokenSource f6554Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6555Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Runnable f6556Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.f6555Wwwwwwwwwwwwwwwwwwwwwwww) {
                return;
            }
            this.f6555Wwwwwwwwwwwwwwwwwwwwwwww = true;
            CancellationTokenSource cancellationTokenSource = this.f6554Wwwwwwwwwwwwwwwwwwwwwww;
            if (cancellationTokenSource != null) {
                cancellationTokenSource.Kkkkkkkkkkkkkkkkkkkkkkk(this);
            }
            this.f6554Wwwwwwwwwwwwwwwwwwwwwww = null;
            this.f6556Wwwwwwwwwwwwwwwwwwwwwwwww = null;
            Unit unit = Unit.INSTANCE;
        }
    }
}
