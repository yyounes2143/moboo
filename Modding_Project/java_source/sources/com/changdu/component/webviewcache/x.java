package com.changdu.component.webviewcache;

import java.util.HashMap;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class x extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public int f5438a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ CDJsInterface c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(boolean z, CDJsInterface cDJsInterface, Continuation continuation) {
        super(2, continuation);
        this.b = z;
        this.c = cDJsInterface;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new x(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new x(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object responseToWebView;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.f5438a;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            HashMap hashMap = new HashMap();
            hashMap.put("nativeVisible", Boxing.boxBoolean(this.b));
            CDJsInterfaceParamsData cDJsInterfaceParamsData = new CDJsInterfaceParamsData("notifyNativeVisible", null, null, 6, null);
            cDJsInterfaceParamsData.setRespData(hashMap);
            CDJsInterface cDJsInterface = this.c;
            this.f5438a = 1;
            responseToWebView = cDJsInterface.responseToWebView(cDJsInterfaceParamsData, this);
            if (responseToWebView == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
