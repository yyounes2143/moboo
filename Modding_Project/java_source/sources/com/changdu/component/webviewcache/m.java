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
public final class m extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CDWebViewJsBridgeListener f5425a;
    public final /* synthetic */ JSONObject b;
    public final /* synthetic */ String c;
    public final /* synthetic */ int d;
    public final /* synthetic */ int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(CDWebViewJsBridgeListener cDWebViewJsBridgeListener, JSONObject jSONObject, String str, int i, int i2, Continuation continuation) {
        super(2, continuation);
        this.f5425a = cDWebViewJsBridgeListener;
        this.b = jSONObject;
        this.c = str;
        this.d = i;
        this.e = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new m(this.f5425a, this.b, this.c, this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((m) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        this.f5425a.readBook(this.b, this.c, this.d, this.e);
        return Unit.INSTANCE;
    }
}
