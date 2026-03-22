package com.changdu.component.pay.google;

import android.content.Context;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingConfig;
import com.android.billingclient.api.BillingConfigResponseListener;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.GetBillingConfigParams;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.changdu.component.pay.base.PayUtil;
import com.changdu.component.pay.google.x;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class x implements BillingClientStateListener, PurchasesUpdatedListener {
    public static final C0247d f = new C0247d();
    public static volatile x g;

    /* renamed from: a  reason: collision with root package name */
    public final BillingClient f5373a;
    public C0244a c;
    public String b = "";
    public final ConcurrentHashMap d = new ConcurrentHashMap();
    public String e = "";

    public x(Context context) {
        this.f5373a = BillingClient.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        b();
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void onBillingServiceDisconnected() {
        C0244a c0244a = this.c;
        if (c0244a != null) {
            AbstractC0245b.a(c0244a, -1, null, 6);
        }
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void onBillingSetupFinished(BillingResult billingResult) {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 0) {
            a();
            C0244a c0244a = this.c;
            if (c0244a != null) {
                c0244a.onReady();
            }
        } else {
            C0244a c0244a2 = this.c;
            if (c0244a2 != null) {
                AbstractC0245b.a(c0244a2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null, 6);
            }
        }
        this.f5373a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GetBillingConfigParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), new BillingConfigResponseListener() { // from class: Wwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.android.billingclient.api.BillingConfigResponseListener
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BillingResult billingResult2, BillingConfig billingConfig) {
                x.a(x.this, billingResult2, billingConfig);
            }
        });
    }

    @Override // com.android.billingclient.api.PurchasesUpdatedListener
    public final void onPurchasesUpdated(BillingResult billingResult, List list) {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 0) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 1) {
                C0244a c0244a = this.c;
                if (c0244a != null) {
                    AbstractC0245b.a(c0244a, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 4);
                    return;
                }
                return;
            }
            C0244a c0244a2 = this.c;
            if (c0244a2 != null) {
                AbstractC0245b.a(c0244a2, 1, null, 6);
                return;
            }
            return;
        }
        if (list != null && !list.isEmpty()) {
            BuildersKt__Builders_commonKt.launch$default(PayUtil.INSTANCE.getIoLoaderScope(), null, null, new m(list, this, null), 3, null);
        } else {
            C0244a c0244a3 = this.c;
            if (c0244a3 != null) {
                AbstractC0245b.a(c0244a3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 4);
            }
        }
        BuildersKt__Builders_commonKt.launch$default(PayUtil.INSTANCE.getIoLoaderScope(), null, null, new C0252i(this, null), 3, null);
    }

    public static final void a(x xVar, BillingResult billingResult, BillingConfig billingConfig) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = billingConfig != null ? billingConfig.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() : null;
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = "";
        }
        xVar.e = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final void b() {
        if (this.f5373a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() || this.f5373a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == 1) {
            return;
        }
        this.f5373a.Wwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public final void a() {
        Lazy lazy = I.f5351a;
        PayUtil payUtil = PayUtil.INSTANCE;
        BuildersKt__Builders_commonKt.launch$default(payUtil.getIoLoaderScope(), null, null, new E(null), 3, null);
        if (this.f5373a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            BuildersKt__Builders_commonKt.launch$default(payUtil.getIoLoaderScope(), null, null, new C0249f(this, null), 3, null);
            BuildersKt__Builders_commonKt.launch$default(payUtil.getIoLoaderScope(), null, null, new C0250g(this, null), 3, null);
            return;
        }
        b();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:1|(2:3|(4:5|6|7|(1:(1:(13:11|12|13|14|(1:16)|17|18|(2:20|(2:22|23)(4:25|26|(2:(2:29|(2:31|(1:33)))|34)|35))|37|38|(6:40|41|(3:45|18|(0))|37|38|(0))|46|47)(2:49|50))(5:51|52|26|(0)|35))(4:53|(2:59|(3:61|38|(0)))|46|47)))|65|6|7|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x010d, code lost:
        if (kotlinx.coroutines.DelayKt.delay(r8, r1) != r2) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0117, code lost:
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0124, code lost:
        r15 = kotlin.Result.Companion;
        kotlin.Result.m438constructorimpl(kotlin.ResultKt.createFailure(r14));
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b7 A[Catch: all -> 0x0117, TryCatch #0 {all -> 0x0117, blocks: (B:13:0x0032, B:59:0x0113, B:62:0x0119, B:41:0x00b7, B:45:0x00d1, B:53:0x00ec, B:54:0x00f0, B:63:0x011d, B:34:0x0092, B:36:0x009a, B:38:0x00a0, B:18:0x004a), top: B:68:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e3  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x0098 -> B:63:0x011d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x009e -> B:63:0x011d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00a0 -> B:39:0x00b4). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x010d -> B:14:0x0035). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(com.android.billingclient.api.PurchasesResult r14, kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.google.x.b(com.android.billingclient.api.PurchasesResult, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void a(C0244a c0244a, String str) {
        this.c = c0244a;
        this.b = str;
        if (this.f5373a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            a();
            c0244a.onReady();
            return;
        }
        b();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:1|(2:3|(4:5|6|7|(1:(1:(13:11|12|13|14|(1:16)|17|18|(2:20|(2:22|23)(4:25|26|(2:(2:29|(2:31|(1:33)))|34)|35))|37|38|(6:40|41|(3:43|18|(0))|37|38|(0))|44|45)(2:47|48))(5:49|50|26|(0)|35))(4:51|(2:57|(3:59|38|(0)))|44|45)))|63|6|7|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0113, code lost:
        if (kotlinx.coroutines.DelayKt.delay(r8, r1) != r2) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x011d, code lost:
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x012a, code lost:
        r15 = kotlin.Result.Companion;
        kotlin.Result.m438constructorimpl(kotlin.ResultKt.createFailure(r14));
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b1 A[Catch: all -> 0x011d, TryCatch #0 {all -> 0x011d, blocks: (B:13:0x0032, B:57:0x0119, B:60:0x011f, B:39:0x00b1, B:43:0x00cb, B:51:0x00f2, B:52:0x00f6, B:61:0x0123, B:34:0x0092, B:36:0x009a, B:18:0x004a), top: B:66:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e9  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x0098 -> B:61:0x0123). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x009a -> B:37:0x00ae). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0113 -> B:14:0x0035). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.android.billingclient.api.PurchasesResult r14, kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.google.x.a(com.android.billingclient.api.PurchasesResult, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c7, code lost:
        if (kotlinx.coroutines.DelayKt.delay(r8, r0) != r1) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c7 -> B:13:0x0034). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(com.android.billingclient.api.Purchase r14, kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.google.x.b(com.android.billingclient.api.Purchase, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00bb, code lost:
        if (kotlinx.coroutines.DelayKt.delay(r8, r0) != r1) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c9  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00bb -> B:13:0x0034). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.android.billingclient.api.Purchase r14, kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
        /*
            Method dump skipped, instructions count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.google.x.a(com.android.billingclient.api.Purchase, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(java.util.ArrayList r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.changdu.component.pay.google.v
            if (r0 == 0) goto L13
            r0 = r8
            com.changdu.component.pay.google.v r0 = (com.changdu.component.pay.google.v) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.changdu.component.pay.google.v r0 = new com.changdu.component.pay.google.v
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            java.util.ArrayList r7 = r0.f5371a
            kotlin.ResultKt.throwOnFailure(r8)
            return r7
        L2b:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L33:
            kotlin.ResultKt.throwOnFailure(r8)
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            if (r7 == 0) goto L59
            boolean r2 = r7.isEmpty()
            if (r2 == 0) goto L44
            goto L59
        L44:
            kotlinx.coroutines.CoroutineDispatcher r2 = kotlinx.coroutines.Dispatchers.getIO()
            com.changdu.component.pay.google.w r4 = new com.changdu.component.pay.google.w
            r5 = 0
            r4.<init>(r7, r6, r8, r5)
            r0.f5371a = r8
            r0.d = r3
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r2, r4, r0)
            if (r7 != r1) goto L59
            return r1
        L59:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.google.x.b(java.util.ArrayList, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.util.ArrayList r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.changdu.component.pay.google.C0253r
            if (r0 == 0) goto L13
            r0 = r8
            com.changdu.component.pay.google.r r0 = (com.changdu.component.pay.google.C0253r) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.changdu.component.pay.google.r r0 = new com.changdu.component.pay.google.r
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            java.util.ArrayList r7 = r0.f5367a
            kotlin.ResultKt.throwOnFailure(r8)
            return r7
        L2b:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L33:
            kotlin.ResultKt.throwOnFailure(r8)
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            if (r7 == 0) goto L59
            boolean r2 = r7.isEmpty()
            if (r2 == 0) goto L44
            goto L59
        L44:
            kotlinx.coroutines.CoroutineDispatcher r2 = kotlinx.coroutines.Dispatchers.getIO()
            com.changdu.component.pay.google.s r4 = new com.changdu.component.pay.google.s
            r5 = 0
            r4.<init>(r7, r6, r8, r5)
            r0.f5367a = r8
            r0.d = r3
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r2, r4, r0)
            if (r7 != r1) goto L59
            return r1
        L59:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.google.x.a(java.util.ArrayList, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
