package com.facebook.appevents;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\"\u0010\n\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0005\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u0011\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\f\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/facebook/appevents/FlushStatistics;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)V", "numEvents", "Lcom/facebook/appevents/FlushResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/FlushResult;", "()Lcom/facebook/appevents/FlushResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/FlushResult;)V", "result", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class FlushStatistics {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public FlushResult f6200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = FlushResult.SUCCESS;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f6201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull FlushResult flushResult) {
        this.f6200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = flushResult;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        this.f6201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
    }

    @NotNull
    public final FlushResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
