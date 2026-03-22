package com.android.billingclient.api;

import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.annotation.Nullable;
import com.android.billingclient.api.BillingResult;
import com.google.android.gms.internal.play_billing.zzkg;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class zzax extends ResultReceiver {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ BillingClientImpl f2468Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ ExternalOfferInformationDialogListener f2469Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, @Nullable Bundle bundle) {
        int i2;
        BillingResult.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = BillingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        if (i != 0) {
            if (bundle == null) {
                this.f2468Wwwwwwwwwwwwwwwwwwwwwwww.IIll(this.f2469Wwwwwwwwwwwwwwwwwwwwwwwww, zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 97, null);
                return;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.google.android.gms.internal.play_billing.zze.zzh(bundle, "BillingClient"));
            int i3 = bundle.getInt("INTERNAL_LOG_ERROR_REASON");
            BillingClientImpl billingClientImpl = this.f2468Wwwwwwwwwwwwwwwwwwwwwwww;
            if (i3 != 0) {
                i2 = zzkg.zza(i3);
            } else {
                i2 = 23;
            }
            billingClientImpl.Kkkkkkkkkkkk(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2, 25, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), bundle.getString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS")));
        }
        this.f2469Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }
}
