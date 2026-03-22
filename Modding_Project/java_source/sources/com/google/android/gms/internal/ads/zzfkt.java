package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.ClientApi;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzfkt {
    protected final ClientApi zza;
    protected final Context zzb;
    protected final int zzc;
    protected final zzbpl zzd;
    protected com.google.android.gms.ads.internal.client.zzfp zze;
    private final com.google.android.gms.ads.internal.client.zzce zzg;
    private final Queue zzh;
    private final zzfjx zzi;
    private final ScheduledExecutorService zzk;
    private zzfkc zzn;
    private final Clock zzo;
    private final zzfkk zzp;
    protected final AtomicBoolean zzf = new AtomicBoolean(true);
    private final AtomicBoolean zzj = new AtomicBoolean(false);
    private final AtomicBoolean zzl = new AtomicBoolean(true);
    private final AtomicBoolean zzm = new AtomicBoolean(false);

    public zzfkt(ClientApi clientApi, Context context, int i, zzbpl zzbplVar, @NonNull com.google.android.gms.ads.internal.client.zzfp zzfpVar, @NonNull com.google.android.gms.ads.internal.client.zzce zzceVar, @NonNull ScheduledExecutorService scheduledExecutorService, zzfjx zzfjxVar, Clock clock) {
        this.zza = clientApi;
        this.zzb = context;
        this.zzc = i;
        this.zzd = zzbplVar;
        this.zze = zzfpVar;
        this.zzg = zzceVar;
        this.zzh = new PriorityQueue(Math.max(1, zzfpVar.zzd), new zzfkn(this));
        this.zzk = scheduledExecutorService;
        this.zzi = zzfjxVar;
        this.zzo = clock;
        this.zzp = new zzfkk(new zzfki(zzfpVar.zza, AdFormat.getAdFormat(this.zze.zzb)), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzA(Throwable th) {
        try {
            this.zzj.set(false);
            if ((th instanceof zzfjt) && ((zzfjt) th).zza() == 0) {
                throw null;
            }
            zzH(true);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzB(Object obj) {
        try {
            boolean z = false;
            this.zzj.set(false);
            if (obj != null) {
                this.zzi.zzc();
                this.zzm.set(true);
                zzz(obj);
            }
            if (obj == null) {
                z = true;
            }
            zzH(z);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzC() {
        if (this.zzl.get()) {
            try {
                this.zzg.zze(this.zze);
            } catch (RemoteException unused) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to call onAdsAvailable");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzD() {
        if (this.zzl.get()) {
            try {
                this.zzg.zzf(this.zze);
            } catch (RemoteException unused) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to call onAdsExhausted");
            }
        }
    }

    private final synchronized void zzE() {
        AtomicBoolean atomicBoolean = this.zzm;
        if (atomicBoolean.get() && this.zzh.isEmpty()) {
            atomicBoolean.set(false);
            com.google.android.gms.ads.internal.util.zzs.zza.post(new zzfkr(this));
            this.zzk.execute(new zzfks(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzF(com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.zzj.set(false);
        int i = zzeVar.zza;
        if (i != 1 && i != 8 && i != 10 && i != 11) {
            zzH(true);
            return;
        }
        com.google.android.gms.ads.internal.client.zzfp zzfpVar = this.zze;
        String str = "Preloading " + zzfpVar.zzb + ", for adUnitId:" + zzfpVar.zza + ", Ad load failed. Stop preloading due to non-retriable error:";
        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi(str);
        this.zzf.set(false);
    }

    private final synchronized void zzG() {
        Iterator it = this.zzh.iterator();
        while (it.hasNext()) {
            if (((zzfkl) it.next()).zzd()) {
                it.remove();
            }
        }
    }

    private final synchronized void zzH(boolean z) {
        try {
            zzfjx zzfjxVar = this.zzi;
            if (!zzfjxVar.zze()) {
                if (z) {
                    zzfjxVar.zzb();
                }
                this.zzk.schedule(new zzfko(this), zzfjxVar.zza(), TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static final String zzI(@Nullable com.google.android.gms.ads.internal.client.zzdx zzdxVar) {
        if (!(zzdxVar instanceof zzcvm)) {
            return null;
        }
        return ((zzcvm) zzdxVar).zzl();
    }

    public static /* bridge */ /* synthetic */ double zzc(zzfkt zzfktVar, com.google.android.gms.ads.internal.client.zzdx zzdxVar) {
        if (!(zzdxVar instanceof zzcvm)) {
            return FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        }
        return ((zzcvm) zzdxVar).zzc();
    }

    private final synchronized void zzz(Object obj) {
        Clock clock = this.zzo;
        zzfkl zzfklVar = new zzfkl(obj, clock);
        this.zzh.add(zzfklVar);
        com.google.android.gms.ads.internal.client.zzdx zza = zza(obj);
        long currentTimeMillis = clock.currentTimeMillis();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzfkp(this));
        zzfkq zzfkqVar = new zzfkq(this, currentTimeMillis, zza);
        ScheduledExecutorService scheduledExecutorService = this.zzk;
        scheduledExecutorService.execute(zzfkqVar);
        scheduledExecutorService.schedule(new zzfko(this), zzfklVar.zza(), TimeUnit.MILLISECONDS);
    }

    @Nullable
    public abstract com.google.android.gms.ads.internal.client.zzdx zza(Object obj);

    public abstract ListenableFuture zzb(Context context);

    public final synchronized int zzd() {
        return this.zzh.size();
    }

    public final synchronized zzfkt zzg() {
        this.zzk.submit(new zzfko(this));
        return this;
    }

    @Nullable
    public final synchronized Object zzi() {
        zzfkl zzfklVar = (zzfkl) this.zzh.peek();
        if (zzfklVar == null) {
            return null;
        }
        return zzfklVar.zzc();
    }

    @Nullable
    public final synchronized Object zzj() {
        boolean z;
        try {
            this.zzi.zzc();
            Queue queue = this.zzh;
            zzfkl zzfklVar = (zzfkl) queue.poll();
            if (zzfklVar != null) {
                z = true;
            } else {
                z = false;
            }
            this.zzm.set(z);
            if (zzfklVar != null) {
                if (!queue.isEmpty()) {
                    zzfkl zzfklVar2 = (zzfkl) queue.peek();
                    AdFormat adFormat = AdFormat.getAdFormat(this.zze.zzb);
                    String zzI = zzI(zza(zzfklVar.zzc()));
                    if (zzfklVar2 != null && adFormat != null && zzI != null && zzfklVar2.zzb() < zzfklVar.zzb()) {
                        this.zzn.zzg(this.zzo.currentTimeMillis(), this.zze.zzd, zzd(), zzI, this.zzp);
                    }
                }
            } else {
                zzfklVar = null;
            }
            zzs();
            if (zzfklVar == null) {
                return null;
            }
            return zzfklVar.zzc();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Nullable
    public final synchronized String zzl() {
        com.google.android.gms.ads.internal.client.zzdx zza;
        Object zzi = zzi();
        if (zzi == null) {
            zza = null;
        } else {
            zza = zza(zzi);
        }
        return zzI(zza);
    }

    public final void zzr() {
        this.zzh.clear();
    }

    public final synchronized void zzs() {
        ListenableFuture zzb;
        try {
            zzG();
            zzE();
            AtomicBoolean atomicBoolean = this.zzj;
            if (!atomicBoolean.get() && this.zzf.get() && this.zzh.size() < this.zze.zzd) {
                atomicBoolean.set(true);
                Activity zza = com.google.android.gms.ads.internal.zzv.zzb().zza();
                if (zza == null) {
                    String valueOf = String.valueOf(this.zze.zza);
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Empty activity context at preloading: ".concat(valueOf));
                    zzb = zzb(this.zzb);
                } else {
                    zzb = zzb(zza);
                }
                zzgcy.zzr(zzb, new zzfkm(this), this.zzk);
            }
        } finally {
        }
    }

    public final synchronized void zzt(int i) {
        boolean z;
        if (i >= 5) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        this.zzi.zzd(i);
    }

    public final synchronized void zzu() {
        this.zzf.set(true);
        this.zzl.set(true);
        this.zzk.submit(new zzfko(this));
    }

    public final void zzv(zzfkc zzfkcVar) {
        this.zzn = zzfkcVar;
    }

    public final void zzw() {
        this.zzf.set(false);
        this.zzl.set(false);
    }

    public final void zzx(int i) {
        boolean z;
        int i2;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        AdFormat adFormat = AdFormat.getAdFormat(this.zze.zzb);
        int i3 = this.zze.zzd;
        synchronized (this) {
            try {
                com.google.android.gms.ads.internal.client.zzfp zzfpVar = this.zze;
                String str = zzfpVar.zza;
                int i4 = zzfpVar.zzb;
                com.google.android.gms.ads.internal.client.zzm zzmVar = zzfpVar.zzc;
                if (i > 0) {
                    i2 = i;
                } else {
                    i2 = zzfpVar.zzd;
                }
                this.zze = new com.google.android.gms.ads.internal.client.zzfp(str, i4, zzmVar, i2);
                Queue queue = this.zzh;
                if (queue.size() > i) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzu)).booleanValue()) {
                        ArrayList arrayList = new ArrayList();
                        for (int i5 = 0; i5 < i; i5++) {
                            zzfkl zzfklVar = (zzfkl) queue.poll();
                            if (zzfklVar != null) {
                                arrayList.add(zzfklVar);
                            }
                        }
                        queue.clear();
                        queue.addAll(arrayList);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzfkc zzfkcVar = this.zzn;
        if (zzfkcVar != null && adFormat != null) {
            zzfkcVar.zza(i3, i, this.zzo.currentTimeMillis(), new zzfkk(new zzfki(this.zze.zza, adFormat), null));
        }
    }

    public final synchronized boolean zzy() {
        zzG();
        if (!this.zzh.isEmpty()) {
            return true;
        }
        return false;
    }
}
