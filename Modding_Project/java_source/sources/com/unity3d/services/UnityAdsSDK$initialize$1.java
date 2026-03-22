package com.unity3d.services;

import com.unity3d.ads.core.configuration.AlternativeFlowReader;
import com.unity3d.ads.core.domain.InitializeBoldSDK;
import com.unity3d.services.core.domain.task.InitializeSDK;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.services.UnityAdsSDK$initialize$1", f = "UnityAdsSDK.kt", i = {}, l = {87, 89}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes6.dex */
public final class UnityAdsSDK$initialize$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Lazy<AlternativeFlowReader> $alternativeFlowReader$delegate;
    final /* synthetic */ CoroutineScope $initScope;
    final /* synthetic */ Lazy<InitializeBoldSDK> $initializeBoldSDK$delegate;
    final /* synthetic */ Lazy<InitializeSDK> $initializeSDK$delegate;
    final /* synthetic */ String $source;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UnityAdsSDK$initialize$1(String str, CoroutineScope coroutineScope, Lazy<AlternativeFlowReader> lazy, Lazy<? extends InitializeBoldSDK> lazy2, Lazy<InitializeSDK> lazy3, Continuation<? super UnityAdsSDK$initialize$1> continuation) {
        super(2, continuation);
        this.$source = str;
        this.$initScope = coroutineScope;
        this.$alternativeFlowReader$delegate = lazy;
        this.$initializeBoldSDK$delegate = lazy2;
        this.$initializeSDK$delegate = lazy3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new UnityAdsSDK$initialize$1(this.$source, this.$initScope, this.$alternativeFlowReader$delegate, this.$initializeBoldSDK$delegate, this.$initializeSDK$delegate, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        if (r5.invoke(r1, r4) == r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0051, code lost:
        if (r5.mo248invokegIAlus(r1, r4) == r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0053, code lost:
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L23
            if (r1 == r3) goto L1f
            if (r1 != r2) goto L17
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            r5.m447unboximpl()
            goto L54
        L17:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L1f:
            kotlin.ResultKt.throwOnFailure(r5)
            goto L54
        L23:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.Lazy<com.unity3d.ads.core.configuration.AlternativeFlowReader> r5 = r4.$alternativeFlowReader$delegate
            com.unity3d.ads.core.configuration.AlternativeFlowReader r5 = com.unity3d.services.UnityAdsSDK.access$initialize$lambda$1(r5)
            boolean r5 = r5.invoke()
            if (r5 == 0) goto L43
            kotlin.Lazy<com.unity3d.ads.core.domain.InitializeBoldSDK> r5 = r4.$initializeBoldSDK$delegate
            com.unity3d.ads.core.domain.InitializeBoldSDK r5 = com.unity3d.services.UnityAdsSDK.access$initialize$lambda$3(r5)
            java.lang.String r1 = r4.$source
            r4.label = r3
            java.lang.Object r5 = r5.invoke(r1, r4)
            if (r5 != r0) goto L54
            goto L53
        L43:
            kotlin.Lazy<com.unity3d.services.core.domain.task.InitializeSDK> r5 = r4.$initializeSDK$delegate
            com.unity3d.services.core.domain.task.InitializeSDK r5 = com.unity3d.services.UnityAdsSDK.access$initialize$lambda$2(r5)
            com.unity3d.services.core.domain.task.EmptyParams r1 = com.unity3d.services.core.domain.task.EmptyParams.INSTANCE
            r4.label = r2
            java.lang.Object r5 = r5.mo248invokegIAlus(r1, r4)
            if (r5 != r0) goto L54
        L53:
            return r0
        L54:
            kotlinx.coroutines.CoroutineScope r5 = r4.$initScope
            r0 = 0
            kotlinx.coroutines.CoroutineScopeKt.cancel$default(r5, r0, r3, r0)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.UnityAdsSDK$initialize$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((UnityAdsSDK$initialize$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
