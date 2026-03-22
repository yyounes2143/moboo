package com.changdu.component.pay.google.localdb;

import androidx.room.Entity;
import androidx.room.PrimaryKey;
import com.applovin.sdk.AppLovinEventParameters;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Entity
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003JE\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000b¨\u0006 "}, d2 = {"Lcom/changdu/component/pay/google/localdb/CdSkuDetails;", "", AppLovinEventParameters.PRODUCT_IDENTIFIER, "", "originalJson", "type", "price", CampaignEx.JSON_KEY_TITLE, "description", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDescription", "()Ljava/lang/String;", "setDescription", "(Ljava/lang/String;)V", "getOriginalJson", "getPrice", "getSku", "getTitle", "getType", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "pay-google_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CdSkuDetails {
    @NotNull
    private String description;
    @NotNull
    private final String originalJson;
    @NotNull
    private final String price;
    @PrimaryKey
    @NotNull
    private final String sku;
    @NotNull
    private final String title;
    @NotNull
    private final String type;

    public CdSkuDetails(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @NotNull String str6) {
        this.sku = str;
        this.originalJson = str2;
        this.type = str3;
        this.price = str4;
        this.title = str5;
        this.description = str6;
    }

    public static /* synthetic */ CdSkuDetails copy$default(CdSkuDetails cdSkuDetails, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cdSkuDetails.sku;
        }
        if ((i & 2) != 0) {
            str2 = cdSkuDetails.originalJson;
        }
        if ((i & 4) != 0) {
            str3 = cdSkuDetails.type;
        }
        if ((i & 8) != 0) {
            str4 = cdSkuDetails.price;
        }
        if ((i & 16) != 0) {
            str5 = cdSkuDetails.title;
        }
        if ((i & 32) != 0) {
            str6 = cdSkuDetails.description;
        }
        String str7 = str5;
        String str8 = str6;
        return cdSkuDetails.copy(str, str2, str3, str4, str7, str8);
    }

    @NotNull
    public final String component1() {
        return this.sku;
    }

    @NotNull
    public final String component2() {
        return this.originalJson;
    }

    @NotNull
    public final String component3() {
        return this.type;
    }

    @NotNull
    public final String component4() {
        return this.price;
    }

    @NotNull
    public final String component5() {
        return this.title;
    }

    @NotNull
    public final String component6() {
        return this.description;
    }

    @NotNull
    public final CdSkuDetails copy(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @NotNull String str6) {
        return new CdSkuDetails(str, str2, str3, str4, str5, str6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CdSkuDetails)) {
            return false;
        }
        CdSkuDetails cdSkuDetails = (CdSkuDetails) obj;
        if (Intrinsics.areEqual(this.sku, cdSkuDetails.sku) && Intrinsics.areEqual(this.originalJson, cdSkuDetails.originalJson) && Intrinsics.areEqual(this.type, cdSkuDetails.type) && Intrinsics.areEqual(this.price, cdSkuDetails.price) && Intrinsics.areEqual(this.title, cdSkuDetails.title) && Intrinsics.areEqual(this.description, cdSkuDetails.description)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    @NotNull
    public final String getOriginalJson() {
        return this.originalJson;
    }

    @NotNull
    public final String getPrice() {
        return this.price;
    }

    @NotNull
    public final String getSku() {
        return this.sku;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = this.originalJson.hashCode();
        int hashCode2 = this.type.hashCode();
        int hashCode3 = this.price.hashCode();
        int hashCode4 = this.title.hashCode();
        return this.description.hashCode() + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + (this.sku.hashCode() * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final void setDescription(@NotNull String str) {
        this.description = str;
    }

    @NotNull
    public String toString() {
        String str = this.sku;
        String str2 = this.originalJson;
        String str3 = this.type;
        String str4 = this.price;
        String str5 = this.title;
        String str6 = this.description;
        return "CdSkuDetails(sku=" + str + ", originalJson=" + str2 + ", type=" + str3 + ", price=" + str4 + ", title=" + str5 + ", description=" + str6 + ")";
    }
}
