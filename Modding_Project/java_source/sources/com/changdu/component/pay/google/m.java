package com.changdu.component.pay.google;

import com.changdu.component.pay.base.model.LocalPurchaseItem;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class m extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public Ref.ObjectRef f5362a;
    public Iterator b;
    public Object c;
    public String d;
    public LocalPurchaseItem e;
    public int f;
    public final /* synthetic */ List g;
    public final /* synthetic */ x h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(List list, x xVar, Continuation continuation) {
        super(2, continuation);
        this.g = list;
        this.h = xVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new m(this.g, this.h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new m(this.g, this.h, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f3, code lost:
        if (r14.element != 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00f5, code lost:
        r14.element = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f7, code lost:
        r0 = kotlin.Result.Companion;
        r0 = com.changdu.component.pay.google.I.f5351a;
        r0 = r1.getCdOrderId();
        r2 = r1.getCdCallbackUrl();
        r2 = r1.getItemId();
        r3 = r1.getSkuType();
        r26.f5362a = r14;
        r26.b = r13;
        r26.c = r4;
        r26.d = r15;
        r26.e = r1;
        r26.f = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0120, code lost:
        r0 = com.changdu.component.pay.google.I.a(r0, r2, r2, r3, r4, r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0124, code lost:
        if (r0 != r6) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0128, code lost:
        r3 = r4;
        r4 = r13;
        r13 = r14;
        r2 = r15;
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0132, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0133, code lost:
        r3 = r4;
        r4 = r13;
        r13 = r14;
        r2 = r15;
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x013a, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x013b, code lost:
        r3 = r4;
        r4 = r13;
        r13 = r14;
        r2 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0223, code lost:
        if (kotlinx.coroutines.BuildersKt.withContext(r0, r1, r26) == r6) goto L65;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0158 A[Catch: all -> 0x004a, TryCatch #2 {all -> 0x004a, blocks: (B:60:0x014c, B:62:0x0158, B:65:0x016c, B:71:0x018f, B:72:0x0197, B:66:0x0173, B:69:0x0187, B:15:0x0043, B:20:0x005a), top: B:89:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0173 A[Catch: all -> 0x004a, TryCatch #2 {all -> 0x004a, blocks: (B:60:0x014c, B:62:0x0158, B:65:0x016c, B:71:0x018f, B:72:0x0197, B:66:0x0173, B:69:0x0187, B:15:0x0043, B:20:0x005a), top: B:89:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x018f A[Catch: all -> 0x004a, TryCatch #2 {all -> 0x004a, blocks: (B:60:0x014c, B:62:0x0158, B:65:0x016c, B:71:0x018f, B:72:0x0197, B:66:0x0173, B:69:0x0187, B:15:0x0043, B:20:0x005a), top: B:89:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x020c A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v10, types: [com.android.billingclient.api.Purchase, T, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x01fc -> B:13:0x0033). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r27) {
        /*
            Method dump skipped, instructions count: 553
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.google.m.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
