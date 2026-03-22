package com.changdu.component.pay.google;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class t extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public int f5369a;
    public final /* synthetic */ x b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(x xVar, Continuation continuation) {
        super(2, continuation);
        this.b = xVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new t(this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new t(this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004d, code lost:
        if (r10 == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a1, code lost:
        if (r10 == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00bb, code lost:
        if (r10 != r0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x010e, code lost:
        if (r10 == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0110, code lost:
        return r0;
     */
    /* JADX WARN: Type inference failed for: r4v2, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v2, types: [T, java.lang.String] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.google.t.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
