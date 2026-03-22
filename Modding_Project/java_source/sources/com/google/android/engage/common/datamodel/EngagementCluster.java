package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class EngagementCluster extends zzf {
    private final zzm zza;

    public /* synthetic */ EngagementCluster(zzp zzpVar, zzq zzqVar) {
        super(8);
        this.zza = new zzm(zzp.zza(zzpVar), null);
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
