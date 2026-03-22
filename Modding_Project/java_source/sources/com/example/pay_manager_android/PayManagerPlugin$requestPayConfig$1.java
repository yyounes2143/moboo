package com.example.pay_manager_android;

import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.example.pay_manager_android.PayManagerPlugin$requestPayConfig$1", f = "PayManagerPlugin.kt", i = {}, l = {211, 212}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class PayManagerPlugin$requestPayConfig$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MethodChannel.Result $result;
    int label;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.example.pay_manager_android.PayManagerPlugin$requestPayConfig$1$1", f = "PayManagerPlugin.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.example.pay_manager_android.PayManagerPlugin$requestPayConfig$1$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ MethodChannel.Result $result;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MethodChannel.Result result, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$result = result;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$result, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                this.$result.success(Boxing.boxBoolean(true));
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PayManagerPlugin$requestPayConfig$1(MethodChannel.Result result, Continuation<? super PayManagerPlugin$requestPayConfig$1> continuation) {
        super(2, continuation);
        this.$result = result;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PayManagerPlugin$requestPayConfig$1(this.$result, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003e, code lost:
        if (kotlinx.coroutines.BuildersKt.withContext(r6, r1, r5) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Exception -> L41
            goto L4b
        L12:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1a:
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Exception -> L41
            goto L2c
        L1e:
            kotlin.ResultKt.throwOnFailure(r6)
            com.changdu.component.pay.base.CDPay r6 = com.changdu.component.pay.base.CDPay.INSTANCE     // Catch: java.lang.Exception -> L41
            r5.label = r3     // Catch: java.lang.Exception -> L41
            java.lang.Object r6 = r6.requestPayConfig(r5)     // Catch: java.lang.Exception -> L41
            if (r6 != r0) goto L2c
            goto L40
        L2c:
            kotlinx.coroutines.MainCoroutineDispatcher r6 = kotlinx.coroutines.Dispatchers.getMain()     // Catch: java.lang.Exception -> L41
            com.example.pay_manager_android.PayManagerPlugin$requestPayConfig$1$1 r1 = new com.example.pay_manager_android.PayManagerPlugin$requestPayConfig$1$1     // Catch: java.lang.Exception -> L41
            io.flutter.plugin.common.MethodChannel$Result r3 = r5.$result     // Catch: java.lang.Exception -> L41
            r4 = 0
            r1.<init>(r3, r4)     // Catch: java.lang.Exception -> L41
            r5.label = r2     // Catch: java.lang.Exception -> L41
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r6, r1, r5)     // Catch: java.lang.Exception -> L41
            if (r6 != r0) goto L4b
        L40:
            return r0
        L41:
            io.flutter.plugin.common.MethodChannel$Result r6 = r5.$result
            r0 = 0
            java.lang.Boolean r0 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r0)
            r6.success(r0)
        L4b:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.pay_manager_android.PayManagerPlugin$requestPayConfig$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PayManagerPlugin$requestPayConfig$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
