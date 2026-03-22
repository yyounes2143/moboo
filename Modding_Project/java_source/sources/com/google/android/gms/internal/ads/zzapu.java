package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzapu implements Comparable {
    private final zzaqf zza;
    private final int zzb;
    private final String zzc;
    private final int zzd;
    private final Object zze;
    @Nullable
    @GuardedBy("mLock")
    private final zzapy zzf;
    private Integer zzg;
    private zzapx zzh;
    @GuardedBy("mLock")
    private boolean zzi;
    @Nullable
    private zzapd zzj;
    @GuardedBy("mLock")
    private zzapt zzk;
    private final zzapi zzl;

    public zzapu(int i, String str, @Nullable zzapy zzapyVar) {
        zzaqf zzaqfVar;
        Uri parse;
        String host;
        if (zzaqf.zza) {
            zzaqfVar = new zzaqf();
        } else {
            zzaqfVar = null;
        }
        this.zza = zzaqfVar;
        this.zze = new Object();
        int i2 = 0;
        this.zzi = false;
        this.zzj = null;
        this.zzb = i;
        this.zzc = str;
        this.zzf = zzapyVar;
        this.zzl = new zzapi();
        if (!TextUtils.isEmpty(str) && (parse = Uri.parse(str)) != null && (host = parse.getHost()) != null) {
            i2 = host.hashCode();
        }
        this.zzd = i2;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.zzg.intValue() - ((zzapu) obj).zzg.intValue();
    }

    public final String toString() {
        String valueOf = String.valueOf(Integer.toHexString(this.zzd));
        zzw();
        Integer num = this.zzg;
        return "[ ] " + this.zzc + " " + "0x".concat(valueOf) + " NORMAL " + num;
    }

    public final int zza() {
        return this.zzb;
    }

    public final int zzb() {
        return this.zzl.zzb();
    }

    public final int zzc() {
        return this.zzd;
    }

    @Nullable
    public final zzapd zzd() {
        return this.zzj;
    }

    public final zzapu zze(zzapd zzapdVar) {
        this.zzj = zzapdVar;
        return this;
    }

    public final zzapu zzf(zzapx zzapxVar) {
        this.zzh = zzapxVar;
        return this;
    }

    public final zzapu zzg(int i) {
        this.zzg = Integer.valueOf(i);
        return this;
    }

    public abstract zzaqa zzh(zzapq zzapqVar);

    public final String zzj() {
        int i = this.zzb;
        String str = this.zzc;
        if (i != 0) {
            String num = Integer.toString(1);
            return num + "-" + str;
        }
        return str;
    }

    public final String zzk() {
        return this.zzc;
    }

    public Map zzl() throws zzapc {
        return Collections.EMPTY_MAP;
    }

    public final void zzm(String str) {
        if (zzaqf.zza) {
            this.zza.zza(str, Thread.currentThread().getId());
        }
    }

    public final void zzn(zzaqd zzaqdVar) {
        zzapy zzapyVar;
        synchronized (this.zze) {
            zzapyVar = this.zzf;
        }
        zzapyVar.zza(zzaqdVar);
    }

    public abstract void zzo(Object obj);

    public final void zzp(String str) {
        zzapx zzapxVar = this.zzh;
        if (zzapxVar != null) {
            zzapxVar.zzb(this);
        }
        if (zzaqf.zza) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new zzaps(this, str, id));
                return;
            }
            zzaqf zzaqfVar = this.zza;
            zzaqfVar.zza(str, id);
            zzaqfVar.zzb(toString());
        }
    }

    public final void zzq() {
        synchronized (this.zze) {
            this.zzi = true;
        }
    }

    public final void zzr() {
        zzapt zzaptVar;
        synchronized (this.zze) {
            zzaptVar = this.zzk;
        }
        if (zzaptVar != null) {
            zzaptVar.zza(this);
        }
    }

    public final void zzs(zzaqa zzaqaVar) {
        zzapt zzaptVar;
        synchronized (this.zze) {
            zzaptVar = this.zzk;
        }
        if (zzaptVar != null) {
            zzaptVar.zzb(this, zzaqaVar);
        }
    }

    public final void zzt(int i) {
        zzapx zzapxVar = this.zzh;
        if (zzapxVar != null) {
            zzapxVar.zzc(this, i);
        }
    }

    public final void zzu(zzapt zzaptVar) {
        synchronized (this.zze) {
            this.zzk = zzaptVar;
        }
    }

    public final boolean zzv() {
        boolean z;
        synchronized (this.zze) {
            z = this.zzi;
        }
        return z;
    }

    public final boolean zzw() {
        synchronized (this.zze) {
        }
        return false;
    }

    public byte[] zzx() throws zzapc {
        return null;
    }

    public final zzapi zzy() {
        return this.zzl;
    }
}
