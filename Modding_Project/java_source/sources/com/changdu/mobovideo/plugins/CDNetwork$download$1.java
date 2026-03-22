package com.changdu.mobovideo.plugins;

import io.flutter.plugin.common.MethodCall;
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
@DebugMetadata(c = "com.changdu.mobovideo.plugins.CDNetwork$download$1", f = "CDNetwork.kt", i = {}, l = {86, 87}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CDNetwork$download$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MethodCall $call;
    final /* synthetic */ MethodChannel.Result $result;
    int label;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.changdu.mobovideo.plugins.CDNetwork$download$1$1", f = "CDNetwork.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.changdu.mobovideo.plugins.CDNetwork$download$1$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $isSucceeded;
        final /* synthetic */ MethodChannel.Result $result;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MethodChannel.Result result, boolean z, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$result = result;
            this.$isSucceeded = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$result, this.$isSucceeded, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                this.$result.success(Boxing.boxBoolean(this.$isSucceeded));
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
    public CDNetwork$download$1(MethodCall methodCall, MethodChannel.Result result, Continuation<? super CDNetwork$download$1> continuation) {
        super(2, continuation);
        this.$call = methodCall;
        this.$result = result;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CDNetwork$download$1(this.$call, this.$result, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006a, code lost:
        if (kotlinx.coroutines.BuildersKt.withContext(r1, r3, r6) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L20
            if (r1 == r3) goto L1c
            if (r1 != r2) goto L14
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L12
            goto L7b
        L12:
            r7 = move-exception
            goto L6d
        L14:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1c:
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L12
            goto L52
        L20:
            kotlin.ResultKt.throwOnFailure(r7)
            io.flutter.plugin.common.MethodCall r7 = r6.$call     // Catch: java.lang.Exception -> L12
            java.lang.String r1 = "url"
            java.lang.Object r7 = r7.argument(r1)     // Catch: java.lang.Exception -> L12
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Exception -> L12
            io.flutter.plugin.common.MethodCall r1 = r6.$call     // Catch: java.lang.Exception -> L12
            java.lang.String r4 = "headers"
            java.lang.Object r1 = r1.argument(r4)     // Catch: java.lang.Exception -> L12
            java.util.Map r1 = (java.util.Map) r1     // Catch: java.lang.Exception -> L12
            if (r1 != 0) goto L3d
            java.util.Map r1 = kotlin.collections.MapsKt.emptyMap()     // Catch: java.lang.Exception -> L12
        L3d:
            io.flutter.plugin.common.MethodCall r4 = r6.$call     // Catch: java.lang.Exception -> L12
            java.lang.String r5 = "savedFilePath"
            java.lang.Object r4 = r4.argument(r5)     // Catch: java.lang.Exception -> L12
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Exception -> L12
            com.changdu.mobovideo.net.VideoHttpClient r5 = com.changdu.mobovideo.net.VideoHttpClient.INSTANCE     // Catch: java.lang.Exception -> L12
            r6.label = r3     // Catch: java.lang.Exception -> L12
            java.lang.Object r7 = r5.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(r7, r4, r1, r6)     // Catch: java.lang.Exception -> L12
            if (r7 != r0) goto L52
            goto L6c
        L52:
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Exception -> L12
            boolean r7 = r7.booleanValue()     // Catch: java.lang.Exception -> L12
            kotlinx.coroutines.CoroutineDispatcher r1 = kotlinx.coroutines.Dispatchers.getIO()     // Catch: java.lang.Exception -> L12
            com.changdu.mobovideo.plugins.CDNetwork$download$1$1 r3 = new com.changdu.mobovideo.plugins.CDNetwork$download$1$1     // Catch: java.lang.Exception -> L12
            io.flutter.plugin.common.MethodChannel$Result r4 = r6.$result     // Catch: java.lang.Exception -> L12
            r5 = 0
            r3.<init>(r4, r7, r5)     // Catch: java.lang.Exception -> L12
            r6.label = r2     // Catch: java.lang.Exception -> L12
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r1, r3, r6)     // Catch: java.lang.Exception -> L12
            if (r7 != r0) goto L7b
        L6c:
            return r0
        L6d:
            r7.printStackTrace()
            io.flutter.plugin.common.MethodChannel$Result r0 = r6.$result
            java.lang.String r7 = r7.toString()
            java.lang.String r1 = ""
            r0.error(r7, r1, r1)
        L7b:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.plugins.CDNetwork$download$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CDNetwork$download$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
