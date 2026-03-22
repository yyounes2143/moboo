package com.changdu.mobovideo.picture.worker;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.picture.worker.PeriodicHeartbeatWorker", f = "PeriodicHeartbeatWorker.kt", i = {}, l = {45}, m = "doWork", n = {}, s = {})
/* loaded from: classes3.dex */
public final class PeriodicHeartbeatWorker$doWork$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PeriodicHeartbeatWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PeriodicHeartbeatWorker$doWork$1(PeriodicHeartbeatWorker periodicHeartbeatWorker, Continuation<? super PeriodicHeartbeatWorker$doWork$1> continuation) {
        super(continuation);
        this.this$0 = periodicHeartbeatWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.doWork(this);
    }
}
