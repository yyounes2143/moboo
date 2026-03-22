package com.google.android.datatransport;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class AutoValue_ProductData extends ProductData {
    private final Integer productId;

    public AutoValue_ProductData(@Nullable Integer num) {
        this.productId = num;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ProductData)) {
            return false;
        }
        Integer num = this.productId;
        Integer productId = ((ProductData) obj).getProductId();
        if (num == null) {
            if (productId == null) {
                return true;
            }
            return false;
        }
        return num.equals(productId);
    }

    @Override // com.google.android.datatransport.ProductData
    @Nullable
    public Integer getProductId() {
        return this.productId;
    }

    public int hashCode() {
        int hashCode;
        Integer num = this.productId;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        return hashCode ^ 1000003;
    }

    public String toString() {
        return "ProductData{productId=" + this.productId + "}";
    }
}
