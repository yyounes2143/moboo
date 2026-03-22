package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.Nullable;
/* compiled from: Proguard */
@SafeParcelable.Class(creator = "PoolConfigurationCreator")
/* loaded from: classes4.dex */
public final class zzfej extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfej> CREATOR = new zzfek();
    @Nullable
    public final Context zza;
    public final zzfeg zzb;
    @SafeParcelable.Field(id = 2)
    public final int zzc;
    @SafeParcelable.Field(id = 3)
    public final int zzd;
    @SafeParcelable.Field(id = 4)
    public final int zze;
    @SafeParcelable.Field(id = 5)
    public final String zzf;
    public final int zzg;
    private final zzfeg[] zzh;
    @SafeParcelable.Field(getter = "getFormatInt", id = 1)
    private final int zzi;
    @SafeParcelable.Field(getter = "getPoolDiscardStrategyInt", id = 6)
    private final int zzj;
    @SafeParcelable.Field(getter = "getPrecacheStartTriggerInt", id = 7)
    private final int zzk;
    private final int[] zzl;
    private final int[] zzm;

    @SafeParcelable.Constructor
    public zzfej(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) int i4, @SafeParcelable.Param(id = 5) String str, @SafeParcelable.Param(id = 6) int i5, @SafeParcelable.Param(id = 7) int i6) {
        zzfeg[] values = zzfeg.values();
        this.zzh = values;
        int[] zza = zzfeh.zza();
        this.zzl = zza;
        int[] zza2 = zzfei.zza();
        this.zzm = zza2;
        this.zza = null;
        this.zzi = i;
        this.zzb = values[i];
        this.zzc = i2;
        this.zzd = i3;
        this.zze = i4;
        this.zzf = str;
        this.zzj = i5;
        this.zzg = zza[i5];
        this.zzk = i6;
        int i7 = zza2[i6];
    }

    @Nullable
    public static zzfej zza(zzfeg zzfegVar, Context context) {
        if (zzfegVar == zzfeg.Rewarded) {
            return new zzfej(context, zzfegVar, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgz)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgF)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgH)).intValue(), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgJ), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgB), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgD));
        } else if (zzfegVar == zzfeg.Interstitial) {
            return new zzfej(context, zzfegVar, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgA)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgG)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgI)).intValue(), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgK), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgC), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgE));
        } else if (zzfegVar == zzfeg.AppOpen) {
            return new zzfej(context, zzfegVar, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgN)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgP)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgQ)).intValue(), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgL), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgM), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgO));
        } else {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zzi;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i2);
        SafeParcelWriter.writeInt(parcel, 2, this.zzc);
        SafeParcelWriter.writeInt(parcel, 3, this.zzd);
        SafeParcelWriter.writeInt(parcel, 4, this.zze);
        SafeParcelWriter.writeString(parcel, 5, this.zzf, false);
        SafeParcelWriter.writeInt(parcel, 6, this.zzj);
        SafeParcelWriter.writeInt(parcel, 7, this.zzk);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    private zzfej(@Nullable Context context, zzfeg zzfegVar, int i, int i2, int i3, String str, String str2, String str3) {
        int i4;
        this.zzh = zzfeg.values();
        this.zzl = zzfeh.zza();
        this.zzm = zzfei.zza();
        this.zza = context;
        this.zzi = zzfegVar.ordinal();
        this.zzb = zzfegVar;
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = str;
        if ("oldest".equals(str2)) {
            i4 = 1;
        } else {
            i4 = (!"lru".equals(str2) && "lfu".equals(str2)) ? 3 : 2;
        }
        this.zzg = i4;
        this.zzj = i4 - 1;
        "onAdClosed".equals(str3);
        this.zzk = 0;
    }
}
