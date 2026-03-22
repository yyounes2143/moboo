package com.google.android.engage.common.datamodel;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzu {
    private final String zza;
    private final List zzb;

    public /* synthetic */ zzu(zzs zzsVar, zzt zztVar) {
        String str;
        ImmutableList.Builder builder;
        str = zzsVar.zza;
        this.zza = str;
        builder = zzsVar.zzb;
        this.zzb = builder.build();
    }

    public final Bundle zza() {
        Bundle bundle = new Bundle();
        String str = this.zza;
        if (!TextUtils.isEmpty(str)) {
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
        return bundle;
    }

    public final Optional zzb() {
        String str = this.zza;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    public final List zzc() {
        return this.zzb;
    }
}
