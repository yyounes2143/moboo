package com.changdu.component.webviewcache;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class i extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CDJsInterface f5402a;
    public final /* synthetic */ JSONObject b;
    public final /* synthetic */ String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(CDJsInterface cDJsInterface, JSONObject jSONObject, String str, Continuation continuation) {
        super(2, continuation);
        this.f5402a = cDJsInterface;
        this.b = jSONObject;
        this.c = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new i(this.f5402a, this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((i) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CDWebView cDWebView;
        CDWebViewJsBridgeListener cdJsBridgeListener;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        cDWebView = this.f5402a.f5379a;
        if (cDWebView != null && (cdJsBridgeListener = cDWebView.getCdJsBridgeListener()) != null) {
            cdJsBridgeListener.ndAction(this.b, this.c);
            return Unit.INSTANCE;
        }
        return null;
    }
}
