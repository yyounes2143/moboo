package com.google.android.engage.common.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzj {
    private final String zza;
    private final List zzb;
    private final int zzc;
    private final Uri zzd;
    private final ImmutableList zze;
    private final String zzf;
    private final ImmutableList zzg;
    private final Long zzh;

    public /* synthetic */ zzj(zzh zzhVar, zzi zziVar) {
        Uri uri;
        int i;
        String str;
        ImmutableList.Builder builder;
        ImmutableList.Builder builder2;
        String str2;
        ImmutableList.Builder builder3;
        Long l;
        uri = zzhVar.zze;
        this.zzd = uri;
        i = zzhVar.zzd;
        this.zzc = i;
        str = zzhVar.zza;
        this.zza = str;
        builder = zzhVar.zzb;
        this.zzb = builder.build();
        builder2 = zzhVar.zzc;
        this.zze = builder2.build();
        str2 = zzhVar.zzf;
        this.zzf = str2;
        builder3 = zzhVar.zzg;
        this.zzg = builder3.build();
        l = zzhVar.zzh;
        this.zzh = l;
    }

    public final int zza() {
        return this.zzc;
    }

    public final Uri zzb() {
        return this.zzd;
    }

    public final Bundle zzc() {
        Bundle bundle = new Bundle();
        bundle.putInt("C", this.zzc);
        Uri uri = this.zzd;
        if (uri != null) {
            bundle.putParcelable("D", uri);
        }
        String str = this.zza;
        if (str != null) {
            bundle.putString(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, str);
        }
        List<Image> list = this.zzb;
        if (!list.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            for (Image image : list) {
                arrayList.add(image.zza());
            }
            bundle.putParcelableArrayList("B", arrayList);
        }
        ImmutableList immutableList = this.zze;
        if (!immutableList.isEmpty()) {
            bundle.putStringArray(ExifInterface.LONGITUDE_EAST, (String[]) immutableList.toArray(new String[0]));
        }
        String str2 = this.zzf;
        if (str2 != null) {
            bundle.putString("F", str2);
        }
        ImmutableList immutableList2 = this.zzg;
        if (!immutableList2.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            int size = immutableList2.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(((DisplayTimeWindow) immutableList2.get(i)).zza());
            }
            bundle.putParcelableArrayList(RequestConfiguration.MAX_AD_CONTENT_RATING_G, arrayList2);
        }
        Long l = this.zzh;
        if (l != null) {
            bundle.putLong("H", l.longValue());
        }
        return bundle;
    }

    public final Optional zzd() {
        String str = this.zzf;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    public final Optional zze() {
        return Optional.fromNullable(this.zzh);
    }

    public final Optional zzf() {
        String str = this.zza;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    public final List zzg() {
        return this.zzg;
    }

    public final List zzh() {
        return this.zze;
    }

    public final List zzi() {
        return this.zzb;
    }
}
