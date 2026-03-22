package com.changdu.component.webviewcache;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class z extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public int f5440a;
    public final /* synthetic */ CDJsInterface b;
    public final /* synthetic */ String c;
    public final /* synthetic */ CDJsInterfaceParamsData d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(CDJsInterface cDJsInterface, String str, CDJsInterfaceParamsData cDJsInterfaceParamsData, Continuation continuation) {
        super(2, continuation);
        this.b = cDJsInterface;
        this.c = str;
        this.d = cDJsInterfaceParamsData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new z(this.b, this.c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((z) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object handleReceivedRequest;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.f5440a;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                CDJsInterface cDJsInterface = this.b;
                String str = this.c;
                CDJsInterfaceParamsData cDJsInterfaceParamsData = this.d;
                Result.Companion companion = Result.Companion;
                this.f5440a = 1;
                handleReceivedRequest = cDJsInterface.handleReceivedRequest(str, cDJsInterfaceParamsData, this);
                if (handleReceivedRequest == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            Result.m438constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m438constructorimpl(ResultKt.createFailure(th));
        }
        return Unit.INSTANCE;
    }
}
