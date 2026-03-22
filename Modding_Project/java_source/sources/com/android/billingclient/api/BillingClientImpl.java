package com.android.billingclient.api;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.text.TextUtils;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.ktx.BuildConfig;
import com.google.android.gms.internal.play_billing.zzev;
import com.google.android.gms.internal.play_billing.zzfb;
import com.google.android.gms.internal.play_billing.zzjx;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzkb;
import com.google.android.gms.internal.play_billing.zzkd;
import com.google.android.gms.internal.play_billing.zzke;
import com.google.android.gms.internal.play_billing.zzki;
import com.google.android.gms.internal.play_billing.zzks;
import com.google.android.gms.internal.play_billing.zzku;
import com.google.android.gms.internal.play_billing.zzlv;
import com.google.android.gms.internal.play_billing.zzlx;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class BillingClientImpl extends BillingClient {

    /* renamed from: Www  reason: collision with root package name */
    public final Long f2246Www;

    /* renamed from: Wwww  reason: collision with root package name */
    public volatile zzev f2247Wwww;

    /* renamed from: Wwwww  reason: collision with root package name */
    public ExecutorService f2248Wwwww;

    /* renamed from: Wwwwww  reason: collision with root package name */
    public boolean f2249Wwwwww;
    @Nullable

    /* renamed from: Wwwwwww  reason: collision with root package name */
    public PendingPurchasesParams f2250Wwwwwww;

    /* renamed from: Wwwwwwww  reason: collision with root package name */
    public boolean f2251Wwwwwwww;

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public boolean f2252Wwwwwwwww;

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public boolean f2253Wwwwwwwwww;

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public boolean f2254Wwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public boolean f2255Wwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2256Wwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2257Wwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2258Wwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2259Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2260Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2261Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2262Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2263Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2264Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2265Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f2266Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2267Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2268Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile zzba f2269Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile com.google.android.gms.internal.play_billing.zzan f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public zzch f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Context f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile zzn f2273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f2274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile int f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Object f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @AnyThread
    public BillingClientImpl(Context context, PendingPurchasesParams pendingPurchasesParams, PurchasesUpdatedListener purchasesUpdatedListener, String str, String str2, @Nullable UserChoiceBillingListener userChoiceBillingListener, @Nullable zzch zzchVar, @Nullable ExecutorService executorService) {
        this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Object();
        this.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
        this.f2274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());
        this.f2266Wwwwwwwwwwwwwwwwwwwwwww = 0;
        this.f2246Www = Long.valueOf(new Random().nextLong());
        this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        Wwwwwwwwwwwwwwwwwwwwwww(context, purchasesUpdatedListener, pendingPurchasesParams, userChoiceBillingListener, str, null);
    }

    public static /* bridge */ /* synthetic */ boolean Illll(BillingClientImpl billingClientImpl) {
        boolean z;
        synchronized (billingClientImpl.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            z = true;
            if (billingClientImpl.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != 1) {
                z = false;
            }
        }
        return z;
    }

    public static final String Kkkkk(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return "CLOSED";
                }
                return "CONNECTED";
            }
            return "CONNECTING";
        }
        return "DISCONNECTED";
    }

    @SuppressLint({"PrivateApi"})
    public static String Kkkkkkkkkkkkkkk() {
        try {
            return (String) BuildConfig.class.getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return com.android.billingclient.BuildConfig.f2234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    @Nullable
    public static Future Wwwwwwwwwwwwwwww(Callable callable, long j, @Nullable final Runnable runnable, Handler handler, ExecutorService executorService) {
        try {
            final Future submit = executorService.submit(callable);
            handler.postDelayed(new Runnable() { // from class: com.android.billingclient.api.zzaf
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = submit;
                    if (!future.isDone() && !future.isCancelled()) {
                        Runnable runnable2 = runnable;
                        future.cancel(true);
                        com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Async task is taking too long, cancel it!");
                        if (runnable2 != null) {
                            runnable2.run();
                        }
                    }
                }
            }, (long) (j * 0.95d));
            return submit;
        } catch (Exception e) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Async task throws exception!", e);
            return null;
        }
    }

    public final void IIl(BillingConfigResponseListener billingConfigResponseListener, BillingResult billingResult, int i, @Nullable Exception exc) {
        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "getBillingConfig got an exception.", exc);
        O0000000(i, 13, billingResult, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc));
        billingConfigResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, null);
    }

    public final void IIll(ExternalOfferInformationDialogListener externalOfferInformationDialogListener, BillingResult billingResult, int i, @Nullable Exception exc) {
        O0000000(i, 25, billingResult, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc));
        externalOfferInformationDialogListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult);
    }

    public final BillingResult IIllll() {
        com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Service connection is valid. No need to re-initialize.");
        zzkb zzc = zzkd.zzc();
        zzc.zzn(6);
        zzlv zzc2 = zzlx.zzc();
        zzc2.zza(true);
        zzc.zzm(zzc2);
        Kkkkkkkkkkk((zzkd) zzc.zzf());
        return zzcj.f2560Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public final zzbk IIlllll(String str) {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Querying purchase history, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        Bundle zzd = com.google.android.gms.internal.play_billing.zze.zzd(this.f2263Wwwwwwwwwwwwwwwwwwww, this.f2255Wwwwwwwwwwww, this.f2250Wwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f2250Wwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2246Www.longValue());
        String str2 = null;
        while (this.f2265Wwwwwwwwwwwwwwwwwwwwww) {
            try {
                synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    zzanVar = this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                if (zzanVar == null) {
                    return Kkk(zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 119, "Service reset to null", null);
                }
                Bundle zzh = zzanVar.zzh(6, this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), str, str2, zzd);
                zzcx Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = zzcy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzh, "BillingClient", "getPurchaseHistory()");
                BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != zzcj.f2560Wwwwwwwwwwwwwwwwwwwwwww) {
                    O00000000(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), 11, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                    return new zzbk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, null);
                }
                ArrayList<String> stringArrayList = zzh.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = zzh.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = zzh.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                boolean z = false;
                for (int i = 0; i < stringArrayList2.size(); i++) {
                    String str3 = stringArrayList2.get(i);
                    String str4 = stringArrayList3.get(i);
                    com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Purchase record found for sku : ".concat(String.valueOf(stringArrayList.get(i))));
                    try {
                        PurchaseHistoryRecord purchaseHistoryRecord = new PurchaseHistoryRecord(str3, str4);
                        if (TextUtils.isEmpty(purchaseHistoryRecord.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "BUG: empty/null token!");
                            z = true;
                        }
                        arrayList.add(purchaseHistoryRecord);
                    } catch (JSONException e) {
                        return Kkk(zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 51, "Got an exception trying to decode the purchase!", e);
                    }
                }
                if (z) {
                    O00000000(26, 11, zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww);
                }
                str2 = zzh.getString("INAPP_CONTINUATION_TOKEN");
                com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Continuation token: ".concat(String.valueOf(str2)));
                if (TextUtils.isEmpty(str2)) {
                    return new zzbk(zzcj.f2560Wwwwwwwwwwwwwwwwwwwwwww, arrayList);
                }
            } catch (DeadObjectException e2) {
                return Kkk(zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 59, "Got exception trying to get purchase history", e2);
            } catch (Exception e3) {
                return Kkk(zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 59, "Got exception trying to get purchase history", e3);
            }
        }
        com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "getPurchaseHistory is not supported on current device");
        return new zzbk(zzcj.f2555Wwwwwwwwwwwwwwwwww, null);
    }

    public final Handler IIllllll() {
        if (Looper.myLooper() == null) {
            return this.f2274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return new Handler(Looper.myLooper());
    }

    public final /* synthetic */ void Illllll(ExternalOfferInformationDialogListener externalOfferInformationDialogListener) {
        IIll(externalOfferInformationDialogListener, zzcj.f2558Wwwwwwwwwwwwwwwwwwwww, 24, null);
    }

    public final /* synthetic */ void Illlllll(AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener) {
        O0000000000(alternativeBillingOnlyInformationDialogListener, zzcj.f2558Wwwwwwwwwwwwwwwwwwwww, 24, null);
    }

    public final /* synthetic */ void Illllllll(SkuDetailsResponseListener skuDetailsResponseListener) {
        BillingResult billingResult = zzcj.f2558Wwwwwwwwwwwwwwwwwwwww;
        O00000000(24, 8, billingResult);
        skuDetailsResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, null);
    }

    public final /* synthetic */ void Illlllllll(PurchasesResponseListener purchasesResponseListener) {
        BillingResult billingResult = zzcj.f2558Wwwwwwwwwwwwwwwwwwwww;
        O00000000(24, 9, billingResult);
        purchasesResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, com.google.android.gms.internal.play_billing.zzco.zzl());
    }

    public final /* synthetic */ void Illllllllll(PurchaseHistoryResponseListener purchaseHistoryResponseListener) {
        BillingResult billingResult = zzcj.f2558Wwwwwwwwwwwwwwwwwwwww;
        O00000000(24, 11, billingResult);
        purchaseHistoryResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, null);
    }

    public final /* synthetic */ void Illlllllllll(ProductDetailsResponseListener productDetailsResponseListener) {
        BillingResult billingResult = zzcj.f2558Wwwwwwwwwwwwwwwwwwwww;
        O00000000(24, 7, billingResult);
        productDetailsResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, new ArrayList());
    }

    public final /* synthetic */ void Illllllllllll(ExternalOfferAvailabilityListener externalOfferAvailabilityListener) {
        Illlllllllllllllllllll(externalOfferAvailabilityListener, zzcj.f2558Wwwwwwwwwwwwwwwwwwwww, 24, null);
    }

    public final /* synthetic */ void Illlllllllllll(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) {
        Illlllllllllllllllllllllll(alternativeBillingOnlyAvailabilityListener, zzcj.f2558Wwwwwwwwwwwwwwwwwwwww, 24, null);
    }

    public final /* synthetic */ void Illllllllllllll(BillingConfigResponseListener billingConfigResponseListener) {
        BillingResult billingResult = zzcj.f2558Wwwwwwwwwwwwwwwwwwwww;
        O00000000(24, 13, billingResult);
        billingConfigResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, null);
    }

    public final /* synthetic */ void Illlllllllllllll(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener) {
        Illllllllllllllllllllll(externalOfferReportingDetailsListener, zzcj.f2558Wwwwwwwwwwwwwwwwwwwww, 24, null);
    }

    public final /* synthetic */ void Illllllllllllllll(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) {
        Illlllllllllllllllllllll(alternativeBillingOnlyReportingDetailsListener, zzcj.f2558Wwwwwwwwwwwwwwwwwwwww, 24, null);
    }

    public final /* synthetic */ void Illlllllllllllllll(ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) {
        BillingResult billingResult = zzcj.f2558Wwwwwwwwwwwwwwwwwwwww;
        O00000000(24, 4, billingResult);
        consumeResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, consumeParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public final /* synthetic */ void Illllllllllllllllll(BillingResult billingResult) {
        if (this.f2273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            this.f2273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().onPurchasesUpdated(billingResult, null);
        } else {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "No valid listener is set in BroadcastManager");
        }
    }

    public final /* synthetic */ void Illlllllllllllllllll(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        BillingResult billingResult = zzcj.f2558Wwwwwwwwwwwwwwwwwwwww;
        O00000000(24, 3, billingResult);
        acknowledgePurchaseResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult);
    }

    public final void Illlllllllllllllllllll(ExternalOfferAvailabilityListener externalOfferAvailabilityListener, BillingResult billingResult, int i, @Nullable Exception exc) {
        O0000000(i, 23, billingResult, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc));
        externalOfferAvailabilityListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult);
    }

    public final void Illllllllllllllllllllll(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener, BillingResult billingResult, int i, @Nullable Exception exc) {
        O0000000(i, 24, billingResult, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc));
        externalOfferReportingDetailsListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, null);
    }

    public final void Illlllllllllllllllllllll(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener, BillingResult billingResult, int i, @Nullable Exception exc) {
        O0000000(i, 15, billingResult, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc));
        alternativeBillingOnlyReportingDetailsListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, null);
    }

    public final void Illllllllllllllllllllllll(ConsumeResponseListener consumeResponseListener, String str, BillingResult billingResult, int i, String str2, @Nullable Exception exc) {
        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", str2, exc);
        O0000000(i, 4, billingResult, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc));
        consumeResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, str);
    }

    public final void Illlllllllllllllllllllllll(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener, BillingResult billingResult, int i, @Nullable Exception exc) {
        O0000000(i, 14, billingResult, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc));
        alternativeBillingOnlyAvailabilityListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult);
    }

    public final void Illllllllllllllllllllllllll(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, BillingResult billingResult, int i, @Nullable Exception exc) {
        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Error in acknowledge purchase!", exc);
        O0000000(i, 3, billingResult, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc));
        acknowledgePurchaseResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult);
    }

    public final zzdc Illlllllllllllllllllllllllll(BillingResult billingResult, int i, String str, @Nullable Exception exc) {
        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", str, exc);
        O0000000(i, 8, billingResult, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc));
        return new zzdc(billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null);
    }

    public final zzcv Illllllllllllllllllllllllllll(String str, int i) {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        Bundle zzi;
        int i2;
        BillingClientImpl billingClientImpl = this;
        com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Querying owned items, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        Bundle zzd = com.google.android.gms.internal.play_billing.zze.zzd(billingClientImpl.f2263Wwwwwwwwwwwwwwwwwwww, billingClientImpl.f2255Wwwwwwwwwwww, billingClientImpl.f2250Wwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), billingClientImpl.f2250Wwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), billingClientImpl.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, billingClientImpl.f2246Www.longValue());
        String str2 = null;
        do {
            try {
                synchronized (billingClientImpl.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    zzanVar = billingClientImpl.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                if (zzanVar == null) {
                    return billingClientImpl.Kk(9, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 119, "Service has been reset to null", null);
                }
                if (billingClientImpl.f2263Wwwwwwwwwwwwwwwwwwww) {
                    if (true != billingClientImpl.f2255Wwwwwwwwwwww) {
                        i2 = 9;
                    } else {
                        i2 = 19;
                    }
                    zzi = zzanVar.zzj(i2, billingClientImpl.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), str, str2, zzd);
                } else {
                    zzi = zzanVar.zzi(3, billingClientImpl.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), str, str2);
                }
                zzcx Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = zzcy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzi, "BillingClient", "getPurchase()");
                BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != zzcj.f2560Wwwwwwwwwwwwwwwwwwwwwww) {
                    return billingClientImpl.Kk(9, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), "Purchase bundle invalid", null);
                }
                ArrayList<String> stringArrayList = zzi.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = zzi.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = zzi.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                boolean z = false;
                for (int i3 = 0; i3 < stringArrayList2.size(); i3++) {
                    String str3 = stringArrayList2.get(i3);
                    String str4 = stringArrayList3.get(i3);
                    com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Sku is owned: ".concat(String.valueOf(stringArrayList.get(i3))));
                    try {
                        Purchase purchase = new Purchase(str3, str4);
                        if (TextUtils.isEmpty(purchase.Wwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "BUG: empty/null token!");
                            z = true;
                        }
                        arrayList.add(purchase);
                    } catch (JSONException e) {
                        return Kk(9, zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 51, "Got an exception trying to decode the purchase!", e);
                    }
                }
                billingClientImpl = this;
                if (z) {
                    billingClientImpl.O00000000(26, 9, zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww);
                }
                str2 = zzi.getString("INAPP_CONTINUATION_TOKEN");
                com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Continuation token: ".concat(String.valueOf(str2)));
            } catch (DeadObjectException e2) {
                return Kk(9, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 52, "Got exception trying to get purchases try to reconnect", e2);
            } catch (Exception e3) {
                return billingClientImpl.Kk(9, zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 52, "Got exception trying to get purchases try to reconnect", e3);
            }
        } while (!TextUtils.isEmpty(str2));
        return new zzcv(zzcj.f2560Wwwwwwwwwwwwwwwwwwwwwww, arrayList);
    }

    public final zzcv Kk(int i, BillingResult billingResult, int i2, String str, @Nullable Exception exc) {
        O0000000(i2, 9, billingResult, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc));
        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", str, exc);
        return new zzcv(billingResult, null);
    }

    public final zzbk Kkk(BillingResult billingResult, int i, String str, @Nullable Exception exc) {
        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", str, exc);
        O0000000(i, 11, billingResult, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc));
        return new zzbk(billingResult, null);
    }

    public final zzbj Kkkk(BillingResult billingResult, int i, String str, @Nullable Exception exc) {
        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", str, exc);
        O0000000(i, 7, billingResult, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc));
        return new zzbj(billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), billingResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), new ArrayList());
    }

    public final boolean Kkkkkk() {
        if (this.f2255Wwwwwwwwwwww && this.f2250Wwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return true;
        }
        return false;
    }

    public final void Kkkkkkk() {
        synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (this.f2269Wwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.unbindService(this.f2269Wwwwwwwwwwwwwwwwwwwwwwwwww);
                this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww = null;
                this.f2269Wwwwwwwwwwwwwwwwwwwwwwwwww = null;
            }
        }
    }

    public final void Kkkkkkkk(int i) {
        synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (this.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 3) {
                    return;
                }
                String Kkkkk = Kkkkk(this.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                String Kkkkk2 = Kkkkk(i);
                com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Setting clientState from " + Kkkkk + " to " + Kkkkk2);
                this.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void Kkkkkkkkk(String str, final PurchasesResponseListener purchasesResponseListener) {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            BillingResult billingResult = zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww;
            O00000000(2, 9, billingResult);
            purchasesResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, com.google.android.gms.internal.play_billing.zzco.zzl());
        } else if (TextUtils.isEmpty(str)) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Please provide a valid product type.");
            BillingResult billingResult2 = zzcj.f2564Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            O00000000(50, 9, billingResult2);
            purchasesResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult2, com.google.android.gms.internal.play_billing.zzco.zzl());
        } else if (Wwwwwwwwwwwwwwww(new zzat(this, str, purchasesResponseListener), 30000L, new Runnable() { // from class: com.android.billingclient.api.zzac
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.this.Illlllllll(purchasesResponseListener);
            }
        }, IIllllll(), Kkkkkkkkkkkkkk()) == null) {
            BillingResult Kkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkk();
            O00000000(25, 9, Kkkkkkkkkkkkkkkkk2);
            purchasesResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkkk2, com.google.android.gms.internal.play_billing.zzco.zzl());
        }
    }

    public final void Kkkkkkkkkk(String str, final PurchaseHistoryResponseListener purchaseHistoryResponseListener) {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            BillingResult billingResult = zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww;
            O00000000(2, 11, billingResult);
            purchaseHistoryResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, null);
        } else if (Wwwwwwwwwwwwwwww(new zzau(this, str, purchaseHistoryResponseListener), 30000L, new Runnable() { // from class: com.android.billingclient.api.zzal
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.this.Illllllllll(purchaseHistoryResponseListener);
            }
        }, IIllllll(), Kkkkkkkkkkkkkk()) == null) {
            BillingResult Kkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkk();
            O00000000(25, 11, Kkkkkkkkkkkkkkkkk2);
            purchaseHistoryResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkkk2, null);
        }
    }

    public final void Kkkkkkkkkkk(zzkd zzkdVar) {
        try {
            this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(zzkdVar, this.f2266Wwwwwwwwwwwwwwwwwwwwwww);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    public final void Kkkkkkkkkkkk(zzjz zzjzVar) {
        try {
            this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzjzVar, this.f2266Wwwwwwwwwwwwwwwwwwwwwww);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    public final void Kkkkkkkkkkkkk(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        int zza;
        String str;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = consumeParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        try {
            com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Consuming purchase with token: " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                try {
                    zzanVar = this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                } catch (DeadObjectException e) {
                    e = e;
                    Illllllllllllllllllllllll(consumeResponseListener, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 29, "Error consuming purchase!", e);
                    return;
                } catch (Exception e2) {
                    e = e2;
                    Illllllllllllllllllllllll(consumeResponseListener, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 29, "Error consuming purchase!", e);
                    return;
                }
            }
            if (zzanVar == null) {
                try {
                    Illllllllllllllllllllllll(consumeResponseListener, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 119, "Service has been reset to null.", null);
                    return;
                } catch (DeadObjectException e3) {
                    e = e3;
                    Illllllllllllllllllllllll(consumeResponseListener, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 29, "Error consuming purchase!", e);
                    return;
                } catch (Exception e4) {
                    e = e4;
                    Illllllllllllllllllllllll(consumeResponseListener, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 29, "Error consuming purchase!", e);
                    return;
                }
            }
            if (this.f2263Wwwwwwwwwwwwwwwwwwww) {
                String packageName = this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName();
                boolean z = this.f2263Wwwwwwwwwwwwwwwwwwww;
                String str2 = this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                long longValue = this.f2246Www.longValue();
                Bundle bundle = new Bundle();
                if (z) {
                    com.google.android.gms.internal.play_billing.zze.zzc(bundle, str2, longValue);
                }
                Bundle zze = zzanVar.zze(9, packageName, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, bundle);
                zza = zze.getInt("RESPONSE_CODE");
                str = com.google.android.gms.internal.play_billing.zze.zzh(zze, "BillingClient");
            } else {
                zza = zzanVar.zza(3, this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                str = "";
            }
            BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zza, str);
            if (zza == 0) {
                com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Successfully consumed purchase.");
                consumeResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                return;
            }
            Illllllllllllllllllllllll(consumeResponseListener, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, 23, "Error consuming purchase with token. Response code: " + zza, null);
        } catch (DeadObjectException e5) {
            e = e5;
        } catch (Exception e6) {
            e = e6;
        }
    }

    public final synchronized ExecutorService Kkkkkkkkkkkkkk() {
        try {
            if (this.f2248Wwwww == null) {
                this.f2248Wwwww = Executors.newFixedThreadPool(com.google.android.gms.internal.play_billing.zze.zza, new zzas(this));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f2248Wwwww;
    }

    public final String Kkkkkkkkkkkkkkkk(QueryProductDetailsParams queryProductDetailsParams) {
        if (!TextUtils.isEmpty(null)) {
            return null;
        }
        return this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName();
    }

    public final BillingResult Kkkkkkkkkkkkkkkkk() {
        int[] iArr = {0, 3};
        synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            for (int i = 0; i < 2; i++) {
                if (this.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == iArr[i]) {
                    return zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww;
                }
            }
            return zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    public final /* synthetic */ Bundle O000(String str, String str2) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                zzanVar = this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (zzanVar == null) {
                return com.google.android.gms.internal.play_billing.zze.zzn(zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 119);
            }
            return zzanVar.zzf(3, this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), str, str2, null);
        } catch (DeadObjectException e) {
            return com.google.android.gms.internal.play_billing.zze.zzo(zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 5, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e));
        } catch (Exception e2) {
            return com.google.android.gms.internal.play_billing.zze.zzo(zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 5, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e2));
        }
    }

    public final /* synthetic */ Bundle O0000(int i, String str, String str2, BillingFlowParams billingFlowParams, Bundle bundle) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                zzanVar = this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (zzanVar == null) {
                return com.google.android.gms.internal.play_billing.zze.zzn(zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 119);
            }
            return zzanVar.zzg(i, this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), str, str2, null, bundle);
        } catch (DeadObjectException e) {
            return com.google.android.gms.internal.play_billing.zze.zzo(zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 5, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e));
        } catch (Exception e2) {
            return com.google.android.gms.internal.play_billing.zze.zzo(zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 5, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e2));
        }
    }

    public final void O000000(int i) {
        try {
            Kkkkkkkkkkk(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    public final void O0000000(int i, int i2, BillingResult billingResult, @Nullable String str) {
        try {
            Kkkkkkkkkkkk(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, billingResult, str));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    public final void O00000000(int i, int i2, BillingResult billingResult) {
        try {
            Kkkkkkkkkkkk(zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, billingResult));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    public final void O000000000(int i, int i2, @Nullable Exception exc) {
        zzjz zzjzVar;
        com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "showInAppMessages error.", exc);
        zzch zzchVar = this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc);
        try {
            zzke zzc = zzki.zzc();
            zzc.zzn(i);
            zzc.zzo(i2);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                zzc.zza(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            zzjx zzc2 = zzjz.zzc();
            zzc2.zza(zzc);
            zzc2.zzn(30);
            zzjzVar = (zzjz) zzc2.zzf();
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to create logging payload", th);
            zzjzVar = null;
        }
        zzchVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzjzVar);
    }

    public final void O0000000000(AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, BillingResult billingResult, int i, @Nullable Exception exc) {
        O0000000(i, 16, billingResult, zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc));
        alternativeBillingOnlyInformationDialogListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult);
    }

    public final synchronized zzev OO0() {
        try {
            if (this.f2247Wwww == null) {
                this.f2247Wwww = zzfb.zza(Kkkkkkkkkkkkkk());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f2247Wwww;
    }

    @VisibleForTesting
    public final zzdc OO000(String str, List list, @Nullable String str2) {
        int i;
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        Bundle zzk;
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + 20;
            if (i3 > size) {
                i = size;
            } else {
                i = i3;
            }
            ArrayList<String> arrayList2 = new ArrayList<>(list.subList(i2, i));
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList2);
            bundle.putString("playBillingLibraryVersion", this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            try {
                synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    zzanVar = this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                if (zzanVar == null) {
                    return Illlllllllllllllllllllllllll(zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 119, "Service has been reset to null.", null);
                }
                if (this.f2262Wwwwwwwwwwwwwwwwwww) {
                    String packageName = this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName();
                    int i4 = this.f2266Wwwwwwwwwwwwwwwwwwwwwww;
                    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f2250Wwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    boolean Kkkkkk = Kkkkkk();
                    String str3 = this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    long longValue = this.f2246Www.longValue();
                    Bundle bundle2 = new Bundle();
                    if (i4 >= 9) {
                        com.google.android.gms.internal.play_billing.zze.zzc(bundle2, str3, longValue);
                    }
                    if (i4 >= 9 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        bundle2.putBoolean("enablePendingPurchases", true);
                    }
                    if (Kkkkkk) {
                        bundle2.putBoolean("enablePendingPurchaseForSubscriptions", true);
                    }
                    zzk = zzanVar.zzl(10, packageName, str, bundle, bundle2);
                } else {
                    zzk = zzanVar.zzk(3, this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), str, bundle);
                }
                if (zzk == null) {
                    return Illlllllllllllllllllllllllll(zzcj.f2543Wwwwww, 44, "querySkuDetailsAsync got null sku details list", null);
                }
                if (!zzk.containsKey("DETAILS_LIST")) {
                    int zzb = com.google.android.gms.internal.play_billing.zze.zzb(zzk, "BillingClient");
                    String zzh = com.google.android.gms.internal.play_billing.zze.zzh(zzk, "BillingClient");
                    if (zzb != 0) {
                        BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzb, zzh);
                        return Illlllllllllllllllllllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, 23, "getSkuDetails() failed. Response code: " + zzb, null);
                    }
                    return Illlllllllllllllllllllllllll(zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(6, zzh), 45, "getSkuDetails() returned a bundle with neither an error nor a detail list.", null);
                }
                ArrayList<String> stringArrayList = zzk.getStringArrayList("DETAILS_LIST");
                if (stringArrayList != null) {
                    for (int i5 = 0; i5 < stringArrayList.size(); i5++) {
                        try {
                            SkuDetails skuDetails = new SkuDetails(stringArrayList.get(i5));
                            com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Got sku details: ".concat(skuDetails.toString()));
                            arrayList.add(skuDetails);
                        } catch (JSONException e) {
                            return Illlllllllllllllllllllllllll(zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(6, "Error trying to decode SkuDetails."), 47, "Got a JSON exception trying to decode SkuDetails.", e);
                        }
                    }
                    i2 = i3;
                } else {
                    return Illlllllllllllllllllllllllll(zzcj.f2543Wwwwww, 46, "querySkuDetailsAsync got null response list", null);
                }
            } catch (DeadObjectException e2) {
                return Illlllllllllllllllllllllllll(zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 43, "querySkuDetailsAsync got a remote exception (try to reconnect).", e2);
            } catch (Exception e3) {
                return Illlllllllllllllllllllllllll(zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 43, "querySkuDetailsAsync got a remote exception (try to reconnect).", e3);
            }
        }
        return new zzdc(0, "", arrayList);
    }

    public final BillingResult OO0000(final BillingResult billingResult) {
        if (Thread.interrupted()) {
            return billingResult;
        }
        this.f2274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.post(new Runnable() { // from class: com.android.billingclient.api.zzp
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.this.Illllllllllllllllll(billingResult);
            }
        });
        return billingResult;
    }

    public final zzch OO000000() {
        return this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @VisibleForTesting
    public final zzbj OO000000000(QueryProductDetailsParams queryProductDetailsParams) {
        int i;
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        int i2;
        ArrayList arrayList = new ArrayList();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = queryProductDetailsParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        com.google.android.gms.internal.play_billing.zzco Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = queryProductDetailsParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int size = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size();
        int i3 = 0;
        while (i3 < size) {
            int i4 = i3 + 20;
            if (i4 > size) {
                i = size;
            } else {
                i = i4;
            }
            ArrayList arrayList2 = new ArrayList(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.subList(i3, i));
            ArrayList<String> arrayList3 = new ArrayList<>();
            int size2 = arrayList2.size();
            for (int i5 = 0; i5 < size2; i5++) {
                arrayList3.add(((QueryProductDetailsParams.Product) arrayList2.get(i5)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList3);
            bundle.putString("playBillingLibraryVersion", this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            try {
                synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    zzanVar = this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                if (zzanVar == null) {
                    return Kkkk(zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 119, "Service has been reset to null.", null);
                }
                boolean z = true;
                if (true != this.f2254Wwwwwwwwwww) {
                    i2 = 17;
                } else {
                    i2 = 20;
                }
                String packageName = this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName();
                boolean Kkkkkk = Kkkkkk();
                String str = this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                Kkkkkkkkkkkkkkkk(queryProductDetailsParams);
                Kkkkkkkkkkkkkkkk(queryProductDetailsParams);
                Kkkkkkkkkkkkkkkk(queryProductDetailsParams);
                Kkkkkkkkkkkkkkkk(queryProductDetailsParams);
                long longValue = this.f2246Www.longValue();
                Bundle bundle2 = new Bundle();
                com.google.android.gms.internal.play_billing.zze.zzc(bundle2, str, longValue);
                bundle2.putBoolean("enablePendingPurchases", true);
                bundle2.putString("SKU_DETAILS_RESPONSE_FORMAT", "PRODUCT_DETAILS");
                if (Kkkkkk) {
                    bundle2.putBoolean("enablePendingPurchaseForSubscriptions", true);
                }
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<String> arrayList5 = new ArrayList<>();
                int size3 = arrayList2.size();
                int i6 = 0;
                boolean z2 = false;
                boolean z3 = false;
                while (i6 < size3) {
                    boolean z4 = z;
                    arrayList4.add(null);
                    z2 |= !TextUtils.isEmpty(null);
                    com.google.android.gms.internal.play_billing.zzan zzanVar2 = zzanVar;
                    if (((QueryProductDetailsParams.Product) arrayList2.get(i6)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().equals("first_party")) {
                        com.google.android.gms.internal.play_billing.zzbe.zzc(null, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products.");
                        arrayList5.add(null);
                        z3 = z4;
                    }
                    i6++;
                    zzanVar = zzanVar2;
                    z = z4;
                }
                com.google.android.gms.internal.play_billing.zzan zzanVar3 = zzanVar;
                if (z2) {
                    bundle2.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList4);
                }
                if (!arrayList5.isEmpty()) {
                    bundle2.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList5);
                }
                if (z3 && !TextUtils.isEmpty(null)) {
                    bundle2.putString("accountName", null);
                }
                Bundle zzl = zzanVar3.zzl(i2, packageName, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, bundle, bundle2);
                if (zzl == null) {
                    return Kkkk(zzcj.f2543Wwwwww, 44, "queryProductDetailsAsync got empty product details response.", null);
                }
                if (!zzl.containsKey("DETAILS_LIST")) {
                    int zzb = com.google.android.gms.internal.play_billing.zze.zzb(zzl, "BillingClient");
                    String zzh = com.google.android.gms.internal.play_billing.zze.zzh(zzl, "BillingClient");
                    if (zzb != 0) {
                        BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzb, zzh);
                        return Kkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 23, "getSkuDetails() failed for queryProductDetailsAsync. Response code: " + zzb, null);
                    }
                    return Kkkk(zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(6, zzh), 45, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync.", null);
                }
                ArrayList<String> stringArrayList = zzl.getStringArrayList("DETAILS_LIST");
                if (stringArrayList != null) {
                    for (int i7 = 0; i7 < stringArrayList.size(); i7++) {
                        try {
                            ProductDetails productDetails = new ProductDetails(stringArrayList.get(i7));
                            com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Got product details: ".concat(productDetails.toString()));
                            arrayList.add(productDetails);
                        } catch (JSONException e) {
                            return Kkkk(zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(6, "Error trying to decode SkuDetails."), 47, "Got a JSON exception trying to decode ProductDetails. \n Exception: ", e);
                        }
                    }
                    i3 = i4;
                } else {
                    return Kkkk(zzcj.f2543Wwwwww, 46, "queryProductDetailsAsync got null response list", null);
                }
            } catch (DeadObjectException e2) {
                return Kkkk(zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 43, "queryProductDetailsAsync got a remote exception (try to reconnect).", e2);
            } catch (Exception e3) {
                return Kkkk(zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 43, "queryProductDetailsAsync got a remote exception (try to reconnect).", e3);
            }
        }
        return new zzbj(0, "", arrayList);
    }

    public final /* synthetic */ Void QQO(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                zzanVar = this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (zzanVar == null) {
                Illllllllllllllllllllll(externalOfferReportingDetailsListener, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 119, null);
            } else {
                zzanVar.zzn(22, this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), com.google.android.gms.internal.play_billing.zze.zze(this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2246Www.longValue()), new zzbc(externalOfferReportingDetailsListener, this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2266Wwwwwwwwwwwwwwwwwwwwwww, null));
            }
        } catch (DeadObjectException e) {
            Illllllllllllllllllllll(externalOfferReportingDetailsListener, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 94, e);
        } catch (Exception e2) {
            Illllllllllllllllllllll(externalOfferReportingDetailsListener, zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 94, e2);
        }
        return null;
    }

    public final /* synthetic */ Void QQOO(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                zzanVar = this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (zzanVar == null) {
                Illlllllllllllllllllllll(alternativeBillingOnlyReportingDetailsListener, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 119, null);
            } else {
                zzanVar.zzm(21, this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), com.google.android.gms.internal.play_billing.zze.zze(this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2246Www.longValue()), new zzbb(alternativeBillingOnlyReportingDetailsListener, this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2266Wwwwwwwwwwwwwwwwwwwwwww, null));
            }
        } catch (DeadObjectException e) {
            Illlllllllllllllllllllll(alternativeBillingOnlyReportingDetailsListener, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 70, e);
        } catch (Exception e2) {
            Illlllllllllllllllllllll(alternativeBillingOnlyReportingDetailsListener, zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 70, e2);
        }
        return null;
    }

    public final /* synthetic */ Object QQOOOO(Bundle bundle, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                zzanVar = this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (zzanVar == null) {
                O000000000(-1, 119, null);
            } else {
                zzanVar.zzt(12, this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), bundle, new zzbi(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            O000000000(-1, 118, e);
        } catch (Exception e2) {
            O000000000(6, 118, e2);
        }
        return null;
    }

    public final /* synthetic */ Object QQOOOOO(BillingConfigResponseListener billingConfigResponseListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                zzanVar = this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (zzanVar == null) {
                IIl(billingConfigResponseListener, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 119, null);
            } else {
                String packageName = this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName();
                String str = this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                long longValue = this.f2246Www.longValue();
                Bundle bundle = new Bundle();
                com.google.android.gms.internal.play_billing.zze.zzc(bundle, str, longValue);
                zzanVar.zzp(18, packageName, bundle, new zzbe(billingConfigResponseListener, this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2266Wwwwwwwwwwwwwwwwwwwwwww, null));
            }
        } catch (DeadObjectException e) {
            IIl(billingConfigResponseListener, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 62, e);
        } catch (Exception e2) {
            IIl(billingConfigResponseListener, zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 62, e2);
        }
        return null;
    }

    public final /* synthetic */ Object QQOOOOOO(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) throws Exception {
        Kkkkkkkkkkkkk(consumeParams, consumeResponseListener);
        return null;
    }

    public final /* synthetic */ Object QQOOOOOOO(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, AcknowledgePurchaseParams acknowledgePurchaseParams) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                zzanVar = this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (zzanVar == null) {
                Illllllllllllllllllllllllll(acknowledgePurchaseResponseListener, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 119, null);
                return null;
            }
            String packageName = this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName();
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = acknowledgePurchaseParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            String str = this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            long longValue = this.f2246Www.longValue();
            Bundle bundle = new Bundle();
            com.google.android.gms.internal.play_billing.zze.zzc(bundle, str, longValue);
            Bundle zzd = zzanVar.zzd(9, packageName, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, bundle);
            acknowledgePurchaseResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.google.android.gms.internal.play_billing.zze.zzb(zzd, "BillingClient"), com.google.android.gms.internal.play_billing.zze.zzh(zzd, "BillingClient")));
            return null;
        } catch (DeadObjectException e) {
            Illllllllllllllllllllllllll(acknowledgePurchaseResponseListener, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 28, e);
            return null;
        } catch (Exception e2) {
            Illllllllllllllllllllllllll(acknowledgePurchaseResponseListener, zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 28, e2);
            return null;
        }
    }

    public final /* synthetic */ Void Sssssssssss(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                zzanVar = this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (zzanVar == null) {
                Illlllllllllllllllllllllll(alternativeBillingOnlyAvailabilityListener, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 119, null);
            } else {
                zzanVar.zzr(21, this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), com.google.android.gms.internal.play_billing.zze.zze(this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2246Www.longValue()), new zzbg(alternativeBillingOnlyAvailabilityListener, this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2266Wwwwwwwwwwwwwwwwwwwwwww, null));
            }
        } catch (DeadObjectException e) {
            Illlllllllllllllllllllllll(alternativeBillingOnlyAvailabilityListener, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 69, e);
        } catch (Exception e2) {
            Illlllllllllllllllllllllll(alternativeBillingOnlyAvailabilityListener, zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 69, e2);
        }
        return null;
    }

    public final /* synthetic */ Void Wwwwwwwwwwwwwwwwww(ExternalOfferInformationDialogListener externalOfferInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                zzanVar = this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (zzanVar == null) {
                IIll(externalOfferInformationDialogListener, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 119, null);
            } else {
                zzanVar.zzq(22, this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), com.google.android.gms.internal.play_billing.zze.zze(this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2246Www.longValue()), new zzbf(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            IIll(externalOfferInformationDialogListener, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 98, e);
        } catch (Exception e2) {
            IIll(externalOfferInformationDialogListener, zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 98, e2);
        }
        return null;
    }

    public final /* synthetic */ Void Wwwwwwwwwwwwwwwwwww(AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                zzanVar = this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (zzanVar == null) {
                O0000000000(alternativeBillingOnlyInformationDialogListener, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 119, null);
            } else {
                zzanVar.zzo(21, this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), com.google.android.gms.internal.play_billing.zze.zze(this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2246Www.longValue()), new zzbd(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            O0000000000(alternativeBillingOnlyInformationDialogListener, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 74, e);
        } catch (Exception e2) {
            O0000000000(alternativeBillingOnlyInformationDialogListener, zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 74, e2);
        }
        return null;
    }

    public final /* synthetic */ Void Wwwwwwwwwwwwwwwwwwww(ExternalOfferAvailabilityListener externalOfferAvailabilityListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                zzanVar = this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (zzanVar == null) {
                Illlllllllllllllllllll(externalOfferAvailabilityListener, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 119, null);
            } else {
                zzanVar.zzs(22, this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), com.google.android.gms.internal.play_billing.zze.zze(this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2246Www.longValue()), new zzbh(externalOfferAvailabilityListener, this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2266Wwwwwwwwwwwwwwwwwwwwwww, null));
            }
        } catch (DeadObjectException e) {
            Illlllllllllllllllllll(externalOfferAvailabilityListener, zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww, 91, e);
        } catch (Exception e2) {
            Illlllllllllllllllllll(externalOfferAvailabilityListener, zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww, 91, e2);
        }
        return null;
    }

    public void Wwwwwwwwwwwwwwwwwwwww(SkuDetailsParams skuDetailsParams, final SkuDetailsResponseListener skuDetailsResponseListener) {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            BillingResult billingResult = zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww;
            O00000000(2, 8, billingResult);
            skuDetailsResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, null);
            return;
        }
        final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = skuDetailsParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = skuDetailsParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (TextUtils.isEmpty(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Please fix the input params. SKU type can't be empty.");
            BillingResult billingResult2 = zzcj.f2565Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            O00000000(49, 8, billingResult2);
            skuDetailsResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult2, null);
        } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Please fix the input params. The list of SKUs can't be empty.");
            BillingResult billingResult3 = zzcj.f2566Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            O00000000(48, 8, billingResult3);
            skuDetailsResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult3, null);
        } else if (Wwwwwwwwwwwwwwww(new Callable(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null, skuDetailsResponseListener) { // from class: com.android.billingclient.api.zzz

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ SkuDetailsResponseListener f2620Wwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ List f2621Wwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f2622Wwwwwwwwwwwwwwwwwwwwwwww;

            {
                this.f2620Wwwwwwwwwwwwwwwwwwwwww = skuDetailsResponseListener;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdc OO000 = BillingClientImpl.this.OO000(this.f2622Wwwwwwwwwwwwwwwwwwwwwwww, this.f2621Wwwwwwwwwwwwwwwwwwwwwww, null);
                this.f2620Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(OO000.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), OO000.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), OO000.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzab
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.this.Illllllll(skuDetailsResponseListener);
            }
        }, IIllllll(), Kkkkkkkkkkkkkk()) == null) {
            BillingResult Kkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkk();
            O00000000(25, 8, Kkkkkkkkkkkkkkkkk2);
            skuDetailsResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkkk2, null);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(Context context, PurchasesUpdatedListener purchasesUpdatedListener, PendingPurchasesParams pendingPurchasesParams, @Nullable zzb zzbVar, String str, @Nullable zzch zzchVar) {
        boolean z;
        this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
        zzks zzc = zzku.zzc();
        zzc.zzo(str);
        zzc.zzn(this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName());
        zzc.zzm(this.f2246Www.longValue());
        if (zzchVar != null) {
            this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww = zzchVar;
        } else {
            this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new zzcl(this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, (zzku) zzc.zzf());
        }
        if (purchasesUpdatedListener == null) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.f2273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new zzn(this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, purchasesUpdatedListener, null, zzbVar, null, this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f2250Wwwwwww = pendingPurchasesParams;
        if (zzbVar != null) {
            z = true;
        } else {
            z = false;
        }
        this.f2249Wwwwww = z;
        this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(Context context, PurchasesUpdatedListener purchasesUpdatedListener, PendingPurchasesParams pendingPurchasesParams, @Nullable UserChoiceBillingListener userChoiceBillingListener, String str, @Nullable zzch zzchVar) {
        boolean z;
        this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
        zzks zzc = zzku.zzc();
        zzc.zzo(str);
        zzc.zzn(this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName());
        zzc.zzm(this.f2246Www.longValue());
        if (zzchVar != null) {
            this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww = zzchVar;
        } else {
            this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new zzcl(this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, (zzku) zzc.zzf());
        }
        if (purchasesUpdatedListener == null) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.f2273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new zzn(this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, purchasesUpdatedListener, null, null, userChoiceBillingListener, this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f2250Wwwwwww = pendingPurchasesParams;
        if (userChoiceBillingListener != null) {
            z = true;
        } else {
            z = false;
        }
        this.f2249Wwwwww = z;
    }

    @Override // com.android.billingclient.api.BillingClient
    public void Wwwwwwwwwwwwwwwwwwwwwwww(BillingClientStateListener billingClientStateListener) {
        BillingResult billingResult;
        synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    billingResult = IIllll();
                } else if (this.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 1) {
                    com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Client is already in the process of connecting to billing service.");
                    billingResult = zzcj.f2567Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    O00000000(37, 6, billingResult);
                } else if (this.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 3) {
                    com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
                    billingResult = zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww;
                    O00000000(38, 6, billingResult);
                } else {
                    Kkkkkkkk(1);
                    Kkkkkkk();
                    com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Starting in-app billing setup.");
                    this.f2269Wwwwwwwwwwwwwwwwwwwwwwwwww = new zzba(this, billingClientStateListener, null);
                    Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                    intent.setPackage("com.android.vending");
                    List<ResolveInfo> queryIntentServices = this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageManager().queryIntentServices(intent, 0);
                    int i = 41;
                    if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                        ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                        i = 40;
                        if (serviceInfo != null) {
                            String str = serviceInfo.packageName;
                            String str2 = serviceInfo.name;
                            if (Objects.equals(str, "com.android.vending") && str2 != null) {
                                ComponentName componentName = new ComponentName(str, str2);
                                Intent intent2 = new Intent(intent);
                                intent2.setComponent(componentName);
                                intent2.putExtra("playBillingLibraryVersion", this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                                synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                                    try {
                                        if (this.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 2) {
                                            billingResult = IIllll();
                                        } else if (this.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != 1) {
                                            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Client state no longer CONNECTING, returning service disconnected.");
                                            billingResult = zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww;
                                            O00000000(117, 6, billingResult);
                                        } else {
                                            zzba zzbaVar = this.f2269Wwwwwwwwwwwwwwwwwwwwwwwwww;
                                            if (this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.bindService(intent2, zzbaVar, 1)) {
                                                com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Service was bonded successfully.");
                                                billingResult = null;
                                            } else {
                                                com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Connection to Billing service is blocked.");
                                                i = 39;
                                            }
                                        }
                                    } finally {
                                    }
                                }
                            } else {
                                com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "The device doesn't have valid Play Store.");
                            }
                        } else {
                            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "The device doesn't have valid Play Store.");
                        }
                    }
                    Kkkkkkkk(0);
                    com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Billing service unavailable on device.");
                    billingResult = zzcj.f2569Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    O00000000(i, 6, billingResult);
                }
            } finally {
            }
        }
        if (billingResult != null) {
            billingClientStateListener.onBillingSetupFinished(billingResult);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(QueryPurchasesParams queryPurchasesParams, PurchasesResponseListener purchasesResponseListener) {
        Kkkkkkkkk(queryPurchasesParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), purchasesResponseListener);
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(QueryPurchaseHistoryParams queryPurchaseHistoryParams, PurchaseHistoryResponseListener purchaseHistoryResponseListener) {
        Kkkkkkkkkk(queryPurchaseHistoryParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), purchaseHistoryResponseListener);
    }

    @Override // com.android.billingclient.api.BillingClient
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(final QueryProductDetailsParams queryProductDetailsParams, final ProductDetailsResponseListener productDetailsResponseListener) {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            BillingResult billingResult = zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww;
            O00000000(2, 7, billingResult);
            productDetailsResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, new ArrayList());
        } else if (!this.f2257Wwwwwwwwwwwwww) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Querying product details is not supported.");
            BillingResult billingResult2 = zzcj.f2550Wwwwwwwwwwwww;
            O00000000(20, 7, billingResult2);
            productDetailsResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult2, new ArrayList());
        } else if (Wwwwwwwwwwwwwwww(new Callable() { // from class: com.android.billingclient.api.zzam
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzbj OO000000000 = BillingClientImpl.this.OO000000000(queryProductDetailsParams);
                productDetailsResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(OO000000000.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), OO000000000.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), OO000000000.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzan
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.this.Illlllllllll(productDetailsResponseListener);
            }
        }, IIllllll(), Kkkkkkkkkkkkkk()) == null) {
            BillingResult Kkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkk();
            O00000000(25, 7, Kkkkkkkkkkkkkkkkk2);
            productDetailsResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkkk2, new ArrayList());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:172:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x046f  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0477  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x04ac  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x04ba A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0590  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0597 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.android.billingclient.api.BillingClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.android.billingclient.api.BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.app.Activity r36, final com.android.billingclient.api.BillingFlowParams r37) {
        /*
            Method dump skipped, instructions count: 1539
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.BillingClientImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.app.Activity, com.android.billingclient.api.BillingFlowParams):com.android.billingclient.api.BillingResult");
    }

    @Override // com.android.billingclient.api.BillingClient
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                z = false;
                if (this.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 2 && this.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww != null && this.f2269Wwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // com.android.billingclient.api.BillingClient
    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int i;
        synchronized (this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            i = this.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return i;
    }

    @Override // com.android.billingclient.api.BillingClient
    @zzh
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GetBillingConfigParams getBillingConfigParams, final BillingConfigResponseListener billingConfigResponseListener) {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Service disconnected.");
            BillingResult billingResult = zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww;
            O00000000(2, 13, billingResult);
            billingConfigResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, null);
        } else if (!this.f2256Wwwwwwwwwwwww) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Current client doesn't support get billing config.");
            BillingResult billingResult2 = zzcj.f2545Wwwwwwww;
            O00000000(32, 13, billingResult2);
            billingConfigResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult2, null);
        } else if (Wwwwwwwwwwwwwwww(new Callable() { // from class: com.android.billingclient.api.zzv
            @Override // java.util.concurrent.Callable
            public final Object call() {
                BillingClientImpl.this.QQOOOOO(billingConfigResponseListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzw
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.this.Illllllllllllll(billingConfigResponseListener);
            }
        }, IIllllll(), Kkkkkkkkkkkkkk()) == null) {
            BillingResult Kkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkk();
            O00000000(25, 13, Kkkkkkkkkkkkkkkkk2);
            billingConfigResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkkk2, null);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final ConsumeParams consumeParams, final ConsumeResponseListener consumeResponseListener) {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            BillingResult billingResult = zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww;
            O00000000(2, 4, billingResult);
            consumeResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult, consumeParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        } else if (Wwwwwwwwwwwwwwww(new Callable() { // from class: com.android.billingclient.api.zzag
            @Override // java.util.concurrent.Callable
            public final Object call() {
                BillingClientImpl.this.QQOOOOOO(consumeParams, consumeResponseListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzah
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.this.Illlllllllllllllll(consumeResponseListener, consumeParams);
            }
        }, IIllllll(), Kkkkkkkkkkkkkk()) == null) {
            BillingResult Kkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkk();
            O00000000(25, 4, Kkkkkkkkkkkkkkkkk2);
            consumeResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkkk2, consumeParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final AcknowledgePurchaseParams acknowledgePurchaseParams, final AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            BillingResult billingResult = zzcj.f2559Wwwwwwwwwwwwwwwwwwwwww;
            O00000000(2, 3, billingResult);
            acknowledgePurchaseResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult);
        } else if (TextUtils.isEmpty(acknowledgePurchaseParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Please provide a valid purchase token.");
            BillingResult billingResult2 = zzcj.f2562Wwwwwwwwwwwwwwwwwwwwwwwww;
            O00000000(26, 3, billingResult2);
            acknowledgePurchaseResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult2);
        } else if (!this.f2263Wwwwwwwwwwwwwwwwwwww) {
            BillingResult billingResult3 = zzcj.f2570Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            O00000000(27, 3, billingResult3);
            acknowledgePurchaseResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult3);
        } else if (Wwwwwwwwwwwwwwww(new Callable() { // from class: com.android.billingclient.api.zzt
            @Override // java.util.concurrent.Callable
            public final Object call() {
                BillingClientImpl.this.QQOOOOOOO(acknowledgePurchaseResponseListener, acknowledgePurchaseParams);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzu
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.this.Illlllllllllllllllll(acknowledgePurchaseResponseListener);
            }
        }, IIllllll(), Kkkkkkkkkkkkkk()) == null) {
            BillingResult Kkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkk();
            O00000000(25, 3, Kkkkkkkkkkkkkkkkk2);
            acknowledgePurchaseResponseListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkkk2);
        }
    }

    @AnyThread
    public BillingClientImpl(@Nullable String str, Context context, @Nullable zzch zzchVar, @Nullable ExecutorService executorService) {
        this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Object();
        this.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
        this.f2274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());
        this.f2266Wwwwwwwwwwwwwwwwwwwwwww = 0;
        Long valueOf = Long.valueOf(new Random().nextLong());
        this.f2246Www = valueOf;
        String Kkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkk();
        this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Kkkkkkkkkkkkkkk2;
        this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
        zzks zzc = zzku.zzc();
        zzc.zzo(Kkkkkkkkkkkkkkk2);
        zzc.zzn(this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName());
        zzc.zzm(valueOf.longValue());
        this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new zzcl(this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, (zzku) zzc.zzf());
        this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName();
    }

    @AnyThread
    public BillingClientImpl(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, zzco zzcoVar, @Nullable zzch zzchVar, @Nullable ExecutorService executorService) {
        this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Object();
        this.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
        this.f2274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());
        this.f2266Wwwwwwwwwwwwwwwwwwwwwww = 0;
        Long valueOf = Long.valueOf(new Random().nextLong());
        this.f2246Www = valueOf;
        this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Kkkkkkkkkkkkkkk();
        this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
        zzks zzc = zzku.zzc();
        zzc.zzo(Kkkkkkkkkkkkkkk());
        zzc.zzn(this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName());
        zzc.zzm(valueOf.longValue());
        this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new zzcl(this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, (zzku) zzc.zzf());
        com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.f2273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new zzn(this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, null, null, null, null, this.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f2250Wwwwwww = pendingPurchasesParams;
        this.f2272Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName();
    }

    @AnyThread
    public BillingClientImpl(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, @Nullable zzb zzbVar, @Nullable zzch zzchVar, @Nullable ExecutorService executorService) {
        String Kkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkk();
        this.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Object();
        this.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
        this.f2274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());
        this.f2266Wwwwwwwwwwwwwwwwwwwwwww = 0;
        this.f2246Www = Long.valueOf(new Random().nextLong());
        this.f2275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Kkkkkkkkkkkkkkk2;
        Wwwwwwwwwwwwwwwwwwwwww(context, purchasesUpdatedListener, pendingPurchasesParams, null, Kkkkkkkkkkkkkkk2, null);
    }

    @AnyThread
    public BillingClientImpl(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, @Nullable UserChoiceBillingListener userChoiceBillingListener, @Nullable zzch zzchVar, @Nullable ExecutorService executorService) {
        this(context, pendingPurchasesParams, purchasesUpdatedListener, Kkkkkkkkkkkkkkk(), null, userChoiceBillingListener, null, null);
    }
}
