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
/* renamed from: com.changdu.component.webviewcache.e  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0258e extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CDJsInterface f5398a;
    public final /* synthetic */ String b;
    public final /* synthetic */ JSONObject c;
    public final /* synthetic */ CDJsInterfaceParamsData d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0258e(CDJsInterface cDJsInterface, String str, JSONObject jSONObject, CDJsInterfaceParamsData cDJsInterfaceParamsData, Continuation continuation) {
        super(2, continuation);
        this.f5398a = cDJsInterface;
        this.b = str;
        this.c = jSONObject;
        this.d = cDJsInterfaceParamsData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0258e(this.f5398a, this.b, this.c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0258e) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CDWebView cDWebView;
        CDWebViewJsBridgeListener cdJsBridgeListener;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        cDWebView = this.f5398a.f5379a;
        if (cDWebView != null && (cdJsBridgeListener = cDWebView.getCdJsBridgeListener()) != null) {
            return cdJsBridgeListener.onReceiveJsBridgeRequest(this.b, this.c, this.d);
        }
        return null;
    }
}
