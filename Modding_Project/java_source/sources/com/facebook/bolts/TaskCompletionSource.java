package com.facebook.bolts;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000e\u001a\u00020\u00052\u000e\u0010\r\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\f¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0004J\u0017\u0010\u0012\u001a\u00020\u00102\b\u0010\b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u001d\u0010\u0014\u001a\u00020\u00102\u000e\u0010\r\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\f¢\u0006\u0004\b\u0014\u0010\u0015R\u001d\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0017\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcom/facebook/bolts/TaskCompletionSource;", "TResult", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "result", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Z", "Ljava/lang/Exception;", "Lkotlin/Exception;", "error", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Exception;)Z", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Exception;)V", "Lcom/facebook/bolts/Task;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/bolts/Task;", "()Lcom/facebook/bolts/Task;", "task", "facebook-bolts_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class TaskCompletionSource<TResult> {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Task<TResult> f6590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Task<>();

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable TResult tresult) {
        return this.f6590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwww(tresult);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Exception exc) {
        return this.f6590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwww(exc);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable TResult tresult) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww(tresult)) {
            return;
        }
        throw new IllegalStateException("Cannot set the result of a completed task.");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Exception exc) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc)) {
            return;
        }
        throw new IllegalStateException("Cannot set the error on a completed task.");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return;
        }
        throw new IllegalStateException("Cannot cancel a completed task.");
    }

    @NotNull
    public final Task<TResult> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
