package com.changdu.component.webviewcache;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class y extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public int f5439a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ CDJsInterface c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(boolean z, CDJsInterface cDJsInterface, Continuation continuation) {
        super(2, continuation);
        this.b = z;
        this.c = cDJsInterface;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new y(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new y(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.f5439a;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                CoroutineDispatcher io2 = Dispatchers.getIO();
                x xVar = new x(this.b, this.c, null);
                this.f5439a = 1;
                if (BuildersKt.withContext(io2, xVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } catch (Exception unused) {
        }
        return Unit.INSTANCE;
    }
}
