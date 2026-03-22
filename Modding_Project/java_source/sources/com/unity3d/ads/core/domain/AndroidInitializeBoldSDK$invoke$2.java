package com.unity3d.ads.core.domain;

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
@DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2", f = "AndroidInitializeBoldSDK.kt", i = {0, 0}, l = {65, 82}, m = "invokeSuspend", n = {"startTime", "isRetry"}, s = {"J$0", "I$0"})
/* loaded from: classes6.dex */
public final class AndroidInitializeBoldSDK$invoke$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $source;
    int I$0;
    long J$0;
    int label;
    final /* synthetic */ AndroidInitializeBoldSDK this$0;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2$1", f = "AndroidInitializeBoldSDK.kt", i = {}, l = {66, 68, 70, 71}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $isRetry;
        final /* synthetic */ String $source;
        int label;
        final /* synthetic */ AndroidInitializeBoldSDK this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AndroidInitializeBoldSDK androidInitializeBoldSDK, String str, boolean z, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = androidInitializeBoldSDK;
            this.$source = str;
            this.$isRetry = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$source, this.$isRetry, continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x003e, code lost:
            if (r13 == r0) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0053, code lost:
            if (r13 == r0) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0075, code lost:
            if (r13 == r0) goto L16;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0082, code lost:
            if (r13 == r0) goto L16;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0084, code lost:
            return r0;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r13) {
            /*
                r12 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r12.label
                r2 = 4
                r3 = 3
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L2f
                if (r1 == r5) goto L2b
                if (r1 == r4) goto L27
                if (r1 == r3) goto L22
                if (r1 != r2) goto L1a
                kotlin.ResultKt.throwOnFailure(r13)
                r9 = r12
                goto L85
            L1a:
                java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r13.<init>(r0)
                throw r13
            L22:
                kotlin.ResultKt.throwOnFailure(r13)
                r9 = r12
                goto L78
            L27:
                kotlin.ResultKt.throwOnFailure(r13)
                goto L56
            L2b:
                kotlin.ResultKt.throwOnFailure(r13)
                goto L42
            L2f:
                kotlin.ResultKt.throwOnFailure(r13)
                com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r13 = r12.this$0
                java.lang.String r1 = r12.$source
                boolean r6 = r12.$isRetry
                r12.label = r5
                java.lang.Object r13 = com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.access$initializationStart(r13, r1, r6, r12)
                if (r13 != r0) goto L42
            L40:
                r9 = r12
                goto L84
            L42:
                com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r13 = r12.this$0
                com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.access$checkCanInitialize(r13)
                com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r13 = r12.this$0
                com.unity3d.ads.core.domain.GetInitializationRequest r13 = com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.access$getGetInitializeRequest$p(r13)
                r12.label = r4
                java.lang.Object r13 = r13.invoke(r12)
                if (r13 != r0) goto L56
                goto L40
            L56:
                r6 = r13
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest r6 = (gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest) r6
                com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r13 = r12.this$0
                com.unity3d.ads.core.domain.GetRequestPolicy r13 = com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.access$getGetRequestPolicy$p(r13)
                com.unity3d.ads.gatewayclient.RequestPolicy r7 = r13.invoke()
                com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r13 = r12.this$0
                com.unity3d.ads.gatewayclient.GatewayClient r4 = com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.access$getGatewayClient$p(r13)
                com.unity3d.ads.core.data.model.OperationType r8 = com.unity3d.ads.core.data.model.OperationType.INITIALIZATION
                r12.label = r3
                r5 = 0
                r10 = 1
                r11 = 0
                r9 = r12
                java.lang.Object r13 = com.unity3d.ads.gatewayclient.GatewayClient.DefaultImpls.request$default(r4, r5, r6, r7, r8, r9, r10, r11)
                if (r13 != r0) goto L78
                goto L84
            L78:
                gatewayprotocol.v1.UniversalResponseOuterClass$UniversalResponse r13 = (gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse) r13
                com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r1 = r9.this$0
                r9.label = r2
                java.lang.Object r13 = com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.access$handleResponse(r1, r13, r12)
                if (r13 != r0) goto L85
            L84:
                return r0
            L85:
                kotlin.Unit r13 = kotlin.Unit.INSTANCE
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidInitializeBoldSDK$invoke$2(AndroidInitializeBoldSDK androidInitializeBoldSDK, String str, Continuation<? super AndroidInitializeBoldSDK$invoke$2> continuation) {
        super(2, continuation);
        this.this$0 = androidInitializeBoldSDK;
        this.$source = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new AndroidInitializeBoldSDK$invoke$2(this.this$0, this.$source, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0052, code lost:
        if (kotlinx.coroutines.TimeoutKt.withTimeout(com.unity3d.services.UnityAdsConstants.Timeout.INIT_TIMEOUT_MS, r7, r11) == r0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0066, code lost:
        if (r12 == r0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0068, code lost:
        return r0;
     */
    /* JADX WARN: Type inference failed for: r5v4, types: [kotlin.time.TimeSource$Monotonic$ValueTimeMark, long, kotlin.time.TimeMark] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.label
            r2 = 2
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L25
            if (r1 == r4) goto L1b
            if (r1 != r2) goto L13
            kotlin.ResultKt.throwOnFailure(r12)
            goto L69
        L13:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L1b:
            int r1 = r11.I$0
            long r5 = r11.J$0
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Exception -> L23
            goto L55
        L23:
            r12 = move-exception
            goto L6c
        L25:
            kotlin.ResultKt.throwOnFailure(r12)
            kotlin.time.TimeSource$Monotonic r12 = kotlin.time.TimeSource.Monotonic.INSTANCE
            long r5 = r12.m1874markNowz9LOYto()
            com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r12 = r11.this$0
            com.unity3d.ads.core.data.repository.SessionRepository r12 = com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.access$getSessionRepository$p(r12)
            boolean r12 = r12.isFirstInitAttempt()
            r1 = r12 ^ 1
            com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2$1 r7 = new com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2$1     // Catch: java.lang.Exception -> L23
            com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r8 = r11.this$0     // Catch: java.lang.Exception -> L23
            java.lang.String r9 = r11.$source     // Catch: java.lang.Exception -> L23
            r12 = r12 ^ r4
            r10 = 0
            r7.<init>(r8, r9, r12, r10)     // Catch: java.lang.Exception -> L23
            r11.J$0 = r5     // Catch: java.lang.Exception -> L23
            r11.I$0 = r1     // Catch: java.lang.Exception -> L23
            r11.label = r4     // Catch: java.lang.Exception -> L23
            r8 = 120000(0x1d4c0, double:5.9288E-319)
            java.lang.Object r12 = kotlinx.coroutines.TimeoutKt.withTimeout(r8, r7, r11)     // Catch: java.lang.Exception -> L23
            if (r12 != r0) goto L55
            goto L68
        L55:
            com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r12 = r11.this$0
            kotlin.time.TimeSource$Monotonic$ValueTimeMark r5 = kotlin.time.TimeSource.Monotonic.ValueTimeMark.m1875boximpl(r5)
            java.lang.String r6 = r11.$source
            if (r1 == 0) goto L60
            r3 = r4
        L60:
            r11.label = r2
            java.lang.Object r12 = com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.access$initializationSuccess(r12, r5, r6, r3, r11)
            if (r12 != r0) goto L69
        L68:
            return r0
        L69:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        L6c:
            com.unity3d.ads.core.data.model.exception.InitializationException$Companion r0 = com.unity3d.ads.core.data.model.exception.InitializationException.Companion
            com.unity3d.ads.core.data.model.exception.InitializationException r0 = r0.parseFrom(r12)
            boolean r12 = r12 instanceof com.unity3d.ads.core.data.model.exception.GatewayException
            if (r12 == 0) goto L7f
            com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r12 = r11.this$0
            com.unity3d.ads.core.data.repository.SessionRepository r12 = com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.access$getSessionRepository$p(r12)
            r12.setShouldInitialize(r3)
        L7f:
            com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r12 = r11.this$0
            kotlin.time.TimeSource$Monotonic$ValueTimeMark r2 = kotlin.time.TimeSource.Monotonic.ValueTimeMark.m1875boximpl(r5)
            java.lang.String r5 = r11.$source
            if (r1 == 0) goto L8a
            r3 = r4
        L8a:
            com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.access$initializationFailure(r12, r2, r0, r5, r3)
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((AndroidInitializeBoldSDK$invoke$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
