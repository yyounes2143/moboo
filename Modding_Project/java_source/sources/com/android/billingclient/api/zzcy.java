package com.android.billingclient.api;

import android.os.Bundle;
import com.android.billingclient.api.BillingResult;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class zzcy {
    public static zzcx Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle, String str, String str2) {
        BillingResult billingResult = zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww;
        if (bundle == null) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", String.format("%s got null owned items list", str2));
            return new zzcx(billingResult, 54);
        }
        int zzb = com.google.android.gms.internal.play_billing.zze.zzb(bundle, "BillingClient");
        String zzh = com.google.android.gms.internal.play_billing.zze.zzh(bundle, "BillingClient");
        BillingResult.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = BillingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzb);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzh);
        BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (zzb != 0) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", String.format("%s failed. Response code: %s", str2, Integer.valueOf(zzb)));
            return new zzcx(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 23);
        } else if (bundle.containsKey("INAPP_PURCHASE_ITEM_LIST") && bundle.containsKey("INAPP_PURCHASE_DATA_LIST") && bundle.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
            ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
            ArrayList<String> stringArrayList3 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
            if (stringArrayList == null) {
                com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", str2));
                return new zzcx(billingResult, 56);
            } else if (stringArrayList2 == null) {
                com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", String.format("Bundle returned from %s contains null purchases list.", str2));
                return new zzcx(billingResult, 57);
            } else if (stringArrayList3 == null) {
                com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", String.format("Bundle returned from %s contains null signatures list.", str2));
                return new zzcx(billingResult, 58);
            } else {
                return new zzcx(zzcj.f2560Wwwwwwwwwwwwwwwwwwwwwww, 1);
            }
        } else {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", str2));
            return new zzcx(billingResult, 55);
        }
    }
}
