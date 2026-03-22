package com.google.android.gms.internal.ads;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzvl {
    public final int zza;
    @Nullable
    public final zzvb zzb;
    private final CopyOnWriteArrayList zzc;

    private zzvl(CopyOnWriteArrayList copyOnWriteArrayList, int i, @Nullable zzvb zzvbVar) {
        this.zzc = copyOnWriteArrayList;
        this.zza = 0;
        this.zzb = zzvbVar;
    }

    @CheckResult
    public final zzvl zza(int i, @Nullable zzvb zzvbVar) {
        return new zzvl(this.zzc, 0, zzvbVar);
    }

    public final void zzb(Handler handler, zzvm zzvmVar) {
        this.zzc.add(new zzvk(handler, zzvmVar));
    }

    public final void zzc(final zzdk zzdkVar) {
        Iterator it = this.zzc.iterator();
        while (it.hasNext()) {
            zzvk zzvkVar = (zzvk) it.next();
            final zzvm zzvmVar = zzvkVar.zzb;
            zzeu.zzP(zzvkVar.zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzvj
                @Override // java.lang.Runnable
                public final void run() {
                    zzdk.this.zza(zzvmVar);
                }
            });
        }
    }

    public final void zzd(final zzux zzuxVar) {
        zzc(new zzdk() { // from class: com.google.android.gms.internal.ads.zzve
            @Override // com.google.android.gms.internal.ads.zzdk
            public final void zza(Object obj) {
                ((zzvm) obj).zzag(0, zzvl.this.zzb, zzuxVar);
            }
        });
    }

    public final void zze(final zzus zzusVar, final zzux zzuxVar) {
        zzc(new zzdk() { // from class: com.google.android.gms.internal.ads.zzvi
            @Override // com.google.android.gms.internal.ads.zzdk
            public final void zza(Object obj) {
                ((zzvm) obj).zzah(0, zzvl.this.zzb, zzusVar, zzuxVar);
            }
        });
    }

    public final void zzf(final zzus zzusVar, final zzux zzuxVar) {
        zzc(new zzdk() { // from class: com.google.android.gms.internal.ads.zzvg
            @Override // com.google.android.gms.internal.ads.zzdk
            public final void zza(Object obj) {
                ((zzvm) obj).zzai(0, zzvl.this.zzb, zzusVar, zzuxVar);
            }
        });
    }

    public final void zzg(final zzus zzusVar, final zzux zzuxVar, final IOException iOException, final boolean z) {
        zzc(new zzdk() { // from class: com.google.android.gms.internal.ads.zzvh
            @Override // com.google.android.gms.internal.ads.zzdk
            public final void zza(Object obj) {
                ((zzvm) obj).zzaj(0, zzvl.this.zzb, zzusVar, zzuxVar, iOException, z);
            }
        });
    }

    public final void zzh(final zzus zzusVar, final zzux zzuxVar, final int i) {
        zzc(new zzdk() { // from class: com.google.android.gms.internal.ads.zzvf
            @Override // com.google.android.gms.internal.ads.zzdk
            public final void zza(Object obj) {
                ((zzvm) obj).zzak(0, zzvl.this.zzb, zzusVar, zzuxVar, i);
            }
        });
    }

    public final void zzi(zzvm zzvmVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.zzc;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            zzvk zzvkVar = (zzvk) it.next();
            if (zzvkVar.zzb == zzvmVar) {
                copyOnWriteArrayList.remove(zzvkVar);
            }
        }
    }

    public zzvl() {
        this(new CopyOnWriteArrayList(), 0, null);
    }
}
