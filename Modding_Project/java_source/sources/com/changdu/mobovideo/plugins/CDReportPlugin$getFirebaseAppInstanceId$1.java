package com.changdu.mobovideo.plugins;

import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.plugins.CDReportPlugin$getFirebaseAppInstanceId$1", f = "CDReportPlugin.kt", i = {0}, l = {394, 400}, m = "invokeSuspend", n = {"task"}, s = {"L$0"})
/* loaded from: classes3.dex */
public final class CDReportPlugin$getFirebaseAppInstanceId$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MethodChannel.Result $result;
    Object L$0;
    int label;
    final /* synthetic */ CDReportPlugin this$0;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.changdu.mobovideo.plugins.CDReportPlugin$getFirebaseAppInstanceId$1$1", f = "CDReportPlugin.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.changdu.mobovideo.plugins.CDReportPlugin$getFirebaseAppInstanceId$1$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ MethodChannel.Result $result;
        int label;
        final /* synthetic */ CDReportPlugin this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MethodChannel.Result result, CDReportPlugin cDReportPlugin, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$result = result;
            this.this$0 = cDReportPlugin;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$result, this.this$0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String str;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                try {
                    MethodChannel.Result result = this.$result;
                    str = this.this$0.f5608Wwwwwwwwwwwwwwwwwwww;
                    result.success(str);
                } catch (Throwable unused) {
                }
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
    public CDReportPlugin$getFirebaseAppInstanceId$1(CDReportPlugin cDReportPlugin, MethodChannel.Result result, Continuation<? super CDReportPlugin$getFirebaseAppInstanceId$1> continuation) {
        super(2, continuation);
        this.this$0 = cDReportPlugin;
        this.$result = result;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CDReportPlugin$getFirebaseAppInstanceId$1(this.this$0, this.$result, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0074, code lost:
        if (kotlinx.coroutines.BuildersKt.withContext(r7, r1, r6) == r0) goto L25;
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
            if (r1 == 0) goto L22
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r7)
            goto L77
        L12:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1a:
            java.lang.Object r1 = r6.L$0
            com.google.android.gms.tasks.Task r1 = (com.google.android.gms.tasks.Task) r1
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L5e
            goto L3e
        L22:
            kotlin.ResultKt.throwOnFailure(r7)
            com.changdu.mobovideo.VideoApplication$Companion r7 = com.changdu.mobovideo.VideoApplication.Companion     // Catch: java.lang.Throwable -> L5e
            com.changdu.mobovideo.VideoApplication r7 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L5e
            com.google.firebase.analytics.FirebaseAnalytics r7 = com.google.firebase.analytics.FirebaseAnalytics.getInstance(r7)     // Catch: java.lang.Throwable -> L5e
            com.google.android.gms.tasks.Task r1 = r7.getAppInstanceId()     // Catch: java.lang.Throwable -> L5e
            r6.L$0 = r1     // Catch: java.lang.Throwable -> L5e
            r6.label = r3     // Catch: java.lang.Throwable -> L5e
            java.lang.Object r7 = kotlinx.coroutines.tasks.TasksKt.await(r1, r6)     // Catch: java.lang.Throwable -> L5e
            if (r7 != r0) goto L3e
            goto L76
        L3e:
            boolean r7 = r1.isSuccessful()     // Catch: java.lang.Throwable -> L5e
            if (r7 == 0) goto L5e
            java.lang.Object r7 = r1.getResult()     // Catch: java.lang.Throwable -> L5e
            java.lang.CharSequence r7 = (java.lang.CharSequence) r7     // Catch: java.lang.Throwable -> L5e
            if (r7 == 0) goto L5e
            boolean r7 = kotlin.text.StringsKt.isBlank(r7)     // Catch: java.lang.Throwable -> L5e
            if (r7 == 0) goto L53
            goto L5e
        L53:
            com.changdu.mobovideo.plugins.CDReportPlugin r7 = r6.this$0     // Catch: java.lang.Throwable -> L5e
            java.lang.Object r1 = r1.getResult()     // Catch: java.lang.Throwable -> L5e
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L5e
            com.changdu.mobovideo.plugins.CDReportPlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r7, r1)     // Catch: java.lang.Throwable -> L5e
        L5e:
            kotlinx.coroutines.MainCoroutineDispatcher r7 = kotlinx.coroutines.Dispatchers.getMain()
            com.changdu.mobovideo.plugins.CDReportPlugin$getFirebaseAppInstanceId$1$1 r1 = new com.changdu.mobovideo.plugins.CDReportPlugin$getFirebaseAppInstanceId$1$1
            io.flutter.plugin.common.MethodChannel$Result r3 = r6.$result
            com.changdu.mobovideo.plugins.CDReportPlugin r4 = r6.this$0
            r5 = 0
            r1.<init>(r3, r4, r5)
            r6.L$0 = r5
            r6.label = r2
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r7, r1, r6)
            if (r7 != r0) goto L77
        L76:
            return r0
        L77:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.plugins.CDReportPlugin$getFirebaseAppInstanceId$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CDReportPlugin$getFirebaseAppInstanceId$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
