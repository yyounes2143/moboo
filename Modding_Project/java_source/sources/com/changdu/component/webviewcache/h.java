package com.changdu.component.webviewcache;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class h extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public int f5401a;
    public final /* synthetic */ CDJsInterfaceParamsData b;
    public final /* synthetic */ CDJsInterface c;
    public final /* synthetic */ CDWebViewJsBridgeListener d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(CDJsInterfaceParamsData cDJsInterfaceParamsData, CDJsInterface cDJsInterface, CDWebViewJsBridgeListener cDWebViewJsBridgeListener, Continuation continuation) {
        super(2, continuation);
        this.b = cDJsInterfaceParamsData;
        this.c = cDJsInterface;
        this.d = cDWebViewJsBridgeListener;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new h(this.b, this.c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((h) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003f, code lost:
        if (r8 == r0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0065, code lost:
        if (r8 == r0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0067, code lost:
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.f5401a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r8)
            goto L68
        L12:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1a:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L42
        L1e:
            kotlin.ResultKt.throwOnFailure(r8)
            com.changdu.component.webviewcache.CDJsInterfaceParamsData r8 = r7.b
            org.json.JSONObject r8 = r8.getParamsJson()
            java.lang.String r1 = "visible"
            boolean r8 = r8.optBoolean(r1, r3)
            kotlinx.coroutines.MainCoroutineDispatcher r1 = kotlinx.coroutines.Dispatchers.getMain()
            com.changdu.component.webviewcache.g r4 = new com.changdu.component.webviewcache.g
            com.changdu.component.webviewcache.CDWebViewJsBridgeListener r5 = r7.d
            r6 = 0
            r4.<init>(r5, r8, r6)
            r7.f5401a = r3
            java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r1, r4, r7)
            if (r8 != r0) goto L42
            goto L67
        L42:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            java.util.HashMap r1 = new java.util.HashMap
            r1.<init>()
            java.lang.Boolean r8 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r8)
            java.lang.String r3 = "result"
            r1.put(r3, r8)
            com.changdu.component.webviewcache.CDJsInterfaceParamsData r8 = r7.b
            r8.setRespData(r1)
            com.changdu.component.webviewcache.CDJsInterface r8 = r7.c
            com.changdu.component.webviewcache.CDJsInterfaceParamsData r1 = r7.b
            r7.f5401a = r2
            java.lang.Object r8 = com.changdu.component.webviewcache.CDJsInterface.access$responseToWebView(r8, r1, r7)
            if (r8 != r0) goto L68
        L67:
            return r0
        L68:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.webviewcache.h.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
