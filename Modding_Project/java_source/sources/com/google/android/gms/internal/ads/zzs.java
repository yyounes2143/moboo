package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzs implements Comparator<zzr>, Parcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new zzp();
    @Nullable
    public final String zza;
    public final int zzb;
    private final zzr[] zzc;
    private int zzd;

    public zzs(Parcel parcel) {
        this.zza = parcel.readString();
        zzr[] zzrVarArr = (zzr[]) parcel.createTypedArray(zzr.CREATOR);
        String str = zzeu.zza;
        this.zzc = zzrVarArr;
        this.zzb = zzrVarArr.length;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzr zzrVar, zzr zzrVar2) {
        zzr zzrVar3 = zzrVar2;
        UUID uuid = zzh.zza;
        UUID uuid2 = zzrVar.zza;
        if (uuid.equals(uuid2)) {
            if (!uuid.equals(zzrVar3.zza)) {
                return 1;
            }
            return 0;
        }
        return uuid2.compareTo(zzrVar3.zza);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzs.class == obj.getClass()) {
            zzs zzsVar = (zzs) obj;
            if (Objects.equals(this.zza, zzsVar.zza) && Arrays.equals(this.zzc, zzsVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int i = this.zzd;
        if (i == 0) {
            String str = this.zza;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode2 = (hashCode * 31) + Arrays.hashCode(this.zzc);
            this.zzd = hashCode2;
            return hashCode2;
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeTypedArray(this.zzc, 0);
    }

    public final zzr zza(int i) {
        return this.zzc[i];
    }

    @CheckResult
    public final zzs zzb(@Nullable String str) {
        if (Objects.equals(this.zza, str)) {
            return this;
        }
        return new zzs(str, false, this.zzc);
    }

    private zzs(@Nullable String str, boolean z, zzr... zzrVarArr) {
        this.zza = str;
        zzrVarArr = z ? (zzr[]) zzrVarArr.clone() : zzrVarArr;
        this.zzc = zzrVarArr;
        this.zzb = zzrVarArr.length;
        Arrays.sort(zzrVarArr, this);
    }

    public zzs(@Nullable String str, zzr... zzrVarArr) {
        this(null, true, zzrVarArr);
    }

    public zzs(List list) {
        this(null, false, (zzr[]) list.toArray(new zzr[0]));
    }
}
