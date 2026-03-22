package com.android.billingclient.api;

import android.content.Context;
import android.content.IntentFilter;
import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class zzn {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2588Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final zzch f2591Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final UserChoiceBillingListener f2592Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final zzb f2593Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PurchasesUpdatedListener f2594Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f2595Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final zzm f2590Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new zzm(this, true);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final zzm f2589Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new zzm(this, false);

    public zzn(Context context, PurchasesUpdatedListener purchasesUpdatedListener, zzco zzcoVar, zzb zzbVar, UserChoiceBillingListener userChoiceBillingListener, zzch zzchVar) {
        this.f2595Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f2594Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = purchasesUpdatedListener;
        this.f2593Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = zzbVar;
        this.f2592Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = userChoiceBillingListener;
        this.f2591Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = zzchVar;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
        IntentFilter intentFilter2 = new IntentFilter("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intentFilter2.addAction("com.android.vending.billing.ALTERNATIVE_BILLING");
        this.f2588Wwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f2589Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2595Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, intentFilter2);
        if (this.f2588Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f2590Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2595Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST");
        } else {
            this.f2590Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2595Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, intentFilter);
        }
    }

    @Nullable
    public final PurchasesUpdatedListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2594Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
