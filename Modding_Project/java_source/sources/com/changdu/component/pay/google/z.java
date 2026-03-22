package com.changdu.component.pay.google;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class z extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public String f5375a;
    public int b;
    public int c;
    public final /* synthetic */ String d;
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(String str, String str2, String str3, String str4, Continuation continuation) {
        super(2, continuation);
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.g = str4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new z(this.d, this.e, this.f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((z) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:27|28|29|30|31|32|33|24|25) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x012d, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x012f, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0193, code lost:
        if (kotlinx.coroutines.DelayKt.delay(500, r25) == r2) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b0 A[Catch: Exception -> 0x003c, TRY_ENTER, TryCatch #2 {Exception -> 0x003c, blocks: (B:22:0x00b0, B:25:0x00c8, B:27:0x00d2, B:29:0x00d7, B:11:0x0035), top: B:50:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d2 A[Catch: Exception -> 0x003c, TryCatch #2 {Exception -> 0x003c, blocks: (B:22:0x00b0, B:25:0x00c8, B:27:0x00d2, B:29:0x00d7, B:11:0x0035), top: B:50:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d7 A[Catch: Exception -> 0x003c, TRY_LEAVE, TryCatch #2 {Exception -> 0x003c, blocks: (B:22:0x00b0, B:25:0x00c8, B:27:0x00d2, B:29:0x00d7, B:11:0x0035), top: B:50:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01a0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x0193 -> B:7:0x0026). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r26) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.google.z.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
