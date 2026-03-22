package com.changdu.component.webviewcache;

import java.util.HashMap;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class w extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public int f5437a;
    public final /* synthetic */ CDJsInterface b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(CDJsInterface cDJsInterface, Continuation continuation) {
        super(2, continuation);
        this.b = cDJsInterface;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new w(this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new w(this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object responseToWebView;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.f5437a;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                HashMap hashMap = new HashMap();
                CDJsInterfaceParamsData cDJsInterfaceParamsData = new CDJsInterfaceParamsData("updatePageAD", null, null, 6, null);
                cDJsInterfaceParamsData.setRespData(hashMap);
                CDJsInterface cDJsInterface = this.b;
                this.f5437a = 1;
                responseToWebView = cDJsInterface.responseToWebView(cDJsInterfaceParamsData, this);
                if (responseToWebView == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } catch (Exception unused) {
        }
        return Unit.INSTANCE;
    }
}
