package com.google.android.engage.common.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzak {
    private final zzu zza;
    private final Uri zzb;
    private final String zzc;
    private final String zzd;
    private final ImmutableList zze;

    public /* synthetic */ zzak(zzai zzaiVar, zzaj zzajVar) {
        zzs zzsVar;
        Uri uri;
        String str;
        String str2;
        ImmutableList.Builder builder;
        zzsVar = zzaiVar.zza;
        this.zza = new zzu(zzsVar, null);
        uri = zzaiVar.zzb;
        this.zzb = uri;
        str = zzaiVar.zzc;
        this.zzc = str;
        str2 = zzaiVar.zzd;
        this.zzd = str2;
        builder = zzaiVar.zze;
        this.zze = builder.build();
    }

    public final Uri zza() {
        return this.zzb;
    }

    public final Bundle zzb() {
        Bundle bundle = new Bundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zza());
        Uri uri = this.zzb;
        if (uri != null) {
            bundle.putParcelable("B", uri);
        }
        String str = this.zzc;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("C", str);
        }
        String str2 = this.zzd;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("D", str2);
        }
        ImmutableList immutableList = this.zze;
        if (!immutableList.isEmpty()) {
            bundle.putStringArray(ExifInterface.LONGITUDE_EAST, (String[]) immutableList.toArray(new String[0]));
        }
        return bundle;
    }

    public final Optional zzc() {
        String str = this.zzd;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    public final Optional zzd() {
        return this.zza.zzb();
    }

    public final String zze() {
        return this.zzc;
    }

    public final List zzf() {
        return this.zza.zzc();
    }

    public final List zzg() {
        return this.zze;
    }
}
