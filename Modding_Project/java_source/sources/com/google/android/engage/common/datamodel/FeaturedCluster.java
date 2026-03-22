package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class FeaturedCluster extends zzf {
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
        public FeaturedCluster build() {
            return new FeaturedCluster(this, null);
        }
    }

    public /* synthetic */ FeaturedCluster(Builder builder, zzv zzvVar) {
        super(2);
        this.zza = new zzm(builder.zza, null);
    }

    @NonNull
    public ImmutableList<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zza.zzc();
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
