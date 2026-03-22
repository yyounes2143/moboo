package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzfnq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeh {
    private final String zza;
    private final List zzb;
    private final Set zzc;
    private final Bundle zzd;
    private final String zze;
    private final String zzf;
    private final int zzg;
    private final Set zzh;
    private final Bundle zzi;
    private final Set zzj;
    private final boolean zzk;
    private final String zzl;
    private final int zzm;
    private long zzn = 0;

    public zzeh(zzeg zzegVar, @Nullable zzfnq zzfnqVar) {
        String str;
        List list;
        HashSet hashSet;
        Bundle bundle;
        HashMap hashMap;
        String str2;
        String str3;
        int i;
        HashSet hashSet2;
        Bundle bundle2;
        HashSet hashSet3;
        boolean z;
        String str4;
        int i2;
        str = zzegVar.zzg;
        this.zza = str;
        list = zzegVar.zzh;
        this.zzb = list;
        hashSet = zzegVar.zza;
        this.zzc = Collections.unmodifiableSet(hashSet);
        bundle = zzegVar.zzb;
        this.zzd = bundle;
        hashMap = zzegVar.zzc;
        Collections.unmodifiableMap(hashMap);
        str2 = zzegVar.zzi;
        this.zze = str2;
        str3 = zzegVar.zzj;
        this.zzf = str3;
        i = zzegVar.zzk;
        this.zzg = i;
        hashSet2 = zzegVar.zzd;
        this.zzh = Collections.unmodifiableSet(hashSet2);
        bundle2 = zzegVar.zze;
        this.zzi = bundle2;
        hashSet3 = zzegVar.zzf;
        this.zzj = Collections.unmodifiableSet(hashSet3);
        z = zzegVar.zzl;
        this.zzk = z;
        str4 = zzegVar.zzm;
        this.zzl = str4;
        i2 = zzegVar.zzn;
        this.zzm = i2;
    }

    public final int zza() {
        return this.zzm;
    }

    public final int zzb() {
        return this.zzg;
    }

    public final long zzc() {
        return this.zzn;
    }

    @Nullable
    public final Bundle zzd(Class cls) {
        Bundle bundle = this.zzd.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    public final Bundle zze() {
        return this.zzi;
    }

    @Nullable
    public final Bundle zzf(Class cls) {
        return this.zzd.getBundle(cls.getName());
    }

    public final Bundle zzg() {
        return this.zzd;
    }

    @Nullable
    public final String zzh() {
        return this.zzl;
    }

    public final String zzi() {
        return this.zza;
    }

    public final String zzj() {
        return this.zze;
    }

    public final String zzk() {
        return this.zzf;
    }

    public final List zzl() {
        return new ArrayList(this.zzb);
    }

    public final Set zzm() {
        return this.zzj;
    }

    public final Set zzn() {
        return this.zzc;
    }

    public final void zzo(long j) {
        this.zzn = j;
    }

    @Deprecated
    public final boolean zzp() {
        return this.zzk;
    }

    public final boolean zzq(Context context) {
        RequestConfiguration zzc = zzet.zzf().zzc();
        zzbb.zzb();
        Set set = this.zzh;
        String zzz = com.google.android.gms.ads.internal.util.client.zzf.zzz(context);
        if (!set.contains(zzz) && !zzc.getTestDeviceIds().contains(zzz)) {
            return false;
        }
        return true;
    }
}
