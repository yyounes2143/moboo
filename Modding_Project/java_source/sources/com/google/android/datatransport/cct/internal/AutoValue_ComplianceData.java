package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.ComplianceData;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class AutoValue_ComplianceData extends ComplianceData {
    private final ExternalPrivacyContext privacyContext;
    private final ComplianceData.ProductIdOrigin productIdOrigin;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static final class Builder extends ComplianceData.Builder {
        private ExternalPrivacyContext privacyContext;
        private ComplianceData.ProductIdOrigin productIdOrigin;

        @Override // com.google.android.datatransport.cct.internal.ComplianceData.Builder
        public ComplianceData build() {
            return new AutoValue_ComplianceData(this.privacyContext, this.productIdOrigin);
        }

        @Override // com.google.android.datatransport.cct.internal.ComplianceData.Builder
        public ComplianceData.Builder setPrivacyContext(@Nullable ExternalPrivacyContext externalPrivacyContext) {
            this.privacyContext = externalPrivacyContext;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ComplianceData.Builder
        public ComplianceData.Builder setProductIdOrigin(@Nullable ComplianceData.ProductIdOrigin productIdOrigin) {
            this.productIdOrigin = productIdOrigin;
            return this;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ComplianceData) {
            ComplianceData complianceData = (ComplianceData) obj;
            ExternalPrivacyContext externalPrivacyContext = this.privacyContext;
            if (externalPrivacyContext != null ? externalPrivacyContext.equals(complianceData.getPrivacyContext()) : complianceData.getPrivacyContext() == null) {
                ComplianceData.ProductIdOrigin productIdOrigin = this.productIdOrigin;
                if (productIdOrigin != null ? productIdOrigin.equals(complianceData.getProductIdOrigin()) : complianceData.getProductIdOrigin() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.ComplianceData
    @Nullable
    public ExternalPrivacyContext getPrivacyContext() {
        return this.privacyContext;
    }

    @Override // com.google.android.datatransport.cct.internal.ComplianceData
    @Nullable
    public ComplianceData.ProductIdOrigin getProductIdOrigin() {
        return this.productIdOrigin;
    }

    public int hashCode() {
        int hashCode;
        ExternalPrivacyContext externalPrivacyContext = this.privacyContext;
        int i = 0;
        if (externalPrivacyContext == null) {
            hashCode = 0;
        } else {
            hashCode = externalPrivacyContext.hashCode();
        }
        int i2 = (hashCode ^ 1000003) * 1000003;
        ComplianceData.ProductIdOrigin productIdOrigin = this.productIdOrigin;
        if (productIdOrigin != null) {
            i = productIdOrigin.hashCode();
        }
        return i2 ^ i;
    }

    public String toString() {
        return "ComplianceData{privacyContext=" + this.privacyContext + ", productIdOrigin=" + this.productIdOrigin + "}";
    }

    private AutoValue_ComplianceData(@Nullable ExternalPrivacyContext externalPrivacyContext, @Nullable ComplianceData.ProductIdOrigin productIdOrigin) {
        this.privacyContext = externalPrivacyContext;
        this.productIdOrigin = productIdOrigin;
    }
}
