package com.changdu.component.pay.google;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* renamed from: com.changdu.component.pay.google.i  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0252i extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public int f5358a;
    public int b;
    public final /* synthetic */ x c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0252i(x xVar, Continuation continuation) {
        super(2, continuation);
        this.c = xVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0252i(this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new C0252i(this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0034 -> B:14:0x0037). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.b
            r2 = 1
            if (r1 == 0) goto L19
            if (r1 != r2) goto L11
            int r1 = r7.f5358a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L37
        L11:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L19:
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = 0
            r1 = r8
        L1e:
            r8 = 3
            if (r1 >= r8) goto L3e
            double r3 = (double) r1
            r5 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r3 = java.lang.Math.pow(r5, r3)
            long r3 = (long) r3
            r5 = 30000(0x7530, double:1.4822E-319)
            long r3 = r3 * r5
            r7.f5358a = r1
            r7.b = r2
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.delay(r3, r7)
            if (r8 != r0) goto L37
            return r0
        L37:
            int r1 = r1 + r2
            com.changdu.component.pay.google.x r8 = r7.c
            r8.a()
            goto L1e
        L3e:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.google.C0252i.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
