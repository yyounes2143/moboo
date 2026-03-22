package com.changdu.component.webviewcache;

import com.applovin.impl.sdk.utils.JsonUtils;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class D extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CDJsInterfaceParamsData f5382a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public D(CDJsInterfaceParamsData cDJsInterfaceParamsData, Continuation continuation) {
        super(2, continuation);
        this.f5382a = cDJsInterfaceParamsData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new D(this.f5382a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new D(this.f5382a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        CDJsInterfaceParamsData cDJsInterfaceParamsData = this.f5382a;
        if (cDJsInterfaceParamsData == null) {
            return JsonUtils.EMPTY_JSON;
        }
        cDJsInterfaceParamsData.clearParams();
        return this.f5382a.toJsonStr();
    }
}
