package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import j$.util.Objects;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public final class zzabh implements zzcb {
    private final Context zza;
    private final zzca zzb;
    private final SparseArray zzc;
    private final List zzd;
    private final zzbv zze;
    private final boolean zzf;
    private final zzach zzg;
    private final zzdg zzh;
    private final CopyOnWriteArraySet zzi;
    private zzeq zzj;
    private final zzz zzk;
    private zzdq zzl;
    @Nullable
    private Pair zzm;
    private int zzn;
    private int zzo;
    private long zzp;
    private long zzq;
    private int zzr;

    public /* synthetic */ zzabh(zzaba zzabaVar, zzabg zzabgVar) {
        Context context;
        zzca zzcaVar;
        List list;
        zzbv zzbvVar;
        boolean z;
        zzdg zzdgVar;
        zzabl zzablVar;
        context = zzabaVar.zza;
        this.zza = context;
        this.zzj = new zzeq(10);
        zzcaVar = zzabaVar.zzd;
        zzdc.zzb(zzcaVar);
        this.zzb = zzcaVar;
        this.zzc = new SparseArray();
        list = zzabaVar.zze;
        this.zzd = list;
        zzbvVar = zzabaVar.zzf;
        this.zze = zzbvVar;
        z = zzabaVar.zzg;
        this.zzf = z;
        zzdgVar = zzabaVar.zzh;
        this.zzh = zzdgVar;
        zzablVar = zzabaVar.zzb;
        this.zzg = new zzaal(zzablVar, zzdgVar);
        this.zzi = new CopyOnWriteArraySet();
        this.zzk = new zzx().zzaj();
        this.zzp = -9223372036854775807L;
        this.zzq = -9223372036854775807L;
        this.zzr = -1;
        this.zzo = 0;
    }

    public static /* bridge */ /* synthetic */ boolean zzA(zzabh zzabhVar) {
        int i = zzabhVar.zzr;
        if (i != -1 && i == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzk zzB(@Nullable zzk zzkVar) {
        if (zzkVar != null && zzkVar.zzf()) {
            return zzkVar;
        }
        return zzk.zza;
    }

    public static /* synthetic */ void zzf(zzabh zzabhVar) {
        zzabhVar.zzn--;
    }

    public static /* bridge */ /* synthetic */ void zzj(final zzabh zzabhVar, boolean z) {
        if (zzabhVar.zzo == 1) {
            zzabhVar.zzn++;
            zzach zzachVar = zzabhVar.zzg;
            zzachVar.zzj(z);
            while (zzabhVar.zzj.zza() > 1) {
                zzabhVar.zzj.zzb();
            }
            if (zzabhVar.zzj.zza() == 1) {
                zzabf zzabfVar = (zzabf) zzabhVar.zzj.zzb();
                zzabfVar.getClass();
                zzachVar.zzl(1, zzabhVar.zzk, zzabfVar.zza, zzabfVar.zzb, zzfyc.zzn());
            }
            zzabhVar.zzp = -9223372036854775807L;
            zzabhVar.zzq = -9223372036854775807L;
            zzdq zzdqVar = zzabhVar.zzl;
            zzdc.zzb(zzdqVar);
            zzdqVar.zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaay
                @Override // java.lang.Runnable
                public final void run() {
                    zzabh.zzf(zzabh.this);
                }
            });
        }
    }

    public static /* bridge */ /* synthetic */ boolean zzz(zzabh zzabhVar, zzz zzzVar, int i) {
        boolean z;
        if (zzabhVar.zzo == 0) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzf(z);
        zzk zzB = zzB(zzzVar.zzC);
        int i2 = zzB.zzd;
        try {
            if (i2 == 7) {
                if (Build.VERSION.SDK_INT >= 34 || !zzdo.zzb()) {
                    i2 = 7;
                } else {
                    zzi zzc = zzB.zzc();
                    zzc.zzd(6);
                    zzB = zzc.zzg();
                    zzk zzkVar = zzB;
                    zzdg zzdgVar = zzabhVar.zzh;
                    Looper myLooper = Looper.myLooper();
                    zzdc.zzb(myLooper);
                    final zzdq zzd = zzdgVar.zzd(myLooper, null);
                    zzabhVar.zzl = zzd;
                    zzca zzcaVar = zzabhVar.zzb;
                    Context context = zzabhVar.zza;
                    zzn zznVar = zzn.zza;
                    Objects.requireNonNull(zzd);
                    zzcaVar.zza(context, zzkVar, zznVar, zzabhVar, new Executor() { // from class: com.google.android.gms.internal.ads.zzaaz
                        @Override // java.util.concurrent.Executor
                        public final void execute(Runnable runnable) {
                            zzdq.this.zzi(runnable);
                        }
                    }, zzabhVar.zze, zzabhVar.zzd, 0L, false);
                    throw null;
                }
            }
            zzca zzcaVar2 = zzabhVar.zzb;
            Context context2 = zzabhVar.zza;
            zzn zznVar2 = zzn.zza;
            Objects.requireNonNull(zzd);
            zzcaVar2.zza(context2, zzkVar, zznVar2, zzabhVar, new Executor() { // from class: com.google.android.gms.internal.ads.zzaaz
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    zzdq.this.zzi(runnable);
                }
            }, zzabhVar.zze, zzabhVar.zzd, 0L, false);
            throw null;
        } catch (zzbw e) {
            throw new zzacg(e, zzzVar);
        }
        if (!zzdo.zzc(i2) && Build.VERSION.SDK_INT >= 29) {
            Object[] objArr = {Integer.valueOf(i2)};
            String str = zzeu.zza;
            zzdx.zzf("PlaybackVidGraphWrapper", String.format(Locale.US, "Color transfer %d is not supported. Falling back to OpenGl tone mapping.", objArr));
            zzB = zzk.zza;
        }
        zzk zzkVar2 = zzB;
        zzdg zzdgVar2 = zzabhVar.zzh;
        Looper myLooper2 = Looper.myLooper();
        zzdc.zzb(myLooper2);
        final zzdq zzd2 = zzdgVar2.zzd(myLooper2, null);
        zzabhVar.zzl = zzd2;
    }

    public final zzach zze(int i) {
        SparseArray sparseArray = this.zzc;
        if (zzeu.zzH(sparseArray, 0)) {
            return (zzach) sparseArray.get(0);
        }
        zzabb zzabbVar = new zzabb(this, this.zza, 0);
        this.zzi.add(zzabbVar);
        sparseArray.put(0, zzabbVar);
        return zzabbVar;
    }

    public final void zzr() {
        zzel zzelVar = zzel.zza;
        zzelVar.zzb();
        zzelVar.zza();
        this.zzm = null;
    }

    public final void zzs() {
        if (this.zzo == 2) {
            return;
        }
        zzdq zzdqVar = this.zzl;
        if (zzdqVar != null) {
            zzdqVar.zzf(null);
        }
        this.zzm = null;
        this.zzo = 2;
    }

    public final void zzt(Surface surface, zzel zzelVar) {
        Pair pair = this.zzm;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((zzel) this.zzm.second).equals(zzelVar)) {
            return;
        }
        this.zzm = Pair.create(surface, zzelVar);
        zzelVar.zzb();
        zzelVar.zza();
    }

    public final void zzu(int i) {
        this.zzr = 1;
    }

    public final void zzv() {
        this.zzg.zzx();
    }

    public final void zzw() {
        this.zzg.zzy();
    }
}
