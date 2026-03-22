package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzceq extends zzcbc {
    private final zzcbx zzc;
    @Nullable
    private zzcer zzd;
    private Uri zze;
    private zzcbb zzf;
    private boolean zzg;
    private int zzh;

    public zzceq(Context context, zzcbx zzcbxVar) {
        super(context);
        this.zzh = 1;
        this.zzg = false;
        this.zzc = zzcbxVar;
        zzcbxVar.zza(this);
    }

    public static /* synthetic */ void zzi(zzceq zzceqVar) {
        zzcbb zzcbbVar = zzceqVar.zzf;
        if (zzcbbVar != null) {
            if (!zzceqVar.zzg) {
                zzcbbVar.zzg();
                zzceqVar.zzg = true;
            }
            zzceqVar.zzf.zze();
        }
    }

    public static /* synthetic */ void zzk(zzceq zzceqVar) {
        zzcbb zzcbbVar = zzceqVar.zzf;
        if (zzcbbVar != null) {
            zzcbbVar.zzd();
        }
    }

    public static /* synthetic */ void zzl(zzceq zzceqVar) {
        zzcbb zzcbbVar = zzceqVar.zzf;
        if (zzcbbVar != null) {
            zzcbbVar.zzf();
        }
    }

    @EnsuresNonNullIf
    private final boolean zzm() {
        int i = this.zzh;
        if (i != 1 && i != 2 && this.zzd != null) {
            return true;
        }
        return false;
    }

    private final void zzv(int i) {
        if (i == 4) {
            this.zzc.zzc();
            this.zzb.zzb();
        } else if (this.zzh == 4) {
            this.zzc.zze();
            this.zzb.zzc();
        }
        this.zzh = i;
    }

    @Override // android.view.View
    public final String toString() {
        String name = zzceq.class.getName();
        String hexString = Integer.toHexString(hashCode());
        return name + "@" + hexString;
    }

    @Override // com.google.android.gms.internal.ads.zzcbc
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcbc
    public final int zzb() {
        if (zzm()) {
            return 0;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcbc
    public final int zzc() {
        if (zzm()) {
            return 0;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcbc
    public final int zzd() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcbc
    public final int zze() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcbc
    public final long zzf() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbc
    public final long zzg() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbc
    public final long zzh() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbc
    public final String zzj() {
        return "ImmersivePlayer";
    }

    @Override // com.google.android.gms.internal.ads.zzcbc, com.google.android.gms.internal.ads.zzcbz
    public final void zzn() {
        if (this.zzd != null) {
            this.zzb.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbc
    public final void zzo() {
        com.google.android.gms.ads.internal.util.zze.zza("AdImmersivePlayerView pause");
        if (zzm() && this.zzd.zzd()) {
            this.zzd.zza();
            zzv(5);
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcep
                @Override // java.lang.Runnable
                public final void run() {
                    zzceq.zzk(zzceq.this);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbc
    public final void zzp() {
        com.google.android.gms.ads.internal.util.zze.zza("AdImmersivePlayerView play");
        if (zzm()) {
            this.zzd.zzb();
            zzv(4);
            this.zza.zzb();
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzceo
                @Override // java.lang.Runnable
                public final void run() {
                    zzceq.zzi(zzceq.this);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbc
    public final void zzq(int i) {
        com.google.android.gms.ads.internal.util.zze.zza("AdImmersivePlayerView seek " + i);
    }

    @Override // com.google.android.gms.internal.ads.zzcbc
    public final void zzr(zzcbb zzcbbVar) {
        this.zzf = zzcbbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcbc
    public final void zzs(@Nullable String str) {
        if (str != null) {
            Uri parse = Uri.parse(str);
            this.zze = parse;
            this.zzd = new zzcer(parse.toString());
            zzv(3);
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcen
                @Override // java.lang.Runnable
                public final void run() {
                    zzceq.zzl(zzceq.this);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbc
    public final void zzt() {
        com.google.android.gms.ads.internal.util.zze.zza("AdImmersivePlayerView stop");
        zzcer zzcerVar = this.zzd;
        if (zzcerVar != null) {
            zzcerVar.zzc();
            this.zzd = null;
            zzv(1);
        }
        this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzcbc
    public final void zzu(float f, float f2) {
    }
}
