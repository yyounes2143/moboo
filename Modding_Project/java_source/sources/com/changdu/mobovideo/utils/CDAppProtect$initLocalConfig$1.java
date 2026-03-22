package com.changdu.mobovideo.utils;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.utils.CDAppProtect$initLocalConfig$1", f = "CDAppProtect.kt", i = {}, l = {264}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CDAppProtect$initLocalConfig$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;

    public CDAppProtect$initLocalConfig$1(Continuation<? super CDAppProtect$initLocalConfig$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CDAppProtect$initLocalConfig$1(continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
        if (r4 == null) goto L21;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r4) {
        /*
            r3 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r3.label
            r2 = 1
            if (r1 == 0) goto L17
            if (r1 != r2) goto Lf
            kotlin.ResultKt.throwOnFailure(r4)     // Catch: java.lang.Exception -> L42
            goto L42
        Lf:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r0)
            throw r4
        L17:
            kotlin.ResultKt.throwOnFailure(r4)
            com.changdu.mobovideo.utils.AppBizDataManager r4 = com.changdu.mobovideo.utils.AppBizDataManager.INSTANCE     // Catch: java.lang.Exception -> L42
            com.changdu.mobovideo.utils.ALocalCache r4 = r4.Wwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Exception -> L42
            if (r4 == 0) goto L2e
            com.changdu.mobovideo.utils.CDAppProtect r1 = com.changdu.mobovideo.utils.CDAppProtect.INSTANCE     // Catch: java.lang.Exception -> L42
            java.lang.String r1 = com.changdu.mobovideo.utils.CDAppProtect.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1)     // Catch: java.lang.Exception -> L42
            java.lang.String r4 = r4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1)     // Catch: java.lang.Exception -> L42
            if (r4 != 0) goto L30
        L2e:
            java.lang.String r4 = ""
        L30:
            boolean r1 = kotlin.text.StringsKt.isBlank(r4)     // Catch: java.lang.Exception -> L42
            if (r1 != 0) goto L42
            com.changdu.mobovideo.utils.CDAppProtect r1 = com.changdu.mobovideo.utils.CDAppProtect.INSTANCE     // Catch: java.lang.Exception -> L42
            r3.label = r2     // Catch: java.lang.Exception -> L42
            r2 = 0
            java.lang.Object r4 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r4, r2, r3)     // Catch: java.lang.Exception -> L42
            if (r4 != r0) goto L42
            return r0
        L42:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.utils.CDAppProtect$initLocalConfig$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CDAppProtect$initLocalConfig$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
