package com.changdu.component.pay.google;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientKotlinKt;
import com.android.billingclient.api.QueryProductDetailsParams;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class p extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public int f5365a;
    public final /* synthetic */ x b;
    public final /* synthetic */ QueryProductDetailsParams c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(x xVar, QueryProductDetailsParams queryProductDetailsParams, Continuation continuation) {
        super(2, continuation);
        this.b = xVar;
        this.c = queryProductDetailsParams;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new p(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new p(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.f5365a;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        BillingClient billingClient = this.b.f5373a;
        QueryProductDetailsParams queryProductDetailsParams = this.c;
        this.f5365a = 1;
        Object Wwwwwwwwwwwwwwwwwwww2 = BillingClientKotlinKt.Wwwwwwwwwwwwwwwwwwww(billingClient, queryProductDetailsParams, this);
        if (Wwwwwwwwwwwwwwwwwwww2 == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Wwwwwwwwwwwwwwwwwwww2;
    }
}
