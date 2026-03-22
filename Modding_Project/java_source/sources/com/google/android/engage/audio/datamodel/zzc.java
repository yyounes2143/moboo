package com.google.android.engage.audio.datamodel;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.zzs;
import com.google.android.engage.common.datamodel.zzu;
import com.google.common.base.Optional;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzc {
    private final zzu zza;
    private final String zzb;
    private final String zzc;
    private final Long zzd;
    private final Integer zze;

    public /* synthetic */ zzc(zza zzaVar, zzb zzbVar) {
        zzs zzsVar;
        String str;
        String str2;
        Long l;
        Integer num;
        zzsVar = zzaVar.zze;
        this.zza = zzsVar.zzd();
        str = zzaVar.zza;
        this.zzb = str;
        str2 = zzaVar.zzb;
        this.zzc = str2;
        l = zzaVar.zzd;
        this.zzd = l;
        num = zzaVar.zzc;
        this.zze = num;
    }

    public final Bundle zza() {
        Bundle bundle = new Bundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zza());
        String str = this.zzb;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("B", str);
        }
        String str2 = this.zzc;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("C", str2);
        }
        Long l = this.zzd;
        if (l != null) {
            bundle.putLong("D", l.longValue());
        }
        Integer num = this.zze;
        if (num != null) {
            bundle.putInt(ExifInterface.LONGITUDE_EAST, num.intValue());
        }
        return bundle;
    }

    public final Optional zzb() {
        String str = this.zzc;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    public final Optional zzc() {
        return this.zza.zzb();
    }

    public final Optional zzd() {
        return Optional.fromNullable(this.zzd);
    }

    public final Optional zze() {
        return Optional.fromNullable(this.zze);
    }

    public final String zzf() {
        return this.zzb;
    }

    public final List zzg() {
        return this.zza.zzc();
    }
}
