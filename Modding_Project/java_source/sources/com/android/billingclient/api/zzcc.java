package com.android.billingclient.api;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.zzel;
import com.google.android.gms.internal.play_billing.zzeu;
import com.google.android.gms.internal.play_billing.zzew;
import com.google.android.gms.internal.play_billing.zzfb;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzkd;
import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.function.Consumer;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class zzcc extends BillingClientImpl {
    @Nullable

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkk */
    public volatile zzew f2533Kkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkk */
    public volatile zzca f2534Kkkkkkkkkkkkkkkkkkkkkkk;
    @Nullable

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkk */
    public volatile com.google.android.gms.internal.play_billing.zzav f2535Kkkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkk */
    public volatile int f2536Kkkkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkkk */
    public final Context f2537Kkkkkkkkkkkkkkkkkkkkkkkkkk;

    @AnyThread
    public zzcc(@Nullable String str, Context context, @Nullable zzch zzchVar, @Nullable ExecutorService executorService) {
        super(null, context, null, null);
        this.f2536Kkkkkkkkkkkkkkkkkkkkkkkkk = 0;
        this.f2537Kkkkkkkkkkkkkkkkkkkkkkkkkk = context;
    }

    public static final boolean Oooooo(int i) {
        if (i > 0) {
            return true;
        }
        return false;
    }

    public final /* synthetic */ BillingResult Llllllllll(Activity activity, BillingFlowParams billingFlowParams) throws Exception {
        return super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity, billingFlowParams);
    }

    public final void Lllllllllll(int i, Consumer consumer, Runnable runnable) {
        zzel.zzc(zzel.zzb(Oooo(i), 28500L, TimeUnit.MILLISECONDS, Oooooooo()), new zzby(this, i, consumer, runnable), OO0());
    }

    public final void Llllllllllll(int i) {
        zzkd Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        Objects.requireNonNull(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "ApiSuccess should not be null");
        OO000000().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public final void Ooo(int i, int i2, BillingResult billingResult) {
        zzjz Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = zzcg.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, billingResult);
        Objects.requireNonNull(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "ApiFailure should not be null");
        OO000000().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public final zzeu Oooo(int i) {
        if (!Ssss()) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClientTesting", "Billing Override Service is not ready.");
            Ooo(106, 28, zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(-1, "Billing Override Service connection is disconnected."));
            return zzel.zza(0);
        }
        return com.google.android.gms.internal.play_billing.zzv.zza(new zzbs(this, i));
    }

    public final BillingResult Ooooo(int i, int i2) {
        BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2, "Billing override value was set by a license tester.");
        Ooo(105, i, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final synchronized void Ooooooo() {
        if (Ssss()) {
            com.google.android.gms.internal.play_billing.zze.zzk("BillingClientTesting", "Billing Override Service connection is valid. No need to re-initialize.");
            Llllllllllll(26);
            return;
        }
        int i = 1;
        if (this.f2536Kkkkkkkkkkkkkkkkkkkkkkkkk == 1) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClientTesting", "Client is already in the process of connecting to Billing Override Service.");
        } else if (this.f2536Kkkkkkkkkkkkkkkkkkkkkkkkk == 3) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClientTesting", "Billing Override Service Client was already closed and can't be reused. Please create another instance.");
            Ooo(38, 26, zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(-1, "Billing Override Service connection is disconnected."));
        } else {
            this.f2536Kkkkkkkkkkkkkkkkkkkkkkkkk = 1;
            com.google.android.gms.internal.play_billing.zze.zzk("BillingClientTesting", "Starting Billing Override Service setup.");
            this.f2534Kkkkkkkkkkkkkkkkkkkkkkk = new zzca(this, null);
            Intent intent = new Intent("com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND");
            intent.setPackage("com.google.android.apps.play.billingtestcompanion");
            List<ResolveInfo> queryIntentServices = this.f2537Kkkkkkkkkkkkkkkkkkkkkkkkkk.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                if (serviceInfo != null) {
                    String str = serviceInfo.packageName;
                    String str2 = serviceInfo.name;
                    if (Objects.equals(str, "com.google.android.apps.play.billingtestcompanion") && str2 != null) {
                        ComponentName componentName = new ComponentName(str, str2);
                        Intent intent2 = new Intent(intent);
                        intent2.setComponent(componentName);
                        if (this.f2537Kkkkkkkkkkkkkkkkkkkkkkkkkk.bindService(intent2, this.f2534Kkkkkkkkkkkkkkkkkkkkkkk, 1)) {
                            com.google.android.gms.internal.play_billing.zze.zzk("BillingClientTesting", "Billing Override Service was bonded successfully.");
                            return;
                        }
                        com.google.android.gms.internal.play_billing.zze.zzl("BillingClientTesting", "Connection to Billing Override Service is blocked.");
                    } else {
                        com.google.android.gms.internal.play_billing.zze.zzl("BillingClientTesting", "The device doesn't have valid Play Billing Lab.");
                    }
                    i = 39;
                }
            } else {
                i = 41;
            }
            this.f2536Kkkkkkkkkkkkkkkkkkkkkkkkk = 0;
            com.google.android.gms.internal.play_billing.zze.zzk("BillingClientTesting", "Billing Override Service unavailable on device.");
            Ooo(i, 26, zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(2, "Billing Override Service unavailable on device."));
        }
    }

    public final synchronized zzew Oooooooo() {
        try {
            if (this.f2533Kkkkkkkkkkkkkkkkkkkkkk == null) {
                this.f2533Kkkkkkkkkkkkkkkkkkkkkk = zzfb.zzb(Executors.newSingleThreadScheduledExecutor());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f2533Kkkkkkkkkkkkkkkkkkkkkk;
    }

    public final int Ooooooooo(zzeu zzeuVar) {
        try {
            return ((Integer) zzeuVar.get(28500L, TimeUnit.MILLISECONDS)).intValue();
        } catch (TimeoutException e) {
            Ooo(114, 28, zzcj.f2539Kkkkkkkkkkkkkkkkkkkkkkkkkk);
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClientTesting", "Asynchronous call to Billing Override Service timed out.", e);
            return 0;
        } catch (Exception e2) {
            if (e2 instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            Ooo(107, 28, zzcj.f2539Kkkkkkkkkkkkkkkkkkkkkkkkkk);
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClientTesting", "An error occurred while retrieving billing override.", e2);
            return 0;
        }
    }

    public final /* synthetic */ Object Ss(int i, com.google.android.gms.internal.play_billing.zzr zzrVar) throws Exception {
        String str;
        try {
            if (this.f2535Kkkkkkkkkkkkkkkkkkkkkkkk != null) {
                com.google.android.gms.internal.play_billing.zzav zzavVar = this.f2535Kkkkkkkkkkkkkkkkkkkkkkkk;
                String packageName = this.f2537Kkkkkkkkkkkkkkkkkkkkkkkkkk.getPackageName();
                switch (i) {
                    case 2:
                        str = "LAUNCH_BILLING_FLOW";
                        break;
                    case 3:
                        str = "ACKNOWLEDGE_PURCHASE";
                        break;
                    case 4:
                        str = "CONSUME_ASYNC";
                        break;
                    case 5:
                        str = "IS_FEATURE_SUPPORTED";
                        break;
                    case 6:
                        str = "START_CONNECTION";
                        break;
                    case 7:
                        str = "QUERY_PRODUCT_DETAILS_ASYNC";
                        break;
                    default:
                        str = "QUERY_SKU_DETAILS_ASYNC";
                        break;
                }
                zzavVar.zza(packageName, str, new zzbz(zzrVar));
                return "billingOverrideService.getBillingOverride";
            }
            throw null;
        } catch (Exception e) {
            Ooo(107, 28, zzcj.f2539Kkkkkkkkkkkkkkkkkkkkkkkkkk);
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClientTesting", "An error occurred while retrieving billing override.", e);
            zzrVar.zzb(0);
            return "billingOverrideService.getBillingOverride";
        }
    }

    public final synchronized boolean Ssss() {
        if (this.f2536Kkkkkkkkkkkkkkkkkkkkkkkkk == 2 && this.f2535Kkkkkkkkkkkkkkkkkkkkkkkk != null) {
            if (this.f2534Kkkkkkkkkkkkkkkkkkkkkkk != null) {
                return true;
            }
        }
        return false;
    }

    public final /* synthetic */ void Ssssss(SkuDetailsParams skuDetailsParams, SkuDetailsResponseListener skuDetailsResponseListener) {
        super.Wwwwwwwwwwwwwwwwwwwww(skuDetailsParams, skuDetailsResponseListener);
    }

    public final /* synthetic */ void Sssssss(QueryProductDetailsParams queryProductDetailsParams, ProductDetailsResponseListener productDetailsResponseListener) {
        super.Wwwwwwwwwwwwwwwwwwwwwwwwwww(queryProductDetailsParams, productDetailsResponseListener);
    }

    public final /* synthetic */ void Ssssssss(BillingResult billingResult) {
        super.OO0000(billingResult);
    }

    public final /* synthetic */ void Sssssssss(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) {
        super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(consumeParams, consumeResponseListener);
    }

    public final /* synthetic */ void Ssssssssss(AcknowledgePurchaseParams acknowledgePurchaseParams, AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(acknowledgePurchaseParams, acknowledgePurchaseResponseListener);
    }

    @Override // com.android.billingclient.api.BillingClientImpl, com.android.billingclient.api.BillingClient
    public final void Wwwwwwwwwwwwwwwwwwwwwwww(BillingClientStateListener billingClientStateListener) {
        Ooooooo();
        super.Wwwwwwwwwwwwwwwwwwwwwwww(billingClientStateListener);
    }

    @Override // com.android.billingclient.api.BillingClientImpl, com.android.billingclient.api.BillingClient
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(final QueryProductDetailsParams queryProductDetailsParams, final ProductDetailsResponseListener productDetailsResponseListener) {
        Lllllllllll(7, new Consumer() { // from class: com.android.billingclient.api.zzbn
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ArrayList arrayList = new ArrayList();
                ProductDetailsResponseListener.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((BillingResult) obj, arrayList);
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        }, new Runnable() { // from class: com.android.billingclient.api.zzbp
            @Override // java.lang.Runnable
            public final void run() {
                zzcc.this.Sssssss(queryProductDetailsParams, productDetailsResponseListener);
            }
        });
    }

    @Override // com.android.billingclient.api.BillingClientImpl, com.android.billingclient.api.BillingClient
    public final BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(final Activity activity, final BillingFlowParams billingFlowParams) {
        Consumer consumer = new Consumer() { // from class: com.android.billingclient.api.zzbx
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                zzcc.this.Ssssssss((BillingResult) obj);
            }

            public /* synthetic */ Consumer andThen(Consumer consumer2) {
                return Consumer$CC.$default$andThen(this, consumer2);
            }
        };
        Callable callable = new Callable() { // from class: com.android.billingclient.api.zzbo
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzcc.this.Llllllllll(activity, billingFlowParams);
            }
        };
        int Ooooooooo = Ooooooooo(Oooo(2));
        if (Oooooo(Ooooooooo)) {
            BillingResult Ooooo = Ooooo(2, Ooooooooo);
            consumer.accept(Ooooo);
            return Ooooo;
        }
        try {
            return (BillingResult) callable.call();
        } catch (Exception e) {
            BillingResult billingResult = zzcj.f2561Wwwwwwwwwwwwwwwwwwwwwwww;
            Ooo(115, 2, billingResult);
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClientTesting", "An internal error occurred.", e);
            return billingResult;
        }
    }

    @Override // com.android.billingclient.api.BillingClientImpl, com.android.billingclient.api.BillingClient
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final ConsumeParams consumeParams, final ConsumeResponseListener consumeResponseListener) {
        Lllllllllll(4, new Consumer() { // from class: com.android.billingclient.api.zzbq
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ConsumeResponseListener.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((BillingResult) obj, consumeParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        }, new Runnable() { // from class: com.android.billingclient.api.zzbr
            @Override // java.lang.Runnable
            public final void run() {
                zzcc.this.Sssssssss(consumeParams, consumeResponseListener);
            }
        });
    }

    @Override // com.android.billingclient.api.BillingClientImpl, com.android.billingclient.api.BillingClient
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final AcknowledgePurchaseParams acknowledgePurchaseParams, final AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        Objects.requireNonNull(acknowledgePurchaseResponseListener);
        Lllllllllll(3, new Consumer() { // from class: com.android.billingclient.api.zzbv
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AcknowledgePurchaseResponseListener.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((BillingResult) obj);
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        }, new Runnable() { // from class: com.android.billingclient.api.zzbw
            @Override // java.lang.Runnable
            public final void run() {
                zzcc.this.Ssssssssss(acknowledgePurchaseParams, acknowledgePurchaseResponseListener);
            }
        });
    }

    @AnyThread
    public zzcc(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, zzco zzcoVar, @Nullable zzch zzchVar, @Nullable ExecutorService executorService) {
        super(null, pendingPurchasesParams, context, null, null, null);
        this.f2536Kkkkkkkkkkkkkkkkkkkkkkkkk = 0;
        this.f2537Kkkkkkkkkkkkkkkkkkkkkkkkkk = context;
    }

    @AnyThread
    public zzcc(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, @Nullable zzb zzbVar, @Nullable zzch zzchVar, @Nullable ExecutorService executorService) {
        super((String) null, pendingPurchasesParams, context, purchasesUpdatedListener, (zzb) null, (zzch) null, (ExecutorService) null);
        this.f2536Kkkkkkkkkkkkkkkkkkkkkkkkk = 0;
        this.f2537Kkkkkkkkkkkkkkkkkkkkkkkkkk = context;
    }

    @AnyThread
    public zzcc(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, @Nullable UserChoiceBillingListener userChoiceBillingListener, @Nullable zzch zzchVar, @Nullable ExecutorService executorService) {
        super((String) null, pendingPurchasesParams, context, purchasesUpdatedListener, userChoiceBillingListener, (zzch) null, (ExecutorService) null);
        this.f2536Kkkkkkkkkkkkkkkkkkkkkkkkk = 0;
        this.f2537Kkkkkkkkkkkkkkkkkkkkkkkkkk = context;
    }
}
