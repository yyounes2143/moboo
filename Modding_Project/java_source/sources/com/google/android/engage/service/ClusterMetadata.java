package com.google.android.engage.service;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
/* compiled from: Proguard */
@KeepForSdk
@KeepName
/* loaded from: classes4.dex */
public class ClusterMetadata implements Parcelable {
    @NonNull
    public static final Parcelable.Creator<ClusterMetadata> CREATOR = new Object();
    private final ImmutableList zza;

    public ClusterMetadata(zzae zzaeVar) {
        ImmutableList build = zzaeVar.zza.build();
        this.zza = build;
        Preconditions.checkArgument(!build.isEmpty(), "Cluster Type list cannot be empty");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public ImmutableList<Integer> getClusterTypes() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        ImmutableList immutableList = this.zza;
        if (immutableList.isEmpty()) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(immutableList.size());
        int size = immutableList.size();
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(((Integer) immutableList.get(i2)).intValue());
        }
    }

    public final Bundle zza() {
        Bundle bundle = new Bundle();
        ImmutableList immutableList = this.zza;
        if (!immutableList.isEmpty()) {
            ArrayList<Integer> arrayList = new ArrayList<>();
            arrayList.addAll(immutableList);
            bundle.putIntegerArrayList(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, arrayList);
        }
        return bundle;
    }
}
