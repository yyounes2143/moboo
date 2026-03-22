package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "SignalConfigurationParcelCreator")
/* loaded from: classes4.dex */
public final class zzbyz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbyz> CREATOR = new zzbza();
    @SafeParcelable.Field(id = 1)
    public final String zza;
    @SafeParcelable.Field(id = 2)
    public final String zzb;
    @SafeParcelable.Field(id = 3)
    @Deprecated
    public final com.google.android.gms.ads.internal.client.zzr zzc;
    @SafeParcelable.Field(id = 4)
    public final com.google.android.gms.ads.internal.client.zzm zzd;
    @SafeParcelable.Field(id = 5)
    public final int zze;
    @Nullable
    @SafeParcelable.Field(id = 6)
    public final String zzf;

    @SafeParcelable.Constructor
    public zzbyz(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) com.google.android.gms.ads.internal.client.zzr zzrVar, @SafeParcelable.Param(id = 4) com.google.android.gms.ads.internal.client.zzm zzmVar, @SafeParcelable.Param(id = 5) int i, @Nullable @SafeParcelable.Param(id = 6) String str3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzrVar;
        this.zzd = zzmVar;
        this.zze = i;
        this.zzf = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzd, i, false);
        SafeParcelWriter.writeInt(parcel, 5, this.zze);
        SafeParcelWriter.writeString(parcel, 6, this.zzf, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
