package com.facebook.bolts;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\n\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00030\u0001J#\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"com/facebook/bolts/Task$continueWhile$predicateContinuation$1", "Lcom/facebook/bolts/Continuation;", "Ljava/lang/Void;", "Lcom/facebook/bolts/Task;", "task", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;", "facebook-bolts_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class Task$continueWhile$predicateContinuation$1 implements Continuation<Void, Task<Void>> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ Executor f6586Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ Continuation<Void, Task<Void>> f6587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ Callable<Boolean> f6588Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ CancellationToken f6589Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.facebook.bolts.Continuation
    @NotNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public Task<Void> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Task<Void> task) throws Exception {
        CancellationToken cancellationToken = this.f6589Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (cancellationToken != null && cancellationToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return Task.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (this.f6588Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.call().booleanValue()) {
            return Task.Companion.Wwwwwwwwwwwwwwwwwwwwww(null).Wwwwwwwwwwwwww(this.f6587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6586Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwww(this, this.f6586Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return Task.Companion.Wwwwwwwwwwwwwwwwwwwwww(null);
    }
}
