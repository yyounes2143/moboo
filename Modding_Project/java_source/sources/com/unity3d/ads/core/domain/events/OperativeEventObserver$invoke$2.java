package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.data.repository.OperativeEventRepository;
import gatewayprotocol.v1.OperativeEventRequestOuterClass;
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
@DebugMetadata(c = "com.unity3d.ads.core.domain.events.OperativeEventObserver$invoke$2", f = "OperativeEventObserver.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nOperativeEventObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperativeEventObserver.kt\ncom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,49:1\n214#2,5:50\n*S KotlinDebug\n*F\n+ 1 OperativeEventObserver.kt\ncom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2\n*L\n35#1:50,5\n*E\n"})
/* loaded from: classes6.dex */
public final class OperativeEventObserver$invoke$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ OperativeEventObserver this$0;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "operativeEventRequest", "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.events.OperativeEventObserver$invoke$2$2", f = "OperativeEventObserver.kt", i = {1}, l = {40, 43}, m = "invokeSuspend", n = {"workId"}, s = {"L$0"})
    @SourceDebugExtension({"SMAP\nOperativeEventObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperativeEventObserver.kt\ncom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2\n+ 2 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 BackgroundWorker.kt\ncom/unity3d/ads/core/domain/work/BackgroundWorker\n+ 5 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n*L\n1#1,49:1\n484#2:50\n1#3:51\n20#4,4:52\n24#4,6:57\n29#5:56\n*S KotlinDebug\n*F\n+ 1 OperativeEventObserver.kt\ncom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2\n*L\n37#1:50\n37#1:51\n46#1:52,4\n46#1:57,6\n46#1:56\n*E\n"})
    /* renamed from: com.unity3d.ads.core.domain.events.OperativeEventObserver$invoke$2$2  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<OperativeEventRequestOuterClass.OperativeEventRequest, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ OperativeEventObserver this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(OperativeEventObserver operativeEventObserver, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = operativeEventObserver;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull OperativeEventRequestOuterClass.OperativeEventRequest operativeEventRequest, @Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(operativeEventRequest, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0048, code lost:
            if (r6 == r0) goto L14;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L22
                if (r1 == r3) goto L1e
                if (r1 != r2) goto L16
                java.lang.Object r0 = r5.L$0
                java.lang.String r0 = (java.lang.String) r0
                kotlin.ResultKt.throwOnFailure(r6)
                goto L6f
            L16:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1e:
                kotlin.ResultKt.throwOnFailure(r6)
                goto L4b
            L22:
                kotlin.ResultKt.throwOnFailure(r6)
                java.lang.Object r6 = r5.L$0
                gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventRequest r6 = (gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventRequest) r6
                gatewayprotocol.v1.UniversalRequestKt r1 = gatewayprotocol.v1.UniversalRequestKt.INSTANCE
                gatewayprotocol.v1.UniversalRequestKt$PayloadKt$Dsl$Companion r1 = gatewayprotocol.v1.UniversalRequestKt.PayloadKt.Dsl.Companion
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Payload$Builder r4 = gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest.Payload.newBuilder()
                gatewayprotocol.v1.UniversalRequestKt$PayloadKt$Dsl r1 = r1._create(r4)
                r1.setOperativeEvent(r6)
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Payload r6 = r1._build()
                com.unity3d.ads.core.domain.events.OperativeEventObserver r1 = r5.this$0
                com.unity3d.ads.core.domain.GetUniversalRequestForPayLoad r1 = com.unity3d.ads.core.domain.events.OperativeEventObserver.access$getGetUniversalRequestForPayLoad$p(r1)
                r5.label = r3
                java.lang.Object r6 = r1.invoke(r6, r5)
                if (r6 != r0) goto L4b
                goto L6d
            L4b:
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest r6 = (gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest) r6
                java.util.UUID r1 = java.util.UUID.randomUUID()
                java.lang.String r1 = r1.toString()
                com.unity3d.ads.core.domain.events.OperativeEventObserver r3 = r5.this$0
                com.unity3d.ads.core.data.datasource.UniversalRequestDataSource r3 = com.unity3d.ads.core.domain.events.OperativeEventObserver.access$getUniversalRequestDataSource$p(r3)
                byte[] r6 = r6.toByteArray()
                com.google.protobuf.ByteString r6 = com.google.protobuf.kotlin.ByteStringsKt.toByteString(r6)
                r5.L$0 = r1
                r5.label = r2
                java.lang.Object r6 = r3.set(r1, r6, r5)
                if (r6 != r0) goto L6e
            L6d:
                return r0
            L6e:
                r0 = r1
            L6f:
                com.unity3d.ads.core.domain.work.UniversalRequestWorkerData r6 = new com.unity3d.ads.core.domain.work.UniversalRequestWorkerData
                r6.<init>(r0)
                com.unity3d.ads.core.domain.events.OperativeEventObserver r0 = r5.this$0
                com.unity3d.ads.core.domain.work.BackgroundWorker r0 = com.unity3d.ads.core.domain.events.OperativeEventObserver.access$getBackgroundWorker$p(r0)
                androidx.work.Constraints$Builder r1 = new androidx.work.Constraints$Builder
                r1.<init>()
                androidx.work.NetworkType r2 = androidx.work.NetworkType.CONNECTED
                androidx.work.Constraints$Builder r1 = r1.setRequiredNetworkType(r2)
                androidx.work.Constraints r1 = r1.build()
                androidx.work.OneTimeWorkRequest$Builder r2 = new androidx.work.OneTimeWorkRequest$Builder
                java.lang.Class<com.unity3d.ads.core.domain.work.OperativeEventJob> r3 = com.unity3d.ads.core.domain.work.OperativeEventJob.class
                r2.<init>(r3)
                androidx.work.WorkRequest$Builder r1 = r2.setConstraints(r1)
                androidx.work.OneTimeWorkRequest$Builder r1 = (androidx.work.OneTimeWorkRequest.Builder) r1
                androidx.work.Data r6 = r6.invoke()
                androidx.work.WorkRequest$Builder r6 = r1.setInputData(r6)
                androidx.work.OneTimeWorkRequest$Builder r6 = (androidx.work.OneTimeWorkRequest.Builder) r6
                java.lang.String r1 = "UnityAdsBackgroundWorker"
                androidx.work.WorkRequest$Builder r6 = r6.addTag(r1)
                androidx.work.OneTimeWorkRequest$Builder r6 = (androidx.work.OneTimeWorkRequest.Builder) r6
                androidx.work.WorkRequest r6 = r6.build()
                androidx.work.OneTimeWorkRequest r6 = (androidx.work.OneTimeWorkRequest) r6
                androidx.work.WorkManager r0 = r0.getWorkManager()
                r0.enqueue(r6)
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.events.OperativeEventObserver$invoke$2.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OperativeEventObserver$invoke$2(OperativeEventObserver operativeEventObserver, Continuation<? super OperativeEventObserver$invoke$2> continuation) {
        super(2, continuation);
        this.this$0 = operativeEventObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new OperativeEventObserver$invoke$2(this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        MutableStateFlow mutableStateFlow;
        Object value;
        Boolean bool;
        OperativeEventRepository operativeEventRepository;
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
                operativeEventRepository = this.this$0.operativeEventRepository;
                Flow onEach = FlowKt.onEach(operativeEventRepository.getOperativeEvents(), new AnonymousClass2(this.this$0, null));
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
        return ((OperativeEventObserver$invoke$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
