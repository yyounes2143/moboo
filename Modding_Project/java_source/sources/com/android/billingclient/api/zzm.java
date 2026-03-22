package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.play_billing.zzgw;
import com.google.android.gms.internal.play_billing.zzjz;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@VisibleForTesting
/* loaded from: classes3.dex */
public final class zzm extends BroadcastReceiver {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ zzn f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f2586Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public zzm(zzn zznVar, boolean z) {
        this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = zznVar;
        this.f2586Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle, BillingResult billingResult, int i) {
        zzch zzchVar;
        zzch zzchVar2;
        try {
            if (bundle.getByteArray("FAILURE_LOGGING_PAYLOAD") != null) {
                zzchVar2 = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f2591Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                zzchVar2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzjz.zzC(bundle.getByteArray("FAILURE_LOGGING_PAYLOAD"), zzgw.zza()));
                return;
            }
            zzchVar = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f2591Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            zzchVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(23, i, billingResult));
        } catch (Throwable unused) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingBroadcastManager", "Failed parsing Api failure.");
        }
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, IntentFilter intentFilter, String str) {
        zzm zzmVar;
        int i;
        try {
            try {
                if (this.f2587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    return;
                }
                if (Build.VERSION.SDK_INT >= 33) {
                    if (true != this.f2586Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        i = 4;
                    } else {
                        i = 2;
                    }
                    zzmVar = this;
                    context.registerReceiver(zzmVar, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null, i);
                } else {
                    zzmVar = this;
                    context.registerReceiver(this, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null);
                }
                zzmVar.f2587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, IntentFilter intentFilter) {
        int i;
        try {
            if (this.f2587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                if (true != this.f2586Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    i = 4;
                } else {
                    i = 2;
                }
                context.registerReceiver(this, intentFilter, i);
            } else {
                context.registerReceiver(this, intentFilter);
            }
            this.f2587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int i;
        PurchasesUpdatedListener purchasesUpdatedListener;
        zzch zzchVar;
        zzb zzbVar;
        zzch zzchVar2;
        PurchasesUpdatedListener purchasesUpdatedListener2;
        UserChoiceBillingListener userChoiceBillingListener;
        zzb zzbVar2;
        zzch zzchVar3;
        UserChoiceBillingListener userChoiceBillingListener2;
        zzch zzchVar4;
        PurchasesUpdatedListener purchasesUpdatedListener3;
        UserChoiceBillingListener userChoiceBillingListener3;
        zzch zzchVar5;
        PurchasesUpdatedListener purchasesUpdatedListener4;
        PurchasesUpdatedListener purchasesUpdatedListener5;
        zzch zzchVar6;
        PurchasesUpdatedListener purchasesUpdatedListener6;
        PurchasesUpdatedListener purchasesUpdatedListener7;
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        Bundle extras = intent.getExtras();
        if (extras == null) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingBroadcastManager", "Bundle is null.");
            zzchVar6 = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f2591Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            BillingResult billingResult = zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww;
            zzchVar6.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(11, 1, billingResult));
            zzn zznVar = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            purchasesUpdatedListener6 = zznVar.f2594Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (purchasesUpdatedListener6 != null) {
                purchasesUpdatedListener7 = zznVar.f2594Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                purchasesUpdatedListener7.onPurchasesUpdated(billingResult, null);
                return;
            }
            return;
        }
        BillingResult zzf = com.google.android.gms.internal.play_billing.zze.zzf(intent, "BillingBroadcastManager");
        String action = intent.getAction();
        if (true != Objects.equals(extras.getString("INTENT_SOURCE"), "LAUNCH_BILLING_FLOW")) {
            i = 1;
        } else {
            i = 2;
        }
        if (!action.equals("com.android.vending.billing.PURCHASES_UPDATED") && !action.equals("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED")) {
            if (action.equals("com.android.vending.billing.ALTERNATIVE_BILLING")) {
                if (zzf.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != 0) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(extras, zzf, i);
                    purchasesUpdatedListener5 = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f2594Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    purchasesUpdatedListener5.onPurchasesUpdated(zzf, com.google.android.gms.internal.play_billing.zzco.zzl());
                    return;
                }
                zzn zznVar2 = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                zzbVar = zznVar2.f2593Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (zzbVar == null) {
                    userChoiceBillingListener3 = zznVar2.f2592Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (userChoiceBillingListener3 == null) {
                        com.google.android.gms.internal.play_billing.zze.zzl("BillingBroadcastManager", "AlternativeBillingListener and UserChoiceBillingListener is null.");
                        zzchVar5 = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f2591Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        BillingResult billingResult2 = zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww;
                        zzchVar5.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(77, i, billingResult2));
                        purchasesUpdatedListener4 = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f2594Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        purchasesUpdatedListener4.onPurchasesUpdated(billingResult2, com.google.android.gms.internal.play_billing.zzco.zzl());
                        return;
                    }
                }
                String string = extras.getString("ALTERNATIVE_BILLING_USER_CHOICE_DATA");
                if (string != null) {
                    try {
                        userChoiceBillingListener = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f2592Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        if (userChoiceBillingListener != null) {
                            UserChoiceDetails userChoiceDetails = new UserChoiceDetails(string);
                            userChoiceBillingListener2 = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f2592Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            userChoiceBillingListener2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(userChoiceDetails);
                        } else {
                            JSONArray optJSONArray = new JSONObject(string).optJSONArray("products");
                            ArrayList arrayList = new ArrayList();
                            if (optJSONArray != null) {
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    JSONObject optJSONObject = optJSONArray.optJSONObject(i2);
                                    if (optJSONObject != null) {
                                        arrayList.add(new zzc(optJSONObject, null));
                                    }
                                }
                            }
                            zzbVar2 = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f2593Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            zzbVar2.zza();
                        }
                        zzchVar3 = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f2591Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        zzchVar3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i));
                        return;
                    } catch (JSONException unused) {
                        com.google.android.gms.internal.play_billing.zze.zzl("BillingBroadcastManager", String.format("Error when parsing invalid user choice data: [%s]", string));
                        zzchVar2 = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f2591Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        BillingResult billingResult3 = zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww;
                        zzchVar2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(17, i, billingResult3));
                        purchasesUpdatedListener2 = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f2594Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        purchasesUpdatedListener2.onPurchasesUpdated(billingResult3, com.google.android.gms.internal.play_billing.zzco.zzl());
                        return;
                    }
                }
                com.google.android.gms.internal.play_billing.zze.zzl("BillingBroadcastManager", "Couldn't find alternative billing user choice data in bundle.");
                zzchVar4 = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f2591Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                BillingResult billingResult4 = zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww;
                zzchVar4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(16, i, billingResult4));
                purchasesUpdatedListener3 = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f2594Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                purchasesUpdatedListener3.onPurchasesUpdated(billingResult4, com.google.android.gms.internal.play_billing.zzco.zzl());
                return;
            }
            return;
        }
        List<Purchase> zzj = com.google.android.gms.internal.play_billing.zze.zzj(extras);
        if (zzf.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == 0) {
            zzchVar = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f2591Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            zzchVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i));
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(extras, zzf, i);
        }
        purchasesUpdatedListener = this.f2585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f2594Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        purchasesUpdatedListener.onPurchasesUpdated(zzf, zzj);
    }
}
