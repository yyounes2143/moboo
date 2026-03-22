package com.android.billingclient.api;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class zzat implements Callable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ BillingClientImpl f2459Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ PurchasesResponseListener f2460Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ String f2461Wwwwwwwwwwwwwwwwwwwwwwwww;

    public zzat(BillingClientImpl billingClientImpl, String str, PurchasesResponseListener purchasesResponseListener) {
        this.f2461Wwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f2460Wwwwwwwwwwwwwwwwwwwwwwww = purchasesResponseListener;
        this.f2459Wwwwwwwwwwwwwwwwwwwwwww = billingClientImpl;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzcv Illllllllllllllllllllllllllll;
        Illllllllllllllllllllllllllll = this.f2459Wwwwwwwwwwwwwwwwwwwwwww.Illllllllllllllllllllllllllll(this.f2461Wwwwwwwwwwwwwwwwwwwwwwwww, 9);
        if (Illllllllllllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            this.f2460Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Illllllllllllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Illllllllllllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            return null;
        }
        this.f2460Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Illllllllllllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), com.google.android.gms.internal.play_billing.zzco.zzl());
        return null;
    }
}
