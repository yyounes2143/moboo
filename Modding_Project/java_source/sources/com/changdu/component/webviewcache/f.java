package com.changdu.component.webviewcache;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class f extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public int f5399a;
    public final /* synthetic */ CDJsInterfaceParamsData b;
    public final /* synthetic */ CDJsInterface c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(CDJsInterfaceParamsData cDJsInterfaceParamsData, CDJsInterface cDJsInterface, String str, Continuation continuation) {
        super(2, continuation);
        this.b = cDJsInterfaceParamsData;
        this.c = cDJsInterface;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new f(this.b, this.c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((f) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
        if (r11 == r0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005a, code lost:
        if (r11 == r0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005c, code lost:
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r10.f5399a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r11)
            goto L5d
        L12:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L1a:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L40
        L1e:
            kotlin.ResultKt.throwOnFailure(r11)
            com.changdu.component.webviewcache.CDJsInterfaceParamsData r11 = r10.b
            org.json.JSONObject r7 = r11.getParamsJson()
            kotlinx.coroutines.MainCoroutineDispatcher r11 = kotlinx.coroutines.Dispatchers.getMain()
            com.changdu.component.webviewcache.e r4 = new com.changdu.component.webviewcache.e
            com.changdu.component.webviewcache.CDJsInterface r5 = r10.c
            java.lang.String r6 = r10.d
            com.changdu.component.webviewcache.CDJsInterfaceParamsData r8 = r10.b
            r9 = 0
            r4.<init>(r5, r6, r7, r8, r9)
            r10.f5399a = r3
            java.lang.Object r11 = kotlinx.coroutines.BuildersKt.withContext(r11, r4, r10)
            if (r11 != r0) goto L40
            goto L5c
        L40:
            java.util.HashMap r11 = (java.util.HashMap) r11
            if (r11 == 0) goto L5d
            boolean r1 = r11.isEmpty()
            if (r1 == 0) goto L4b
            goto L5d
        L4b:
            com.changdu.component.webviewcache.CDJsInterfaceParamsData r1 = r10.b
            r1.setRespData(r11)
            com.changdu.component.webviewcache.CDJsInterface r11 = r10.c
            com.changdu.component.webviewcache.CDJsInterfaceParamsData r1 = r10.b
            r10.f5399a = r2
            java.lang.Object r11 = com.changdu.component.webviewcache.CDJsInterface.access$responseToWebView(r11, r1, r10)
            if (r11 != r0) goto L5d
        L5c:
            return r0
        L5d:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.webviewcache.f.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
