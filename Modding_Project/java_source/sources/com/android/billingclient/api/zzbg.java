package com.android.billingclient.api;

import android.os.Bundle;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class zzbg extends com.google.android.gms.internal.play_billing.zzah {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f2487Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final zzch f2488Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AlternativeBillingOnlyAvailabilityListener f2489Wwwwwwwwwwwwwwwwwwwwwwwww;

    public /* synthetic */ zzbg(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener, zzch zzchVar, int i, zzbl zzblVar) {
        this.f2489Wwwwwwwwwwwwwwwwwwwwwwwww = alternativeBillingOnlyAvailabilityListener;
        this.f2488Wwwwwwwwwwwwwwwwwwwwwwww = zzchVar;
        this.f2487Wwwwwwwwwwwwwwwwwwwwwww = i;
    }

    @Override // com.google.android.gms.internal.play_billing.zzai
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            zzch zzchVar = this.f2488Wwwwwwwwwwwwwwwwwwwwwwww;
            BillingResult billingResult = zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww;
            zzchVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(67, 14, billingResult), this.f2487Wwwwwwwwwwwwwwwwwwwwwww);
            this.f2489Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult);
            return;
        }
        int zzb = com.google.android.gms.internal.play_billing.zze.zzb(bundle, "BillingClient");
        BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzb, com.google.android.gms.internal.play_billing.zze.zzh(bundle, "BillingClient"));
        if (zzb != 0) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "isAlternativeBillingOnlyAvailableAsync() failed. Response code: " + zzb);
            this.f2488Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(23, 14, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), this.f2487Wwwwwwwwwwwwwwwwwwwwwww);
        }
        this.f2489Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }
}
