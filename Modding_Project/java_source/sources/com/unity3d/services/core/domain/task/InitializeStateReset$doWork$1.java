package com.unity3d.services.core.domain.task;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.services.core.domain.task.InitializeStateReset", f = "InitializeStateReset.kt", i = {}, l = {33}, m = "doWork-gIAlu-s$suspendImpl", n = {}, s = {})
/* loaded from: classes6.dex */
public final class InitializeStateReset$doWork$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ InitializeStateReset this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateReset$doWork$1(InitializeStateReset initializeStateReset, Continuation<? super InitializeStateReset$doWork$1> continuation) {
        super(continuation);
        this.this$0 = initializeStateReset;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object m263doWorkgIAlus$suspendImpl = InitializeStateReset.m263doWorkgIAlus$suspendImpl(this.this$0, null, this);
        if (m263doWorkgIAlus$suspendImpl == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return m263doWorkgIAlus$suspendImpl;
        }
        return Result.m437boximpl(m263doWorkgIAlus$suspendImpl);
    }
}
