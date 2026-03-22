package com.changdu.component.pay.google;

import android.app.Activity;
import com.changdu.component.pay.base.model.PayCreateOrderResult;
import com.changdu.component.pay.base.model.PayRequestItem;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class q extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public String f5366a;
    public Object b;
    public String c;
    public String d;
    public int e;
    public int f;
    public final /* synthetic */ PayRequestItem g;
    public final /* synthetic */ x h;
    public final /* synthetic */ PayCreateOrderResult i;
    public final /* synthetic */ Activity j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(PayRequestItem payRequestItem, x xVar, PayCreateOrderResult payCreateOrderResult, Activity activity, Continuation continuation) {
        super(2, continuation);
        this.g = payRequestItem;
        this.h = xVar;
        this.i = payCreateOrderResult;
        this.j = activity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new q(this.g, this.h, this.i, this.j, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((q) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:134:0x0331, code lost:
        if (kotlinx.coroutines.BuildersKt.withContext(r1, r3, r25) == r2) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01f1, code lost:
        if (r1 == null) goto L128;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0244 A[Catch: Exception -> 0x0342, TryCatch #1 {Exception -> 0x0342, blocks: (B:7:0x001e, B:12:0x0035, B:93:0x021c, B:95:0x0228, B:97:0x022e, B:100:0x0235, B:101:0x023e, B:103:0x0244, B:104:0x0252, B:106:0x0258, B:110:0x0267, B:111:0x0278, B:114:0x0296, B:116:0x029c, B:118:0x02a2, B:122:0x02aa, B:124:0x02b0, B:125:0x02b6, B:128:0x02e5, B:130:0x0301, B:132:0x0309, B:133:0x0314, B:126:0x02d2, B:127:0x02dc, B:15:0x0049, B:35:0x00e8, B:37:0x00f4, B:39:0x00fa, B:42:0x0101, B:43:0x0105, B:45:0x010b, B:53:0x013a, B:55:0x0142, B:56:0x0145, B:58:0x0148, B:60:0x0184, B:61:0x0193, B:63:0x0199, B:67:0x01a3, B:70:0x01aa, B:71:0x01b3, B:73:0x01b9, B:75:0x01c9, B:77:0x01d3, B:81:0x01db, B:89:0x01f6, B:136:0x0334, B:138:0x033c, B:139:0x033f, B:48:0x011c, B:50:0x0126, B:19:0x0057, B:23:0x0062, B:31:0x00a1, B:29:0x0099, B:27:0x0091, B:25:0x006e), top: B:149:0x0016, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02dc A[Catch: Exception -> 0x0342, TryCatch #1 {Exception -> 0x0342, blocks: (B:7:0x001e, B:12:0x0035, B:93:0x021c, B:95:0x0228, B:97:0x022e, B:100:0x0235, B:101:0x023e, B:103:0x0244, B:104:0x0252, B:106:0x0258, B:110:0x0267, B:111:0x0278, B:114:0x0296, B:116:0x029c, B:118:0x02a2, B:122:0x02aa, B:124:0x02b0, B:125:0x02b6, B:128:0x02e5, B:130:0x0301, B:132:0x0309, B:133:0x0314, B:126:0x02d2, B:127:0x02dc, B:15:0x0049, B:35:0x00e8, B:37:0x00f4, B:39:0x00fa, B:42:0x0101, B:43:0x0105, B:45:0x010b, B:53:0x013a, B:55:0x0142, B:56:0x0145, B:58:0x0148, B:60:0x0184, B:61:0x0193, B:63:0x0199, B:67:0x01a3, B:70:0x01aa, B:71:0x01b3, B:73:0x01b9, B:75:0x01c9, B:77:0x01d3, B:81:0x01db, B:89:0x01f6, B:136:0x0334, B:138:0x033c, B:139:0x033f, B:48:0x011c, B:50:0x0126, B:19:0x0057, B:23:0x0062, B:31:0x00a1, B:29:0x0099, B:27:0x0091, B:25:0x006e), top: B:149:0x0016, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0301 A[Catch: Exception -> 0x0342, TryCatch #1 {Exception -> 0x0342, blocks: (B:7:0x001e, B:12:0x0035, B:93:0x021c, B:95:0x0228, B:97:0x022e, B:100:0x0235, B:101:0x023e, B:103:0x0244, B:104:0x0252, B:106:0x0258, B:110:0x0267, B:111:0x0278, B:114:0x0296, B:116:0x029c, B:118:0x02a2, B:122:0x02aa, B:124:0x02b0, B:125:0x02b6, B:128:0x02e5, B:130:0x0301, B:132:0x0309, B:133:0x0314, B:126:0x02d2, B:127:0x02dc, B:15:0x0049, B:35:0x00e8, B:37:0x00f4, B:39:0x00fa, B:42:0x0101, B:43:0x0105, B:45:0x010b, B:53:0x013a, B:55:0x0142, B:56:0x0145, B:58:0x0148, B:60:0x0184, B:61:0x0193, B:63:0x0199, B:67:0x01a3, B:70:0x01aa, B:71:0x01b3, B:73:0x01b9, B:75:0x01c9, B:77:0x01d3, B:81:0x01db, B:89:0x01f6, B:136:0x0334, B:138:0x033c, B:139:0x033f, B:48:0x011c, B:50:0x0126, B:19:0x0057, B:23:0x0062, B:31:0x00a1, B:29:0x0099, B:27:0x0091, B:25:0x006e), top: B:149:0x0016, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01e1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x013a A[Catch: Exception -> 0x0342, TryCatch #1 {Exception -> 0x0342, blocks: (B:7:0x001e, B:12:0x0035, B:93:0x021c, B:95:0x0228, B:97:0x022e, B:100:0x0235, B:101:0x023e, B:103:0x0244, B:104:0x0252, B:106:0x0258, B:110:0x0267, B:111:0x0278, B:114:0x0296, B:116:0x029c, B:118:0x02a2, B:122:0x02aa, B:124:0x02b0, B:125:0x02b6, B:128:0x02e5, B:130:0x0301, B:132:0x0309, B:133:0x0314, B:126:0x02d2, B:127:0x02dc, B:15:0x0049, B:35:0x00e8, B:37:0x00f4, B:39:0x00fa, B:42:0x0101, B:43:0x0105, B:45:0x010b, B:53:0x013a, B:55:0x0142, B:56:0x0145, B:58:0x0148, B:60:0x0184, B:61:0x0193, B:63:0x0199, B:67:0x01a3, B:70:0x01aa, B:71:0x01b3, B:73:0x01b9, B:75:0x01c9, B:77:0x01d3, B:81:0x01db, B:89:0x01f6, B:136:0x0334, B:138:0x033c, B:139:0x033f, B:48:0x011c, B:50:0x0126, B:19:0x0057, B:23:0x0062, B:31:0x00a1, B:29:0x0099, B:27:0x0091, B:25:0x006e), top: B:149:0x0016, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0148 A[Catch: Exception -> 0x0342, TryCatch #1 {Exception -> 0x0342, blocks: (B:7:0x001e, B:12:0x0035, B:93:0x021c, B:95:0x0228, B:97:0x022e, B:100:0x0235, B:101:0x023e, B:103:0x0244, B:104:0x0252, B:106:0x0258, B:110:0x0267, B:111:0x0278, B:114:0x0296, B:116:0x029c, B:118:0x02a2, B:122:0x02aa, B:124:0x02b0, B:125:0x02b6, B:128:0x02e5, B:130:0x0301, B:132:0x0309, B:133:0x0314, B:126:0x02d2, B:127:0x02dc, B:15:0x0049, B:35:0x00e8, B:37:0x00f4, B:39:0x00fa, B:42:0x0101, B:43:0x0105, B:45:0x010b, B:53:0x013a, B:55:0x0142, B:56:0x0145, B:58:0x0148, B:60:0x0184, B:61:0x0193, B:63:0x0199, B:67:0x01a3, B:70:0x01aa, B:71:0x01b3, B:73:0x01b9, B:75:0x01c9, B:77:0x01d3, B:81:0x01db, B:89:0x01f6, B:136:0x0334, B:138:0x033c, B:139:0x033f, B:48:0x011c, B:50:0x0126, B:19:0x0057, B:23:0x0062, B:31:0x00a1, B:29:0x0099, B:27:0x0091, B:25:0x006e), top: B:149:0x0016, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x021b  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r26) {
        /*
            Method dump skipped, instructions count: 852
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.google.q.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
