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
public final class zzad {
    private final String zza;
    private final List zzb;
    private final String zzc;
    private final Long zzd;
    private final Uri zze;
    private final OrderReadyTimeWindow zzf;
    private final Integer zzg;
    private final String zzh;
    private final ImmutableList zzi;
    private final Price zzj;

    public /* synthetic */ zzad(zzab zzabVar, zzac zzacVar) {
        String str;
        ImmutableList.Builder builder;
        String str2;
        Long l;
        Uri uri;
        OrderReadyTimeWindow orderReadyTimeWindow;
        Integer num;
        String str3;
        Price price;
        ImmutableList.Builder builder2;
        str = zzabVar.zza;
        this.zza = str;
        builder = zzabVar.zzb;
        this.zzb = builder.build();
        str2 = zzabVar.zzc;
        this.zzc = str2;
        l = zzabVar.zzd;
        this.zzd = l;
        uri = zzabVar.zze;
        this.zze = uri;
        orderReadyTimeWindow = zzabVar.zzf;
        this.zzf = orderReadyTimeWindow;
        num = zzabVar.zzg;
        this.zzg = num;
        str3 = zzabVar.zzh;
        this.zzh = str3;
        price = zzabVar.zzi;
        this.zzj = price;
        builder2 = zzabVar.zzj;
        this.zzi = builder2.build();
    }

    public final Uri zza() {
        return this.zze;
    }

    public final Bundle zzb() {
        Bundle bundle = new Bundle();
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
        String str2 = this.zzc;
        if (str2 != null) {
            bundle.putString("C", str2);
        }
        Long l = this.zzd;
        if (l != null) {
            bundle.putLong("D", l.longValue());
        }
        Uri uri = this.zze;
        if (uri != null) {
            bundle.putParcelable(ExifInterface.LONGITUDE_EAST, uri);
        }
        OrderReadyTimeWindow orderReadyTimeWindow = this.zzf;
        if (orderReadyTimeWindow != null) {
            bundle.putBundle("F", orderReadyTimeWindow.zza());
        }
        Integer num = this.zzg;
        if (num != null) {
            bundle.putInt(RequestConfiguration.MAX_AD_CONTENT_RATING_G, num.intValue());
        }
        String str3 = this.zzh;
        if (str3 != null) {
            bundle.putString("H", str3);
        }
        Price price = this.zzj;
        if (price != null) {
            bundle.putBundle("I", price.zza());
        }
        ImmutableList immutableList = this.zzi;
        if (!immutableList.isEmpty()) {
            bundle.putStringArray("J", (String[]) immutableList.toArray(new String[0]));
        }
        return bundle;
    }

    public final Optional zzc() {
        return Optional.fromNullable(this.zzg);
    }

    public final Optional zzd() {
        String str = this.zzh;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    public final Optional zze() {
        return Optional.fromNullable(this.zzf);
    }

    public final Optional zzf() {
        return Optional.fromNullable(this.zzj);
    }

    public final Long zzg() {
        return this.zzd;
    }

    public final String zzh() {
        return this.zzc;
    }

    public final String zzi() {
        return this.zza;
    }

    public final List zzj() {
        return this.zzb;
    }

    public final List zzk() {
        return this.zzi;
    }
}
