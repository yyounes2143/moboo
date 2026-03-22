package com.google.android.engage.service;

import android.os.Parcel;
import android.os.Parcelable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzad implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        zzae zzaeVar = new zzae();
        int readInt = parcel.readInt();
        if (readInt > 0) {
            for (int i = 0; i < readInt; i++) {
                zzaeVar.zza(parcel.readInt());
            }
        }
        return new ClusterMetadata(zzaeVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new ClusterMetadata[i];
    }
}
