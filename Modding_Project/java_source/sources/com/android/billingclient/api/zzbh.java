package com.android.billingclient.api;

import android.os.Bundle;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class zzbh extends com.google.android.gms.internal.play_billing.zzaj {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f2490Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final zzch f2491Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ExternalOfferAvailabilityListener f2492Wwwwwwwwwwwwwwwwwwwwwwwww;

    public /* synthetic */ zzbh(ExternalOfferAvailabilityListener externalOfferAvailabilityListener, zzch zzchVar, int i, zzbl zzblVar) {
        this.f2492Wwwwwwwwwwwwwwwwwwwwwwwww = externalOfferAvailabilityListener;
        this.f2491Wwwwwwwwwwwwwwwwwwwwwwww = zzchVar;
        this.f2490Wwwwwwwwwwwwwwwwwwwwwww = i;
    }

    @Override // com.google.android.gms.internal.play_billing.zzak
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            zzch zzchVar = this.f2491Wwwwwwwwwwwwwwwwwwwwwwww;
            BillingResult billingResult = zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww;
            zzchVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(92, 23, billingResult), this.f2490Wwwwwwwwwwwwwwwwwwwwwww);
            this.f2492Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult);
            return;
        }
        int zzb = com.google.android.gms.internal.play_billing.zze.zzb(bundle, "BillingClient");
        BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzb, com.google.android.gms.internal.play_billing.zze.zzh(bundle, "BillingClient"));
        if (zzb != 0) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "isExternalOfferAvailableAsync() failed. Response code: " + zzb);
            this.f2491Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(23, 23, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), this.f2490Wwwwwwwwwwwwwwwwwwwwwww);
        }
        this.f2492Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }
}
