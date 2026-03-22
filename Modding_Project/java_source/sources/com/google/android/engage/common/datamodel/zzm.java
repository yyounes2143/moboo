package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzm {
    private final boolean zza;
    private final AccountProfile zzb;
    private final List zzc;
    private final ImmutableList zzd;

    public /* synthetic */ zzm(zzk zzkVar, zzl zzlVar) {
        ImmutableList.Builder builder;
        boolean z;
        AccountProfile accountProfile;
        ImmutableList.Builder builder2;
        builder = zzkVar.zzc;
        this.zzc = builder.build();
        z = zzkVar.zza;
        this.zza = z;
        accountProfile = zzkVar.zzb;
        this.zzb = accountProfile;
        builder2 = zzkVar.zzd;
        this.zzd = builder2.build();
    }

    public final Bundle zza() {
        Bundle bundle = new Bundle();
        bundle.putBoolean(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza);
        AccountProfile accountProfile = this.zzb;
        if (accountProfile != null) {
            bundle.putBundle("B", accountProfile.zza());
        }
        List<Entity> list = this.zzc;
        if (!list.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            for (Entity entity : list) {
                arrayList.add(entity.toBundle());
            }
            bundle.putParcelableArrayList("C", arrayList);
        }
        ImmutableList immutableList = this.zzd;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(((DisplayTimeWindow) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList("D", arrayList2);
        }
        return bundle;
    }

    public final Optional zzb() {
        return Optional.fromNullable(this.zzb);
    }

    public final ImmutableList zzc() {
        return this.zzd;
    }

    public final List zzd() {
        return this.zzc;
    }

    public final boolean zze() {
        return this.zza;
    }
}
