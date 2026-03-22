package com.android.billingclient.api;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001c\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086@¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001c\u0010\b\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0006H\u0086@¢\u0006\u0004\b\b\u0010\t\u001a\u001c\u0010\f\u001a\u00020\u000b*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\nH\u0086@¢\u0006\u0004\b\f\u0010\r\u001a\u001c\u0010\u0010\u001a\u00020\u000f*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u000eH\u0086@¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u001c\u0010\u0014\u001a\u00020\u0013*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0012H\u0086@¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/android/billingclient/api/BillingClient;", "Lcom/android/billingclient/api/AcknowledgePurchaseParams;", "params", "Lcom/android/billingclient/api/BillingResult;", "Wwwwwwwwwwwwwwwwwwwwww", "(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/android/billingclient/api/ConsumeParams;", "Lcom/android/billingclient/api/ConsumeResult;", "Wwwwwwwwwwwwwwwwwwwww", "(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/ConsumeParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/android/billingclient/api/QueryProductDetailsParams;", "Lcom/android/billingclient/api/ProductDetailsResult;", "Wwwwwwwwwwwwwwwwwwww", "(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/QueryProductDetailsParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/android/billingclient/api/QueryPurchaseHistoryParams;", "Lcom/android/billingclient/api/PurchaseHistoryResult;", "Wwwwwwwwwwwwwwwwwww", "(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/QueryPurchaseHistoryParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/android/billingclient/api/QueryPurchasesParams;", "Lcom/android/billingclient/api/PurchasesResult;", "Wwwwwwwwwwwwwwwwww", "(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/QueryPurchasesParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "java.com.google.android.libraries.play.billing.public.ktbilling_granule"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BillingClientKotlinKt {
    @RecentlyNullable
    public static final Object Wwwwwwwwwwwwwwwwww(@RecentlyNonNull BillingClient billingClient, @RecentlyNonNull QueryPurchasesParams queryPurchasesParams, @RecentlyNonNull Continuation<? super PurchasesResult> continuation) {
        final CompletableDeferred CompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        billingClient.Wwwwwwwwwwwwwwwwwwwwwwwww(queryPurchasesParams, new PurchasesResponseListener() { // from class: com.android.billingclient.api.BillingClientKotlinKt$$ExternalSyntheticLambda10
            @Override // com.android.billingclient.api.PurchasesResponseListener
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@RecentlyNonNull BillingResult billingResult, @RecentlyNonNull List list) {
                CompletableDeferred.this.complete(new PurchasesResult(billingResult, list));
            }
        });
        return CompletableDeferred$default.await(continuation);
    }

    @RecentlyNullable
    public static final Object Wwwwwwwwwwwwwwwwwww(@RecentlyNonNull BillingClient billingClient, @RecentlyNonNull QueryPurchaseHistoryParams queryPurchaseHistoryParams, @RecentlyNonNull Continuation<? super PurchaseHistoryResult> continuation) {
        final CompletableDeferred CompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        billingClient.Wwwwwwwwwwwwwwwwwwwwwwwwww(queryPurchaseHistoryParams, new PurchaseHistoryResponseListener() { // from class: com.android.billingclient.api.BillingClientKotlinKt$$ExternalSyntheticLambda6
            @Override // com.android.billingclient.api.PurchaseHistoryResponseListener
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@RecentlyNonNull BillingResult billingResult, @RecentlyNonNull List list) {
                CompletableDeferred.this.complete(new PurchaseHistoryResult(billingResult, list));
            }
        });
        return CompletableDeferred$default.await(continuation);
    }

    @RecentlyNullable
    public static final Object Wwwwwwwwwwwwwwwwwwww(@RecentlyNonNull BillingClient billingClient, @RecentlyNonNull QueryProductDetailsParams queryProductDetailsParams, @RecentlyNonNull Continuation<? super ProductDetailsResult> continuation) {
        final CompletableDeferred CompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        billingClient.Wwwwwwwwwwwwwwwwwwwwwwwwwww(queryProductDetailsParams, new ProductDetailsResponseListener() { // from class: com.android.billingclient.api.BillingClientKotlinKt$$ExternalSyntheticLambda3
            @Override // com.android.billingclient.api.ProductDetailsResponseListener
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@RecentlyNonNull BillingResult billingResult, @RecentlyNonNull List list) {
                CompletableDeferred.this.complete(new ProductDetailsResult(billingResult, list));
            }
        });
        return CompletableDeferred$default.await(continuation);
    }

    @RecentlyNullable
    public static final Object Wwwwwwwwwwwwwwwwwwwww(@RecentlyNonNull BillingClient billingClient, @RecentlyNonNull ConsumeParams consumeParams, @RecentlyNonNull Continuation<? super ConsumeResult> continuation) {
        final CompletableDeferred CompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        billingClient.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(consumeParams, new ConsumeResponseListener() { // from class: com.android.billingclient.api.BillingClientKotlinKt$$ExternalSyntheticLambda1
            @Override // com.android.billingclient.api.ConsumeResponseListener
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@RecentlyNonNull BillingResult billingResult, @RecentlyNonNull String str) {
                CompletableDeferred.this.complete(new ConsumeResult(billingResult, str));
            }
        });
        return CompletableDeferred$default.await(continuation);
    }

    @RecentlyNullable
    public static final Object Wwwwwwwwwwwwwwwwwwwwww(@RecentlyNonNull BillingClient billingClient, @RecentlyNonNull AcknowledgePurchaseParams acknowledgePurchaseParams, @RecentlyNonNull Continuation<? super BillingResult> continuation) {
        final CompletableDeferred CompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        billingClient.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(acknowledgePurchaseParams, new AcknowledgePurchaseResponseListener() { // from class: com.android.billingclient.api.BillingClientKotlinKt$$ExternalSyntheticLambda4
            @Override // com.android.billingclient.api.AcknowledgePurchaseResponseListener
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@RecentlyNonNull BillingResult billingResult) {
                CompletableDeferred.this.complete(billingResult);
            }
        });
        return CompletableDeferred$default.await(continuation);
    }
}
