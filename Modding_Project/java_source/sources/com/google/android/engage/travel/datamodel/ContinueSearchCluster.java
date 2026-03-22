package com.google.android.engage.travel.datamodel;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.zzk;
import com.google.android.engage.common.datamodel.zzm;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class ContinueSearchCluster extends com.google.android.engage.common.datamodel.zzf {
    private final zzm zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private final zzk zza = new zzk();

        @NonNull
        public Builder addPointOfInterestEntity(@NonNull PointOfInterestEntity pointOfInterestEntity) {
            this.zza.zzd(pointOfInterestEntity);
            return this;
        }

        @NonNull
        public ContinueSearchCluster build() {
            return new ContinueSearchCluster(this, null);
        }
    }

    public /* synthetic */ ContinueSearchCluster(Builder builder, zza zzaVar) {
        super(13);
        this.zza = builder.zza.zzg();
    }

    @NonNull
    public List<Entity> getEntities() {
        return this.zza.zzd();
    }

    @Override // com.google.android.engage.common.datamodel.zzf
    @NonNull
    public final Bundle zza() {
        Bundle zza = super.zza();
        zza.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zza());
        return zza;
    }
}
