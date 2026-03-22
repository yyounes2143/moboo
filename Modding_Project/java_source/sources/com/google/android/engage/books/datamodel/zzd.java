package com.google.android.engage.books.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.DisplayTimeWindow;
import com.google.android.engage.common.datamodel.Rating;
import com.google.android.engage.common.datamodel.zzs;
import com.google.android.engage.common.datamodel.zzu;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzd {
    private final zzu zza;
    private final String zzb;
    private final Uri zzc;
    private final Rating zzd;
    private final int zze;
    private final boolean zzf;
    private final ImmutableList zzg;
    private final String zzh;
    private final ImmutableList zzi;
    private final Long zzj;
    private final Integer zzk;
    private final int zzl;

    public /* synthetic */ zzd(zzb zzbVar, zzc zzcVar) {
        zzs zzsVar;
        Uri uri;
        int i;
        int i2;
        String str;
        boolean z;
        ImmutableList.Builder builder;
        Long l;
        String str2;
        Integer num;
        Rating rating;
        zzsVar = zzbVar.zzc;
        this.zza = zzsVar.zzd();
        uri = zzbVar.zze;
        this.zzc = uri;
        i = zzbVar.zzf;
        this.zze = i;
        i2 = zzbVar.zzl;
        this.zzl = i2;
        str = zzbVar.zzi;
        this.zzh = str;
        this.zzg = zzbVar.zza.build();
        z = zzbVar.zzh;
        this.zzf = z;
        builder = zzbVar.zzd;
        this.zzi = builder.build();
        l = zzbVar.zzj;
        this.zzj = l;
        str2 = zzbVar.zzb;
        this.zzb = str2;
        num = zzbVar.zzk;
        this.zzk = num;
        rating = zzbVar.zzg;
        this.zzd = rating;
    }

    public final int zza() {
        return this.zze;
    }

    public final Uri zzb() {
        return this.zzc;
    }

    public final Bundle zzc() {
        Bundle bundle = new Bundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zza());
        Uri uri = this.zzc;
        if (uri != null) {
            bundle.putParcelable("C", uri);
        }
        String str = this.zzb;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("B", str);
        }
        Rating rating = this.zzd;
        if (rating != null) {
            bundle.putBundle("D", rating.zza());
        }
        bundle.putInt(ExifInterface.LONGITUDE_EAST, this.zze);
        bundle.putBoolean("F", this.zzf);
        String str2 = this.zzh;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("H", str2);
        }
        ImmutableList immutableList = this.zzi;
        if (!immutableList.isEmpty()) {
            bundle.putStringArray("I", (String[]) immutableList.toArray(new String[0]));
        }
        Long l = this.zzj;
        if (l != null) {
            bundle.putLong("J", l.longValue());
        }
        Integer num = this.zzk;
        if (num != null) {
            bundle.putInt("K", num.intValue());
        }
        bundle.putInt("L", this.zzl);
        ImmutableList immutableList2 = this.zzg;
        if (!immutableList2.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList2.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((DisplayTimeWindow) immutableList2.get(i)).zza());
            }
            bundle.putParcelableArrayList(RequestConfiguration.MAX_AD_CONTENT_RATING_G, arrayList);
        }
        return bundle;
    }

    public final Optional zzd() {
        int i = this.zzl;
        if (i > 0) {
            return Optional.of(Integer.valueOf(i));
        }
        return Optional.absent();
    }

    public final Optional zze() {
        String str = this.zzh;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    public final Optional zzf() {
        return this.zza.zzb();
    }

    public final Optional zzg() {
        return Optional.fromNullable(this.zzj);
    }

    public final Optional zzh() {
        return Optional.fromNullable(this.zzk);
    }

    public final Optional zzi() {
        return Optional.fromNullable(this.zzd);
    }

    public final String zzj() {
        return this.zzb;
    }

    public final List zzk() {
        return this.zzg;
    }

    public final List zzl() {
        return this.zzi;
    }

    public final List zzm() {
        return this.zza.zzc();
    }

    public final boolean zzn() {
        return this.zzf;
    }
}
