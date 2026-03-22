package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import com.android.billingclient.api.PendingPurchasesParams;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.ExecutorService;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class BillingClient {

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface BillingResponseCode {
    }

    /* compiled from: Proguard */
    @AnyThread
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile boolean f2240Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile boolean f2241Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile UserChoiceBillingListener f2242Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile PurchasesUpdatedListener f2243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f2244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile PendingPurchasesParams f2245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public /* synthetic */ Builder(Context context, zzo zzoVar) {
            this.f2244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            try {
                return this.f2244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageManager().getApplicationInfo(this.f2244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), 128).metaData.getBoolean("com.google.android.play.billingclient.enableBillingOverridesTesting", false);
            } catch (Exception e) {
                com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Unable to retrieve metadata value for enableBillingOverridesTesting.", e);
                return false;
            }
        }

        @NonNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull PurchasesUpdatedListener purchasesUpdatedListener) {
            this.f2243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = purchasesUpdatedListener;
            return this;
        }

        @NonNull
        @zzj
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull PendingPurchasesParams pendingPurchasesParams) {
            this.f2245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = pendingPurchasesParams;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            PendingPurchasesParams.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = PendingPurchasesParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            return this;
        }

        @NonNull
        public BillingClient Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f2244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                if (this.f2243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                    if (this.f2242Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                        if (!this.f2241Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && !this.f2240Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                            throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
                        }
                        Context context = this.f2244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            return new zzcc(null, context, null, null);
                        }
                        return new BillingClientImpl(null, context, null, null);
                    }
                    throw new IllegalArgumentException("Please provide a valid listener for Google Play Billing purchases updates when enabling User Choice Billing.");
                } else if (this.f2245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null && this.f2245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    if (this.f2243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                        if (this.f2242Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                            PendingPurchasesParams pendingPurchasesParams = this.f2245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            Context context2 = this.f2244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            PurchasesUpdatedListener purchasesUpdatedListener = this.f2243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                return new zzcc((String) null, pendingPurchasesParams, context2, purchasesUpdatedListener, (zzb) null, (zzch) null, (ExecutorService) null);
                            }
                            return new BillingClientImpl((String) null, pendingPurchasesParams, context2, purchasesUpdatedListener, (zzb) null, (zzch) null, (ExecutorService) null);
                        }
                        PendingPurchasesParams pendingPurchasesParams2 = this.f2245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        Context context3 = this.f2244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        PurchasesUpdatedListener purchasesUpdatedListener2 = this.f2243Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        UserChoiceBillingListener userChoiceBillingListener = this.f2242Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            return new zzcc((String) null, pendingPurchasesParams2, context3, purchasesUpdatedListener2, userChoiceBillingListener, (zzch) null, (ExecutorService) null);
                        }
                        return new BillingClientImpl((String) null, pendingPurchasesParams2, context3, purchasesUpdatedListener2, userChoiceBillingListener, (zzch) null, (ExecutorService) null);
                    }
                    PendingPurchasesParams pendingPurchasesParams3 = this.f2245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    Context context4 = this.f2244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        return new zzcc(null, pendingPurchasesParams3, context4, null, null, null);
                    }
                    return new BillingClientImpl(null, pendingPurchasesParams3, context4, null, null, null);
                } else {
                    throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
                }
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface ConnectionState {
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface FeatureType {
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface ProductType {
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes3.dex */
    public @interface SkuType {
    }

    @NonNull
    @AnyThread
    public static Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
        return new Builder(context, null);
    }

    @AnyThread
    public abstract void Wwwwwwwwwwwwwwwwwwwwwwww(@NonNull BillingClientStateListener billingClientStateListener);

    @AnyThread
    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwww(@NonNull QueryPurchasesParams queryPurchasesParams, @NonNull PurchasesResponseListener purchasesResponseListener);

    @AnyThread
    @Deprecated
    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull QueryPurchaseHistoryParams queryPurchaseHistoryParams, @NonNull PurchaseHistoryResponseListener purchaseHistoryResponseListener);

    @AnyThread
    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull QueryProductDetailsParams queryProductDetailsParams, @NonNull ProductDetailsResponseListener productDetailsResponseListener);

    @NonNull
    @UiThread
    public abstract BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Activity activity, @NonNull BillingFlowParams billingFlowParams);

    @AnyThread
    public abstract boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @AnyThread
    public abstract int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @AnyThread
    @zzh
    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull GetBillingConfigParams getBillingConfigParams, @NonNull BillingConfigResponseListener billingConfigResponseListener);

    @AnyThread
    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ConsumeParams consumeParams, @NonNull ConsumeResponseListener consumeResponseListener);

    @AnyThread
    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull AcknowledgePurchaseParams acknowledgePurchaseParams, @NonNull AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener);
}
