package com.google.android.engage.service;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class PublishStatusRequest {
    private final int zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        private int zza;

        @NonNull
        public PublishStatusRequest build() {
            return new PublishStatusRequest(this);
        }

        @NonNull
        public Builder setStatusCode(int i) {
            this.zza = i;
            return this;
        }
    }

    public PublishStatusRequest(@NonNull Builder builder) {
        this.zza = builder.zza;
    }

    public int getStatusCode() {
        return this.zza;
    }
}
