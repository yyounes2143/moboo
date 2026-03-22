package com.changdu.component.pay.google.localdb;

import androidx.core.app.NotificationCompat;
import androidx.room.Entity;
import androidx.room.TypeConverters;
import com.android.billingclient.api.Purchase;
import com.applovin.sdk.AppLovinEventParameters;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@TypeConverters({PurchaseTypeConverter.class})
@Entity(primaryKeys = {"cdOrderId", "purchaseToken"}, tableName = "purchase_order")
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\b\u0007\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000eR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/changdu/component/pay/google/localdb/PurchaseOrder;", "", "cdOrderId", "", "jumpUrl", AppLovinEventParameters.PRODUCT_IDENTIFIER, "skuType", "purchaseToken", "purchaseData", "Lcom/android/billingclient/api/Purchase;", NotificationCompat.CATEGORY_STATUS, "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/Purchase;I)V", "getCdOrderId", "()Ljava/lang/String;", "getJumpUrl", "getPurchaseData", "()Lcom/android/billingclient/api/Purchase;", "setPurchaseData", "(Lcom/android/billingclient/api/Purchase;)V", "getPurchaseToken", "getSku", "getSkuType", "getStatus", "()I", "setStatus", "(I)V", "pay-google_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PurchaseOrder {
    @NotNull
    private final String cdOrderId;
    @NotNull
    private final String jumpUrl;
    @NotNull
    private Purchase purchaseData;
    @NotNull
    private final String purchaseToken;
    @NotNull
    private final String sku;
    @NotNull
    private final String skuType;
    private int status;

    public PurchaseOrder(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @NotNull Purchase purchase, int i) {
        this.cdOrderId = str;
        this.jumpUrl = str2;
        this.sku = str3;
        this.skuType = str4;
        this.purchaseToken = str5;
        this.purchaseData = purchase;
        this.status = i;
    }

    @NotNull
    public final String getCdOrderId() {
        return this.cdOrderId;
    }

    @NotNull
    public final String getJumpUrl() {
        return this.jumpUrl;
    }

    @NotNull
    public final Purchase getPurchaseData() {
        return this.purchaseData;
    }

    @NotNull
    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    @NotNull
    public final String getSku() {
        return this.sku;
    }

    @NotNull
    public final String getSkuType() {
        return this.skuType;
    }

    public final int getStatus() {
        return this.status;
    }

    public final void setPurchaseData(@NotNull Purchase purchase) {
        this.purchaseData = purchase;
    }

    public final void setStatus(int i) {
        this.status = i;
    }
}
