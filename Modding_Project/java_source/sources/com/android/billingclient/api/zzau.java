package com.android.billingclient.api;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class zzau implements Callable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ BillingClientImpl f2462Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ PurchaseHistoryResponseListener f2463Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ String f2464Wwwwwwwwwwwwwwwwwwwwwwwww;

    public zzau(BillingClientImpl billingClientImpl, String str, PurchaseHistoryResponseListener purchaseHistoryResponseListener) {
        this.f2464Wwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f2463Wwwwwwwwwwwwwwwwwwwwwwww = purchaseHistoryResponseListener;
        this.f2462Wwwwwwwwwwwwwwwwwwwwwww = billingClientImpl;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzbk IIlllll;
        IIlllll = this.f2462Wwwwwwwwwwwwwwwwwwwwwww.IIlllll(this.f2464Wwwwwwwwwwwwwwwwwwwwwwwww);
        this.f2463Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IIlllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), IIlllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        return null;
    }
}
