package com.android.billingclient.api;

import android.os.Bundle;
import android.os.RemoteException;
import com.android.billingclient.api.BillingResult;
import org.json.JSONException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class zzbe extends com.google.android.gms.internal.play_billing.zzad {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f2482Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final zzch f2483Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BillingConfigResponseListener f2484Wwwwwwwwwwwwwwwwwwwwwwwww;

    public /* synthetic */ zzbe(BillingConfigResponseListener billingConfigResponseListener, zzch zzchVar, int i, zzbl zzblVar) {
        this.f2484Wwwwwwwwwwwwwwwwwwwwwwwww = billingConfigResponseListener;
        this.f2483Wwwwwwwwwwwwwwwwwwwwwwww = zzchVar;
        this.f2482Wwwwwwwwwwwwwwwwwwwwwww = i;
    }

    @Override // com.google.android.gms.internal.play_billing.zzae
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            zzch zzchVar = this.f2483Wwwwwwwwwwwwwwwwwwwwwwww;
            BillingResult billingResult = zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww;
            zzchVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(63, 13, billingResult), this.f2482Wwwwwwwwwwwwwwwwwwwwwww);
            this.f2484Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, null);
            return;
        }
        int zzb = com.google.android.gms.internal.play_billing.zze.zzb(bundle, "BillingClient");
        String zzh = com.google.android.gms.internal.play_billing.zze.zzh(bundle, "BillingClient");
        BillingResult.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = BillingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzb);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzh);
        if (zzb != 0) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "getBillingConfig() failed. Response code: " + zzb);
            BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f2483Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(23, 13, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), this.f2482Wwwwwwwwwwwwwwwwwwwwwww);
            this.f2484Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null);
        } else if (!bundle.containsKey("BILLING_CONFIG")) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "getBillingConfig() returned a bundle with neither an error nor a billing config response");
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(6);
            BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f2483Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(64, 13, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3), this.f2482Wwwwwwwwwwwwwwwwwwwwwww);
            this.f2484Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, null);
        } else {
            try {
                this.f2484Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), new BillingConfig(bundle.getString("BILLING_CONFIG")));
            } catch (JSONException e) {
                com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Got a JSON exception trying to decode BillingConfig. \n Exception: ", e);
                zzch zzchVar2 = this.f2483Wwwwwwwwwwwwwwwwwwwwwwww;
                BillingResult billingResult2 = zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww;
                zzchVar2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(65, 13, billingResult2), this.f2482Wwwwwwwwwwwwwwwwwwwwwww);
                this.f2484Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult2, null);
            }
        }
    }
}
