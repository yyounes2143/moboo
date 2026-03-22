package com.google.android.engage.service;

import androidx.annotation.NonNull;
import com.google.android.engage.common.datamodel.EngagementCluster;
import com.google.android.engage.common.datamodel.SignInCardEntity;
import com.google.android.engage.common.datamodel.UserSettingsCardEntity;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class PublishUserAccountManagementRequest {
    private final EngagementCluster zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        private final com.google.android.engage.common.datamodel.zzp zza = new com.google.android.engage.common.datamodel.zzp();

        @NonNull
        public PublishUserAccountManagementRequest build() {
            return new PublishUserAccountManagementRequest(this, null);
        }

        @NonNull
        public Builder setSignInCardEntity(@NonNull SignInCardEntity signInCardEntity) {
            this.zza.zzb(signInCardEntity);
            return this;
        }

        @NonNull
        public Builder setUserSettingsCardEntity(@NonNull UserSettingsCardEntity userSettingsCardEntity) {
            this.zza.zzc(userSettingsCardEntity);
            return this;
        }
    }

    public /* synthetic */ PublishUserAccountManagementRequest(Builder builder, zzal zzalVar) {
        this.zza = builder.zza.zzd();
    }

    @NonNull
    public EngagementCluster getEngagementCluster() {
        return this.zza;
    }

    public final zzac zza() {
        zzab zzabVar = new zzab();
        zzabVar.zza(this.zza);
        return new zzac(zzabVar);
    }
}
