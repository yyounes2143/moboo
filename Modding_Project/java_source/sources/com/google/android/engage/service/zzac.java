package com.google.android.engage.service;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzac {
    private final ImmutableList zza;

    public zzac(zzab zzabVar) {
        ImmutableList.Builder builder;
        builder = zzabVar.zza;
        this.zza = builder.build();
    }

    public final Bundle zza() {
        Bundle bundle = new Bundle();
        ImmutableList immutableList = this.zza;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((com.google.android.engage.common.datamodel.zzf) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, arrayList);
        }
        return bundle;
    }
}
