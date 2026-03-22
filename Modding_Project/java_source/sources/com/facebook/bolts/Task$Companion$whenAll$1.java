package com.facebook.bolts;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\n"}, d2 = {"<anonymous>", "", "TResult", "it", "Lcom/facebook/bolts/Task;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
final class Task$Companion$whenAll$1<TTaskResult, TContinuationResult> implements Continuation {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource<Void> f6580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ ArrayList<Exception> f6581Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ AtomicInteger f6582Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f6583Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ ReentrantLock f6584Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.facebook.bolts.Continuation
    @Nullable
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final Void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Task<Object> task) {
        if (task.Wwwwwwwwwwwwwww()) {
            ReentrantLock reentrantLock = this.f6584Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            ArrayList<Exception> arrayList = this.f6581Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            reentrantLock.lock();
            try {
                arrayList.add(task.Wwwwwwwwwwwwwwwwwww());
            } finally {
                reentrantLock.unlock();
            }
        }
        if (task.Wwwwwwwwwwwwwwwww()) {
            this.f6583Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(true);
        }
        if (this.f6582Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.decrementAndGet() == 0) {
            if (this.f6581Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() != 0) {
                if (this.f6581Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() == 1) {
                    this.f6580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6581Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(0));
                } else {
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    this.f6580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new AggregateException(String.format("There were %d exceptions.", Arrays.copyOf(new Object[]{Integer.valueOf(this.f6581Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size())}, 1)), this.f6581Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
                }
            } else if (this.f6583Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get()) {
                this.f6580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                this.f6580Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            }
        }
        return null;
    }
}
