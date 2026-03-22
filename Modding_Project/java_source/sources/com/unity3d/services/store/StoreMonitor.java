package com.unity3d.services.store;

import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import com.unity3d.services.core.properties.ClientProperties;
import com.unity3d.services.store.core.StoreExceptionHandler;
import com.unity3d.services.store.core.StoreLifecycleListener;
import com.unity3d.services.store.gpbl.StoreBilling;
import com.unity3d.services.store.gpbl.listeners.BillingInitializationListener;
import com.unity3d.services.store.gpbl.listeners.FeatureSupportedListener;
import com.unity3d.services.store.gpbl.listeners.PurchaseHistoryResponseListener;
import com.unity3d.services.store.gpbl.listeners.PurchasesResponseListener;
import com.unity3d.services.store.gpbl.listeners.SkuDetailsResponseListener;
import com.unity3d.services.store.gpbl.listeners.StoreEventListener;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J(\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016J \u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0018\u001a\u00020\u0019J2\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0010\u0010\u001b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!J \u0010\"\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010#\u001a\u00020$J&\u0010%\u001a\u00020\u000f2\u0016\u0010&\u001a\u0012\u0012\u0004\u0012\u00020\u00130'j\b\u0012\u0004\u0012\u00020\u0013`(2\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020\u000fR\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/unity3d/services/store/StoreMonitor;", "", "storeExceptionHandler", "Lcom/unity3d/services/store/core/StoreExceptionHandler;", "(Lcom/unity3d/services/store/core/StoreExceptionHandler;)V", "_isInitialized", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "isInitialized", "()Z", "storeBilling", "Lcom/unity3d/services/store/gpbl/StoreBilling;", "storeLifecycleListener", "Lcom/unity3d/services/store/core/StoreLifecycleListener;", "getPurchaseHistory", "", "operationId", "", "purchaseType", "", "maxPurchases", "purchaseHistoryResponseListener", "Lcom/unity3d/services/store/gpbl/listeners/PurchaseHistoryResponseListener;", "getPurchases", "purchasesResponseListener", "Lcom/unity3d/services/store/gpbl/listeners/PurchasesResponseListener;", "getSkuDetails", "skuList", "", "skuDetailsResponseListener", "Lcom/unity3d/services/store/gpbl/listeners/SkuDetailsResponseListener;", MobileAdsBridgeBase.initializeMethodName, "billingInitializationListener", "Lcom/unity3d/services/store/gpbl/listeners/BillingInitializationListener;", "isFeatureSupported", "featureSupportedListener", "Lcom/unity3d/services/store/gpbl/listeners/FeatureSupportedListener;", "startPurchaseTracking", "purchaseTypes", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "storeEventListener", "Lcom/unity3d/services/store/gpbl/listeners/StoreEventListener;", "stopPurchaseTracking", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class StoreMonitor {
    @NotNull
    private final MutableStateFlow<Boolean> _isInitialized = StateFlowKt.MutableStateFlow(Boolean.FALSE);
    @Nullable
    private StoreBilling storeBilling;
    @NotNull
    private final StoreExceptionHandler storeExceptionHandler;
    @Nullable
    private StoreLifecycleListener storeLifecycleListener;

    public StoreMonitor(@NotNull StoreExceptionHandler storeExceptionHandler) {
        this.storeExceptionHandler = storeExceptionHandler;
    }

    public final void getPurchaseHistory(int i, @Nullable String str, int i2, @NotNull PurchaseHistoryResponseListener purchaseHistoryResponseListener) {
        try {
            StoreBilling storeBilling = this.storeBilling;
            if (storeBilling != null) {
                storeBilling.getPurchaseHistory(str, i2, purchaseHistoryResponseListener);
            }
        } catch (Exception e) {
            this.storeExceptionHandler.handleStoreException(StoreEvent.PURCHASE_HISTORY_LIST_REQUEST_ERROR, i, e);
        }
    }

    public final void getPurchases(int i, @Nullable String str, @NotNull PurchasesResponseListener purchasesResponseListener) {
        try {
            StoreBilling storeBilling = this.storeBilling;
            if (storeBilling != null) {
                if (storeBilling != null) {
                    storeBilling.getPurchases(str, purchasesResponseListener);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Required value was null.");
        } catch (Exception e) {
            this.storeExceptionHandler.handleStoreException(StoreEvent.PURCHASES_REQUEST_ERROR, i, e);
        }
    }

    public final void getSkuDetails(int i, @Nullable String str, @Nullable List<String> list, @NotNull SkuDetailsResponseListener skuDetailsResponseListener) {
        try {
            StoreBilling storeBilling = this.storeBilling;
            if (storeBilling != null) {
                storeBilling.getSkuDetails(str, list, skuDetailsResponseListener);
            }
        } catch (Exception e) {
            this.storeExceptionHandler.handleStoreException(StoreEvent.SKU_DETAILS_LIST_REQUEST_ERROR, i, e);
        }
    }

    public final void initialize(@NotNull BillingInitializationListener billingInitializationListener) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if (isInitialized()) {
            billingInitializationListener.onIsAlreadyInitialized();
            return;
        }
        StoreBilling storeBilling = new StoreBilling(ClientProperties.getApplicationContext(), billingInitializationListener);
        this.storeBilling = storeBilling;
        storeBilling.initialize(billingInitializationListener);
        this._isInitialized.setValue(Boolean.TRUE);
    }

    public final int isFeatureSupported(int i, @Nullable String str, @NotNull FeatureSupportedListener featureSupportedListener) {
        int i2 = -1;
        try {
            StoreBilling storeBilling = this.storeBilling;
            if (storeBilling != null) {
                i2 = storeBilling.isFeatureSupported(str);
            }
            featureSupportedListener.onFeatureSupported(i2);
            return i2;
        } catch (Exception e) {
            this.storeExceptionHandler.handleStoreException(StoreEvent.IS_FEATURE_SUPPORTED_REQUEST_ERROR, i, e);
            return i2;
        }
    }

    public final boolean isInitialized() {
        return this._isInitialized.getValue().booleanValue();
    }

    public final void startPurchaseTracking(@NotNull ArrayList<String> arrayList, @NotNull StoreEventListener storeEventListener) {
        if (this.storeLifecycleListener != null) {
            stopPurchaseTracking();
        }
        this.storeLifecycleListener = new StoreLifecycleListener(arrayList, this.storeBilling, storeEventListener);
        ClientProperties.getApplication().registerActivityLifecycleCallbacks(this.storeLifecycleListener);
    }

    public final void stopPurchaseTracking() {
        if (this.storeLifecycleListener != null) {
            ClientProperties.getApplication().unregisterActivityLifecycleCallbacks(this.storeLifecycleListener);
            this.storeLifecycleListener = null;
        }
    }
}
