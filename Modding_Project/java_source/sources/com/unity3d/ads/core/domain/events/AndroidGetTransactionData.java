package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.domain.GetByteStringId;
import com.unity3d.ads.core.extensions.TimestampExtensionsKt;
import com.unity3d.ads.core.extensions.TransactionStateExtensionsKt;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.unity3d.services.store.gpbl.bridges.PurchaseBridge;
import com.unity3d.services.store.gpbl.bridges.SkuDetailsBridge;
import gatewayprotocol.v1.TransactionDataKt;
import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/unity3d/ads/core/domain/events/AndroidGetTransactionData;", "Lcom/unity3d/ads/core/domain/events/GetTransactionData;", "getByteStringId", "Lcom/unity3d/ads/core/domain/GetByteStringId;", "(Lcom/unity3d/ads/core/domain/GetByteStringId;)V", "invoke", "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;", "purchaseDetail", "Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;", "productDetail", "Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsBridge;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidGetTransactionData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetTransactionData.kt\ncom/unity3d/ads/core/domain/events/AndroidGetTransactionData\n+ 2 TransactionDataKt.kt\ngatewayprotocol/v1/TransactionDataKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,27:1\n10#2:28\n1#3:29\n*S KotlinDebug\n*F\n+ 1 AndroidGetTransactionData.kt\ncom/unity3d/ads/core/domain/events/AndroidGetTransactionData\n*L\n17#1:28\n17#1:29\n*E\n"})
/* loaded from: classes6.dex */
public final class AndroidGetTransactionData implements GetTransactionData {
    @NotNull
    private final GetByteStringId getByteStringId;

    public AndroidGetTransactionData(@NotNull GetByteStringId getByteStringId) {
        this.getByteStringId = getByteStringId;
    }

    @Override // com.unity3d.ads.core.domain.events.GetTransactionData
    @NotNull
    public TransactionEventRequestOuterClass.TransactionData invoke(@NotNull PurchaseBridge purchaseBridge, @NotNull SkuDetailsBridge skuDetailsBridge) {
        TransactionDataKt.Dsl _create = TransactionDataKt.Dsl.Companion._create(TransactionEventRequestOuterClass.TransactionData.newBuilder());
        _create.setProductId(purchaseBridge.getOriginalJson().get(InAppPurchaseMetaData.KEY_PRODUCT_ID).toString());
        _create.setEventId(this.getByteStringId.invoke());
        _create.setTimestamp(TimestampExtensionsKt.fromMillis(((Long) purchaseBridge.getOriginalJson().get("purchaseTime")).longValue()));
        _create.setTransactionId(purchaseBridge.getOriginalJson().get("orderId").toString());
        _create.setProduct(skuDetailsBridge.getOriginalJson().toString());
        _create.setTransaction(purchaseBridge.getOriginalJson().toString());
        _create.setTransactionState(TransactionStateExtensionsKt.fromPurchaseState(((Integer) purchaseBridge.getOriginalJson().get("purchaseState")).intValue()));
        return _create._build();
    }
}
