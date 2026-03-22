package com.android.billingclient.api;

import android.os.Bundle;
import android.os.RemoteException;
import org.json.JSONException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class zzbc extends com.google.android.gms.internal.play_billing.zzz {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f2477Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final zzch f2478Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ExternalOfferReportingDetailsListener f2479Wwwwwwwwwwwwwwwwwwwwwwwww;

    public /* synthetic */ zzbc(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener, zzch zzchVar, int i, zzbl zzblVar) {
        this.f2479Wwwwwwwwwwwwwwwwwwwwwwwww = externalOfferReportingDetailsListener;
        this.f2478Wwwwwwwwwwwwwwwwwwwwwwww = zzchVar;
        this.f2477Wwwwwwwwwwwwwwwwwwwwwww = i;
    }

    @Override // com.google.android.gms.internal.play_billing.zzaa
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            zzch zzchVar = this.f2478Wwwwwwwwwwwwwwwwwwwwwwww;
            BillingResult billingResult = zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww;
            zzchVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(95, 24, billingResult), this.f2477Wwwwwwwwwwwwwwwwwwwwwww);
            this.f2479Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, null);
            return;
        }
        int zzb = com.google.android.gms.internal.play_billing.zze.zzb(bundle, "BillingClient");
        BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzb, com.google.android.gms.internal.play_billing.zze.zzh(bundle, "BillingClient"));
        if (zzb != 0) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "createExternalOfferReportingDetailsAsync() failed. Response code: " + zzb);
            this.f2478Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(23, 24, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), this.f2477Wwwwwwwwwwwwwwwwwwwwwww);
            this.f2479Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null);
            return;
        }
        try {
            this.f2479Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, new ExternalOfferReportingDetails(bundle.getString("CREATE_EXTERNAL_PAYMENT_REPORTING_DETAILS")));
        } catch (JSONException e) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Error when parsing invalid external offer reporting details. \n Exception: ", e);
            zzch zzchVar2 = this.f2478Wwwwwwwwwwwwwwwwwwwwwwww;
            BillingResult billingResult2 = zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww;
            zzchVar2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(104, 24, billingResult2), this.f2477Wwwwwwwwwwwwwwwwwwwwwww);
            this.f2479Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult2, null);
        }
    }
}
