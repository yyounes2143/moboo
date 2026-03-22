package com.changdu.component.pay.google;

import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class D extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public String f5345a;
    public String b;
    public int c;
    public int d;
    public final /* synthetic */ List e;
    public final /* synthetic */ String f;
    public final /* synthetic */ Ref.ObjectRef g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public D(List list, String str, Ref.ObjectRef objectRef, Continuation continuation) {
        super(2, continuation);
        this.e = list;
        this.f = str;
        this.g = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new D(this.e, this.f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((D) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x01e4, code lost:
        if (kotlinx.coroutines.DelayKt.delay(500, r12) != r0) goto L6;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0195 A[Catch: Exception -> 0x01d6, TRY_ENTER, TryCatch #0 {Exception -> 0x01d6, blocks: (B:45:0x0195, B:48:0x01c2, B:50:0x01cc, B:10:0x0029), top: B:63:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01cc A[Catch: Exception -> 0x01d6, TRY_LEAVE, TryCatch #0 {Exception -> 0x01d6, blocks: (B:45:0x0195, B:48:0x01c2, B:50:0x01cc, B:10:0x0029), top: B:63:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01e9  */
    /* JADX WARN: Type inference failed for: r7v11, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v13, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v3, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v6, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v8, types: [T, java.lang.String] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x01e4 -> B:55:0x01e7). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.google.D.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
