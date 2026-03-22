package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.data.repository.DiagnosticEventRepository;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.domain.events.DiagnosticEventObserver$invoke$2", f = "DiagnosticEventObserver.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nDiagnosticEventObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiagnosticEventObserver.kt\ncom/unity3d/ads/core/domain/events/DiagnosticEventObserver$invoke$2\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,52:1\n214#2,5:53\n*S KotlinDebug\n*F\n+ 1 DiagnosticEventObserver.kt\ncom/unity3d/ads/core/domain/events/DiagnosticEventObserver$invoke$2\n*L\n36#1:53,5\n*E\n"})
/* loaded from: classes6.dex */
public final class DiagnosticEventObserver$invoke$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ DiagnosticEventObserver this$0;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"}, d2 = {"<anonymous>", "", "currentDiagnosticEventRequest", "", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.events.DiagnosticEventObserver$invoke$2$2", f = "DiagnosticEventObserver.kt", i = {1}, l = {42, 45}, m = "invokeSuspend", n = {"workId"}, s = {"L$0"})
    @SourceDebugExtension({"SMAP\nDiagnosticEventObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiagnosticEventObserver.kt\ncom/unity3d/ads/core/domain/events/DiagnosticEventObserver$invoke$2$2\n+ 2 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 BackgroundWorker.kt\ncom/unity3d/ads/core/domain/work/BackgroundWorker\n+ 5 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n*L\n1#1,52:1\n484#2:53\n1#3:54\n20#4,4:55\n24#4,6:60\n29#5:59\n*S KotlinDebug\n*F\n+ 1 DiagnosticEventObserver.kt\ncom/unity3d/ads/core/domain/events/DiagnosticEventObserver$invoke$2$2\n*L\n39#1:53\n39#1:54\n48#1:55,4\n48#1:60,6\n48#1:59\n*E\n"})
    /* renamed from: com.unity3d.ads.core.domain.events.DiagnosticEventObserver$invoke$2$2  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<List<? extends DiagnosticEventRequestOuterClass.DiagnosticEvent>, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ DiagnosticEventObserver this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(DiagnosticEventObserver diagnosticEventObserver, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = diagnosticEventObserver;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(List<? extends DiagnosticEventRequestOuterClass.DiagnosticEvent> list, Continuation<? super Unit> continuation) {
            return invoke2((List<DiagnosticEventRequestOuterClass.DiagnosticEvent>) list, continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0052, code lost:
            if (r7 == r0) goto L14;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L22
                if (r1 == r3) goto L1e
                if (r1 != r2) goto L16
                java.lang.Object r0 = r6.L$0
                java.lang.String r0 = (java.lang.String) r0
                kotlin.ResultKt.throwOnFailure(r7)
                goto L79
            L16:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1e:
                kotlin.ResultKt.throwOnFailure(r7)
                goto L55
            L22:
                kotlin.ResultKt.throwOnFailure(r7)
                java.lang.Object r7 = r6.L$0
                java.util.List r7 = (java.util.List) r7
                gatewayprotocol.v1.UniversalRequestKt r1 = gatewayprotocol.v1.UniversalRequestKt.INSTANCE
                com.unity3d.ads.core.domain.events.DiagnosticEventObserver r1 = r6.this$0
                gatewayprotocol.v1.UniversalRequestKt$PayloadKt$Dsl$Companion r4 = gatewayprotocol.v1.UniversalRequestKt.PayloadKt.Dsl.Companion
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Payload$Builder r5 = gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest.Payload.newBuilder()
                gatewayprotocol.v1.UniversalRequestKt$PayloadKt$Dsl r4 = r4._create(r5)
                com.unity3d.ads.core.domain.events.GetDiagnosticEventBatchRequest r1 = com.unity3d.ads.core.domain.events.DiagnosticEventObserver.access$getGetDiagnosticEventBatchRequest$p(r1)
                gatewayprotocol.v1.DiagnosticEventRequestOuterClass$DiagnosticEventRequest r7 = r1.invoke(r7)
                r4.setDiagnosticEventRequest(r7)
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Payload r7 = r4._build()
                com.unity3d.ads.core.domain.events.DiagnosticEventObserver r1 = r6.this$0
                com.unity3d.ads.core.domain.GetUniversalRequestForPayLoad r1 = com.unity3d.ads.core.domain.events.DiagnosticEventObserver.access$getGetUniversalRequestForPayLoad$p(r1)
                r6.label = r3
                java.lang.Object r7 = r1.invoke(r7, r6)
                if (r7 != r0) goto L55
                goto L77
            L55:
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest r7 = (gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest) r7
                java.util.UUID r1 = java.util.UUID.randomUUID()
                java.lang.String r1 = r1.toString()
                com.unity3d.ads.core.domain.events.DiagnosticEventObserver r3 = r6.this$0
                com.unity3d.ads.core.data.datasource.UniversalRequestDataSource r3 = com.unity3d.ads.core.domain.events.DiagnosticEventObserver.access$getUniversalRequestDataSource$p(r3)
                byte[] r7 = r7.toByteArray()
                com.google.protobuf.ByteString r7 = com.google.protobuf.kotlin.ByteStringsKt.toByteString(r7)
                r6.L$0 = r1
                r6.label = r2
                java.lang.Object r7 = r3.set(r1, r7, r6)
                if (r7 != r0) goto L78
            L77:
                return r0
            L78:
                r0 = r1
            L79:
                com.unity3d.ads.core.domain.work.UniversalRequestWorkerData r7 = new com.unity3d.ads.core.domain.work.UniversalRequestWorkerData
                r7.<init>(r0)
                com.unity3d.ads.core.domain.events.DiagnosticEventObserver r0 = r6.this$0
                com.unity3d.ads.core.domain.work.BackgroundWorker r0 = com.unity3d.ads.core.domain.events.DiagnosticEventObserver.access$getBackgroundWorker$p(r0)
                androidx.work.Constraints$Builder r1 = new androidx.work.Constraints$Builder
                r1.<init>()
                androidx.work.NetworkType r2 = androidx.work.NetworkType.CONNECTED
                androidx.work.Constraints$Builder r1 = r1.setRequiredNetworkType(r2)
                androidx.work.Constraints r1 = r1.build()
                androidx.work.OneTimeWorkRequest$Builder r2 = new androidx.work.OneTimeWorkRequest$Builder
                java.lang.Class<com.unity3d.ads.core.domain.work.DiagnosticEventJob> r3 = com.unity3d.ads.core.domain.work.DiagnosticEventJob.class
                r2.<init>(r3)
                androidx.work.WorkRequest$Builder r1 = r2.setConstraints(r1)
                androidx.work.OneTimeWorkRequest$Builder r1 = (androidx.work.OneTimeWorkRequest.Builder) r1
                androidx.work.Data r7 = r7.invoke()
                androidx.work.WorkRequest$Builder r7 = r1.setInputData(r7)
                androidx.work.OneTimeWorkRequest$Builder r7 = (androidx.work.OneTimeWorkRequest.Builder) r7
                java.lang.String r1 = "UnityAdsBackgroundWorker"
                androidx.work.WorkRequest$Builder r7 = r7.addTag(r1)
                androidx.work.OneTimeWorkRequest$Builder r7 = (androidx.work.OneTimeWorkRequest.Builder) r7
                androidx.work.WorkRequest r7 = r7.build()
                androidx.work.OneTimeWorkRequest r7 = (androidx.work.OneTimeWorkRequest) r7
                androidx.work.WorkManager r0 = r0.getWorkManager()
                r0.enqueue(r7)
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.events.DiagnosticEventObserver$invoke$2.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Nullable
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@NotNull List<DiagnosticEventRequestOuterClass.DiagnosticEvent> list, @Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiagnosticEventObserver$invoke$2(DiagnosticEventObserver diagnosticEventObserver, Continuation<? super DiagnosticEventObserver$invoke$2> continuation) {
        super(2, continuation);
        this.this$0 = diagnosticEventObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new DiagnosticEventObserver$invoke$2(this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        MutableStateFlow mutableStateFlow;
        Object value;
        Boolean bool;
        DiagnosticEventRepository diagnosticEventRepository;
        CoroutineDispatcher coroutineDispatcher;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            mutableStateFlow = this.this$0.isRunning;
            do {
                value = mutableStateFlow.getValue();
                bool = (Boolean) value;
                bool.getClass();
            } while (!mutableStateFlow.compareAndSet(value, Boxing.boxBoolean(true)));
            if (!bool.booleanValue()) {
                diagnosticEventRepository = this.this$0.diagnosticEventRepository;
                Flow onEach = FlowKt.onEach(diagnosticEventRepository.getDiagnosticEvents(), new AnonymousClass2(this.this$0, null));
                coroutineDispatcher = this.this$0.defaultDispatcher;
                FlowKt.launchIn(onEach, CoroutineScopeKt.CoroutineScope(coroutineDispatcher));
                return Unit.INSTANCE;
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((DiagnosticEventObserver$invoke$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
