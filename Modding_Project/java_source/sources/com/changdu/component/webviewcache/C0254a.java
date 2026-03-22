package com.changdu.component.webviewcache;

import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* renamed from: com.changdu.component.webviewcache.a  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0254a extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CDJsInterface f5385a;
    public final /* synthetic */ String b;
    public final /* synthetic */ Map c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0254a(CDJsInterface cDJsInterface, String str, Map map, Continuation continuation) {
        super(2, continuation);
        this.f5385a = cDJsInterface;
        this.b = str;
        this.c = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0254a(this.f5385a, this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0254a) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CDWebView cDWebView;
        CDWebViewJsBridgeListener cdJsBridgeListener;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        cDWebView = this.f5385a.f5379a;
        if (cDWebView != null && (cdJsBridgeListener = cDWebView.getCdJsBridgeListener()) != null) {
            cdJsBridgeListener.firebaseDataReport(this.b, this.c);
            return Unit.INSTANCE;
        }
        return null;
    }
}
