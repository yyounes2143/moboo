package com.android.billingclient.api;

import android.os.Bundle;
import android.os.RemoteException;
import org.json.JSONException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class zzbb extends com.google.android.gms.internal.play_billing.zzx {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f2474Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final zzch f2475Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AlternativeBillingOnlyReportingDetailsListener f2476Wwwwwwwwwwwwwwwwwwwwwwwww;

    public /* synthetic */ zzbb(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener, zzch zzchVar, int i, zzbl zzblVar) {
        this.f2476Wwwwwwwwwwwwwwwwwwwwwwwww = alternativeBillingOnlyReportingDetailsListener;
        this.f2475Wwwwwwwwwwwwwwwwwwwwwwww = zzchVar;
        this.f2474Wwwwwwwwwwwwwwwwwwwwwww = i;
    }

    @Override // com.google.android.gms.internal.play_billing.zzy
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            zzch zzchVar = this.f2475Wwwwwwwwwwwwwwwwwwwwwwww;
            BillingResult billingResult = zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww;
            zzchVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(71, 15, billingResult), this.f2474Wwwwwwwwwwwwwwwwwwwwwww);
            this.f2476Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, null);
            return;
        }
        int zzb = com.google.android.gms.internal.play_billing.zze.zzb(bundle, "BillingClient");
        BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzb, com.google.android.gms.internal.play_billing.zze.zzh(bundle, "BillingClient"));
        if (zzb != 0) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "createAlternativeBillingOnlyReportingDetailsAsync() failed. Response code: " + zzb);
            this.f2475Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(23, 15, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), this.f2474Wwwwwwwwwwwwwwwwwwwwwww);
            this.f2476Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null);
            return;
        }
        try {
            this.f2476Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, new AlternativeBillingOnlyReportingDetails(bundle.getString("CREATE_ALTERNATIVE_BILLING_ONLY_REPORTING_DETAILS")));
        } catch (JSONException e) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Error when parsing invalid alternative billing only reporting details. \n Exception: ", e);
            zzch zzchVar2 = this.f2475Wwwwwwwwwwwwwwwwwwwwwwww;
            BillingResult billingResult2 = zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww;
            zzchVar2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(72, 15, billingResult2), this.f2474Wwwwwwwwwwwwwwwwwwwwwww);
            this.f2476Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult2, null);
        }
    }
}
