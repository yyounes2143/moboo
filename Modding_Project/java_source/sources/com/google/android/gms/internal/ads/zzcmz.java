package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcmz implements zzcvt, zzcxh, zzcwn, com.google.android.gms.ads.internal.client.zza, zzcwj, zzddp, zzcyj {
    private final Context zza;
    private final Executor zzb;
    private final Executor zzc;
    private final ScheduledExecutorService zzd;
    private final zzfcg zze;
    private final zzfbu zzf;
    private final zzfjn zzg;
    private final zzfdb zzh;
    private final zzavl zzi;
    private final zzbec zzj;
    private final WeakReference zzk;
    private final WeakReference zzl;
    @Nullable
    private final zzcut zzm;
    private final zzcyd zzn;
    private boolean zzo;
    private final AtomicBoolean zzp = new AtomicBoolean();

    public zzcmz(Context context, Executor executor, Executor executor2, ScheduledExecutorService scheduledExecutorService, zzfcg zzfcgVar, zzfbu zzfbuVar, zzfjn zzfjnVar, zzfdb zzfdbVar, @Nullable View view, @Nullable zzcfb zzcfbVar, zzavl zzavlVar, zzbec zzbecVar, zzbee zzbeeVar, zzfhn zzfhnVar, @Nullable zzcut zzcutVar, zzcyd zzcydVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = executor2;
        this.zzd = scheduledExecutorService;
        this.zze = zzfcgVar;
        this.zzf = zzfbuVar;
        this.zzg = zzfjnVar;
        this.zzh = zzfdbVar;
        this.zzi = zzavlVar;
        this.zzk = new WeakReference(view);
        this.zzl = new WeakReference(zzcfbVar);
        this.zzj = zzbecVar;
        this.zzm = zzcutVar;
        this.zzn = zzcydVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List zzw() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlH)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzr();
            Context context = this.zza;
            if (com.google.android.gms.ads.internal.util.zzs.zzC(context)) {
                com.google.android.gms.ads.internal.zzv.zzr();
                Integer zzt = com.google.android.gms.ads.internal.util.zzs.zzt(context);
                if (zzt != null) {
                    int min = Math.min(zzt.intValue(), 20);
                    ArrayList arrayList = new ArrayList();
                    for (String str : this.zzf.zzd) {
                        arrayList.add(Uri.parse(str).buildUpon().appendQueryParameter("dspct", Integer.toString(min)).toString());
                    }
                    return arrayList;
                }
            }
        }
        return this.zzf.zzd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzx() {
        String str;
        int i;
        zzfbu zzfbuVar = this.zzf;
        List list = zzfbuVar.zzd;
        if (list != null && !list.isEmpty()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdO)).booleanValue()) {
                str = this.zzi.zzc().zzh(this.zza, (View) this.zzk.get(), null);
            } else {
                str = null;
            }
            if ((((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaF)).booleanValue() && this.zze.zzb.zzb.zzh) || !((Boolean) zzbeu.zzh.zze()).booleanValue()) {
                this.zzh.zza(this.zzg.zze(this.zze, zzfbuVar, false, str, null, zzw()), this.zzn);
                return;
            }
            if (((Boolean) zzbeu.zzg.zze()).booleanValue() && ((i = zzfbuVar.zzb) == 1 || i == 2 || i == 5)) {
                zzcfb zzcfbVar = (zzcfb) this.zzl.get();
            }
            zzgcy.zzr((zzgcp) zzgcy.zzo(zzgcp.zzw(zzgcy.zzh(null)), ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbi)).longValue(), TimeUnit.MILLISECONDS, this.zzd), new zzcmy(this, str), this.zzb);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzy(final int i, final int i2) {
        View view;
        if (i > 0 && ((view = (View) this.zzk.get()) == null || view.getHeight() == 0 || view.getWidth() == 0)) {
            this.zzd.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmv
                @Override // java.lang.Runnable
                public final void run() {
                    r0.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmw
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcmz.this.zzy(r2 - 1, r3);
                        }
                    });
                }
            }, i2, TimeUnit.MILLISECONDS);
        } else {
            zzx();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if ((!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaF)).booleanValue() || !this.zze.zzb.zzb.zzh) && ((Boolean) zzbeu.zzd.zze()).booleanValue()) {
            zzgcy.zzr((zzgcp) zzgcy.zze(zzgcp.zzw(this.zzj.zza()), Throwable.class, new zzfur() { // from class: com.google.android.gms.internal.ads.zzcmt
                @Override // com.google.android.gms.internal.ads.zzfur
                public final Object apply(Object obj) {
                    Throwable th = (Throwable) obj;
                    return "failure_click_attok";
                }
            }, zzcaa.zzg), new zzcmx(this), this.zzb);
            return;
        }
        zzfdb zzfdbVar = this.zzh;
        zzfjn zzfjnVar = this.zzg;
        zzfcg zzfcgVar = this.zze;
        zzfbu zzfbuVar = this.zzf;
        Context context = this.zza;
        List zzd = zzfjnVar.zzd(zzfcgVar, zzfbuVar, zzfbuVar.zzc);
        int i = 1;
        if (true == com.google.android.gms.ads.internal.zzv.zzp().zzA(context)) {
            i = 2;
        }
        zzfdbVar.zzc(zzd, i);
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzdu(zzbvx zzbvxVar, String str, String str2) {
        zzfjn zzfjnVar = this.zzg;
        zzfdb zzfdbVar = this.zzh;
        zzfbu zzfbuVar = this.zzf;
        zzfdbVar.zza(zzfjnVar.zzf(zzfbuVar, zzfbuVar.zzh, zzbvxVar), null);
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zze() {
        zzfjn zzfjnVar = this.zzg;
        zzfcg zzfcgVar = this.zze;
        zzfdb zzfdbVar = this.zzh;
        zzfbu zzfbuVar = this.zzf;
        zzfdbVar.zza(zzfjnVar.zzd(zzfcgVar, zzfbuVar, zzfbuVar.zzi), null);
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzf() {
        zzfjn zzfjnVar = this.zzg;
        zzfcg zzfcgVar = this.zze;
        zzfdb zzfdbVar = this.zzh;
        zzfbu zzfbuVar = this.zzf;
        zzfdbVar.zza(zzfjnVar.zzd(zzfcgVar, zzfbuVar, zzfbuVar.zzg), null);
    }

    @Override // com.google.android.gms.internal.ads.zzcwj
    public final void zzr(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbH)).booleanValue()) {
            int i = zzeVar.zza;
            zzfbu zzfbuVar = this.zzf;
            ArrayList arrayList = new ArrayList();
            for (String str : zzfbuVar.zzo) {
                arrayList.add(zzfjn.zzc(str, "@gw_mpe@", "2." + i));
            }
            this.zzh.zza(this.zzg.zzd(this.zze, zzfbuVar, arrayList), null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void zzs() {
        if (!this.zzp.compareAndSet(false, true)) {
            return;
        }
        int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdX)).intValue();
        if (intValue > 0) {
            zzy(intValue, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdY)).intValue());
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdW)).booleanValue()) {
            this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcms
                @Override // java.lang.Runnable
                public final void run() {
                    r0.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmu
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcmz.this.zzx();
                        }
                    });
                }
            });
        } else {
            zzx();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final synchronized void zzt() {
        zzcut zzcutVar;
        try {
            if (this.zzo) {
                ArrayList arrayList = new ArrayList(zzw());
                zzfbu zzfbuVar = this.zzf;
                arrayList.addAll(zzfbuVar.zzf);
                this.zzh.zza(this.zzg.zze(this.zze, zzfbuVar, true, null, null, arrayList), null);
            } else {
                zzfdb zzfdbVar = this.zzh;
                zzfjn zzfjnVar = this.zzg;
                zzfcg zzfcgVar = this.zze;
                zzfbu zzfbuVar2 = this.zzf;
                zzfdbVar.zza(zzfjnVar.zzd(zzfcgVar, zzfbuVar2, zzfbuVar2.zzm), null);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdT)).booleanValue() && (zzcutVar = this.zzm) != null) {
                    List<String> list = zzcutVar.zzb().zzm;
                    String zzg = zzcutVar.zza().zzg();
                    ArrayList arrayList2 = new ArrayList();
                    for (String str : list) {
                        arrayList2.add(zzfjn.zzc(str, "@gw_adnetstatus@", zzg));
                    }
                    long zza = zzcutVar.zza().zza();
                    ArrayList arrayList3 = new ArrayList();
                    int size = arrayList2.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList2.get(i);
                        i++;
                        arrayList3.add(zzfjn.zzc((String) obj, "@gw_ttr@", Long.toString(zza, 10)));
                    }
                    zzfdbVar.zza(zzfjnVar.zzd(zzcutVar.zzc(), zzcutVar.zzb(), arrayList3), null);
                }
                zzfdbVar.zza(zzfjnVar.zzd(zzfcgVar, zzfbuVar2, zzfbuVar2.zzf), null);
            }
            this.zzo = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyj
    public final void zzu() {
        zzfbu zzfbuVar = this.zzf;
        if (zzfbuVar.zze == 4) {
            this.zzh.zza(this.zzg.zzd(this.zze, zzfbuVar, zzfbuVar.zzaA), null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddp
    public final void zzv() {
        zzfjn zzfjnVar = this.zzg;
        zzfcg zzfcgVar = this.zze;
        zzfdb zzfdbVar = this.zzh;
        zzfbu zzfbuVar = this.zzf;
        zzfdbVar.zza(zzfjnVar.zzd(zzfcgVar, zzfbuVar, zzfbuVar.zzau), null);
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzc() {
    }
}
