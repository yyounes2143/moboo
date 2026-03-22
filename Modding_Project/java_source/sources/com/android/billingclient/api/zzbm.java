package com.android.billingclient.api;

import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class zzbm implements AcknowledgePurchaseResponseListener, BillingClientStateListener, ConsumeResponseListener, PurchaseHistoryResponseListener, PurchasesResponseListener, PurchasesUpdatedListener, SkuDetailsResponseListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f2500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;

    public static native void nativeOnAcknowledgePurchaseResponse(int i, String str, long j);

    public static native void nativeOnBillingServiceDisconnected();

    public static native void nativeOnBillingSetupFinished(int i, String str, long j);

    public static native void nativeOnConsumePurchaseResponse(int i, String str, String str2, long j);

    public static native void nativeOnPurchaseHistoryResponse(int i, String str, PurchaseHistoryRecord[] purchaseHistoryRecordArr, long j);

    public static native void nativeOnPurchasesUpdated(int i, String str, Purchase[] purchaseArr);

    public static native void nativeOnQueryPurchasesResponse(int i, String str, Purchase[] purchaseArr, long j);

    public static native void nativeOnSkuDetailsResponse(int i, String str, SkuDetails[] skuDetailsArr, long j);

    @Override // com.android.billingclient.api.ConsumeResponseListener
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BillingResult billingResult, String str) {
        nativeOnConsumePurchaseResponse(billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), str, this.f2500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.android.billingclient.api.PurchaseHistoryResponseListener
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BillingResult billingResult, List<PurchaseHistoryRecord> list) {
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        nativeOnPurchaseHistoryResponse(billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), (PurchaseHistoryRecord[]) list.toArray(new PurchaseHistoryRecord[list.size()]), this.f2500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.android.billingclient.api.AcknowledgePurchaseResponseListener
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BillingResult billingResult) {
        nativeOnAcknowledgePurchaseResponse(billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f2500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.android.billingclient.api.SkuDetailsResponseListener
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BillingResult billingResult, List<SkuDetails> list) {
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        nativeOnSkuDetailsResponse(billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), (SkuDetails[]) list.toArray(new SkuDetails[list.size()]), this.f2500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.android.billingclient.api.PurchasesResponseListener
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BillingResult billingResult, List<Purchase> list) {
        long j = this.f2500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        nativeOnQueryPurchasesResponse(billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), (Purchase[]) list.toArray(new Purchase[list.size()]), j);
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void onBillingServiceDisconnected() {
        nativeOnBillingServiceDisconnected();
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void onBillingSetupFinished(BillingResult billingResult) {
        nativeOnBillingSetupFinished(billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f2500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.android.billingclient.api.PurchasesUpdatedListener
    public final void onPurchasesUpdated(BillingResult billingResult, List<Purchase> list) {
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        nativeOnPurchasesUpdated(billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), (Purchase[]) list.toArray(new Purchase[list.size()]));
    }
}
