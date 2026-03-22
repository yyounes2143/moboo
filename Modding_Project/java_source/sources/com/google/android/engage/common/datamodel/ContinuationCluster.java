package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class ContinuationCluster extends zzf {
    private final zzm zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private final zzk zza = new zzk();

        @NonNull
        public Builder addAllDisplayTimeWindow(@NonNull List<DisplayTimeWindow> list) {
            this.zza.zzb(list);
            return this;
        }

        @NonNull
        public Builder addDisplayTimeWindow(@NonNull DisplayTimeWindow displayTimeWindow) {
            this.zza.zzc(displayTimeWindow);
            return this;
        }

        @NonNull
        public Builder addEntity(@NonNull Entity entity) {
            this.zza.zzd(entity);
            return this;
        }

        @NonNull
        public ContinuationCluster build() {
            return new ContinuationCluster(this, null);
        }

        @NonNull
        public Builder setAccountProfile(@NonNull AccountProfile accountProfile) {
            this.zza.zze(accountProfile);
            return this;
        }

        @NonNull
        public Builder setSyncAcrossDevices(boolean z) {
            this.zza.zzf(z);
            return this;
        }
    }

    public /* synthetic */ ContinuationCluster(Builder builder, zzn zznVar) {
        super(3);
        this.zza = new zzm(builder.zza, null);
    }

    @NonNull
    public Optional<AccountProfile> getAccountProfile() {
        return this.zza.zzb();
    }

    @NonNull
    public ImmutableList<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zza.zzc();
    }

    @NonNull
    public List<Entity> getEntities() {
        return this.zza.zzd();
    }

    public boolean getSyncAcrossDevices() {
        return this.zza.zze();
    }

    @Override // com.google.android.engage.common.datamodel.zzf
    @NonNull
    public final Bundle zza() {
        Bundle zza = super.zza();
        zza.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zza());
        return zza;
    }
}
