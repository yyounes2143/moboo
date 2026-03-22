package com.google.android.play.integrity.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public abstract class t implements Runnable {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final TaskCompletionSource f7745a;

    public t() {
        this.f7745a = null;
    }

    public void a(Exception exc) {
        TaskCompletionSource taskCompletionSource = this.f7745a;
        if (taskCompletionSource != null) {
            taskCompletionSource.trySetException(exc);
        }
    }

    public abstract void b();

    @Nullable
    public final TaskCompletionSource c() {
        return this.f7745a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            b();
        } catch (Exception e) {
            a(e);
        }
    }

    public t(@Nullable TaskCompletionSource taskCompletionSource) {
        this.f7745a = taskCompletionSource;
    }
}
