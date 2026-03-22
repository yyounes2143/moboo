package com.google.android.engage.social.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.DisplayTimeWindow;
import com.google.android.engage.common.datamodel.zzs;
import com.google.android.engage.common.datamodel.zzu;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzj {
    private final Uri zza;
    private final zzu zzb;
    private final List zzc;

    public /* synthetic */ zzj(zzh zzhVar, zzi zziVar) {
        zzs zzsVar;
        Uri uri;
        ImmutableList.Builder builder;
        zzsVar = zzhVar.zzb;
        this.zzb = zzsVar.zzd();
        uri = zzhVar.zza;
        this.zza = uri;
        builder = zzhVar.zzc;
        this.zzc = builder.build();
    }

    public final Uri zza() {
        return this.zza;
    }

    public final Bundle zzb() {
        Bundle bundle = new Bundle();
        Uri uri = this.zza;
        if (uri != null) {
            bundle.putParcelable(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, uri);
        }
        bundle.putBundle("B", this.zzb.zza());
        List<DisplayTimeWindow> list = this.zzc;
        if (!list.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            for (DisplayTimeWindow displayTimeWindow : list) {
                arrayList.add(displayTimeWindow.zza());
            }
            bundle.putParcelableArrayList("C", arrayList);
        }
        return bundle;
    }

    public final Optional zzc() {
        return this.zzb.zzb();
    }

    public final List zzd() {
        return this.zzc;
    }

    public final List zze() {
        return this.zzb.zzc();
    }
}
