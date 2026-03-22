package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdbp {
    private final Set zza = new HashSet();
    private final Set zzb = new HashSet();
    private final Set zzc = new HashSet();
    private final Set zzd = new HashSet();
    private final Set zze = new HashSet();
    private final Set zzf = new HashSet();
    private final Set zzg = new HashSet();
    private final Set zzh = new HashSet();
    private final Set zzi = new HashSet();
    private final Set zzj = new HashSet();
    private final Set zzk = new HashSet();
    private final Set zzl = new HashSet();
    private final Set zzm = new HashSet();
    private final Set zzn = new HashSet();
    private zzezi zzo;

    public final zzdbp zza(com.google.android.gms.ads.internal.client.zza zzaVar, Executor executor) {
        this.zzc.add(new zzddq(zzaVar, executor));
        return this;
    }

    public final zzdbp zzb(zzcvw zzcvwVar, Executor executor) {
        this.zzi.add(new zzddq(zzcvwVar, executor));
        return this;
    }

    public final zzdbp zzc(zzcwj zzcwjVar, Executor executor) {
        this.zzl.add(new zzddq(zzcwjVar, executor));
        return this;
    }

    public final zzdbp zzd(zzcwn zzcwnVar, Executor executor) {
        this.zzf.add(new zzddq(zzcwnVar, executor));
        return this;
    }

    public final zzdbp zze(zzcvt zzcvtVar, Executor executor) {
        this.zze.add(new zzddq(zzcvtVar, executor));
        return this;
    }

    public final zzdbp zzf(zzcxh zzcxhVar, Executor executor) {
        this.zzh.add(new zzddq(zzcxhVar, executor));
        return this;
    }

    public final zzdbp zzg(zzcxs zzcxsVar, Executor executor) {
        this.zzg.add(new zzddq(zzcxsVar, executor));
        return this;
    }

    public final zzdbp zzh(com.google.android.gms.ads.internal.overlay.zzr zzrVar, Executor executor) {
        this.zzn.add(new zzddq(zzrVar, executor));
        return this;
    }

    public final zzdbp zzi(zzcyf zzcyfVar, Executor executor) {
        this.zzm.add(new zzddq(zzcyfVar, executor));
        return this;
    }

    public final zzdbp zzj(zzcyv zzcyvVar, Executor executor) {
        this.zzb.add(new zzddq(zzcyvVar, executor));
        return this;
    }

    public final zzdbp zzk(AppEventListener appEventListener, Executor executor) {
        this.zzk.add(new zzddq(appEventListener, executor));
        return this;
    }

    public final zzdbp zzl(zzddy zzddyVar, Executor executor) {
        this.zzd.add(new zzddq(zzddyVar, executor));
        return this;
    }

    public final zzdbp zzm(zzezi zzeziVar) {
        this.zzo = zzeziVar;
        return this;
    }

    public final zzdbr zzn() {
        return new zzdbr(this, null);
    }
}
