package com.unity3d.ads.core.domain;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.domain.CommonCleanAssets", f = "CommonCleanAssets.kt", i = {0, 0, 1, 1, 1}, l = {18, 19}, m = "invoke", n = {"this", "startTime", "this", "startTime", "currentSize"}, s = {"L$0", "J$0", "L$0", "J$0", "J$1"})
/* loaded from: classes6.dex */
public final class CommonCleanAssets$invoke$1 extends ContinuationImpl {
    long J$0;
    long J$1;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CommonCleanAssets this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonCleanAssets$invoke$1(CommonCleanAssets commonCleanAssets, Continuation<? super CommonCleanAssets$invoke$1> continuation) {
        super(continuation);
        this.this$0 = commonCleanAssets;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(this);
    }
}
