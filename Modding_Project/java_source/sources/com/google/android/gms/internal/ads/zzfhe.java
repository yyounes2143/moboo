package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfhe implements zzfhc {
    private final Context zza;
    private final int zzp;
    private long zzb = 0;
    private long zzc = -1;
    private boolean zzd = false;
    private int zzq = 2;
    private int zzr = 2;
    private int zze = 0;
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private zzfhs zzj = zzfhs.SCAR_REQUEST_TYPE_UNSPECIFIED;
    private String zzk = "";
    private String zzl = "";
    private String zzm = "";
    private boolean zzn = false;
    private boolean zzo = false;

    public zzfhe(Context context, int i) {
        this.zza = context;
        this.zzp = i;
    }

    public final synchronized zzfhe zzA() {
        this.zzc = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
        return this;
    }

    public final synchronized zzfhe zzK(int i) {
        this.zzq = i;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final /* bridge */ /* synthetic */ zzfhc zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzr(zzeVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final /* bridge */ /* synthetic */ zzfhc zzb(zzfcf zzfcfVar) {
        zzs(zzfcfVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final /* bridge */ /* synthetic */ zzfhc zzc(String str) {
        zzt(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final /* bridge */ /* synthetic */ zzfhc zzd(String str) {
        zzu(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final /* bridge */ /* synthetic */ zzfhc zze(String str) {
        zzv(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final /* bridge */ /* synthetic */ zzfhc zzf(zzfhs zzfhsVar) {
        zzw(zzfhsVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final /* bridge */ /* synthetic */ zzfhc zzg(boolean z) {
        zzx(z);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final /* bridge */ /* synthetic */ zzfhc zzh(Throwable th) {
        zzy(th);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final /* bridge */ /* synthetic */ zzfhc zzi() {
        zzz();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final /* bridge */ /* synthetic */ zzfhc zzj() {
        zzA();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final synchronized boolean zzk() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final boolean zzl() {
        if (!TextUtils.isEmpty(this.zzh)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    @Nullable
    public final synchronized zzfhg zzm() {
        try {
            if (this.zzn) {
                return null;
            }
            this.zzn = true;
            if (!this.zzo) {
                zzz();
            }
            if (this.zzc < 0) {
                zzA();
            }
            return new zzfhg(this, null);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfhc
    public final /* bridge */ /* synthetic */ zzfhc zzn(int i) {
        zzK(i);
        return this;
    }

    public final synchronized zzfhe zzr(com.google.android.gms.ads.internal.client.zze zzeVar) {
        try {
            IBinder iBinder = zzeVar.zze;
            if (iBinder != null) {
                zzcvm zzcvmVar = (zzcvm) iBinder;
                String zzl = zzcvmVar.zzl();
                if (!TextUtils.isEmpty(zzl)) {
                    this.zzf = zzl;
                }
                String zzi = zzcvmVar.zzi();
                if (!TextUtils.isEmpty(zzi)) {
                    this.zzg = zzi;
                }
            }
        } finally {
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x002a, code lost:
        r2.zzg = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.google.android.gms.internal.ads.zzfhe zzs(com.google.android.gms.internal.ads.zzfcf r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            com.google.android.gms.internal.ads.zzfbx r0 = r3.zzb     // Catch: java.lang.Throwable -> Le
            java.lang.String r0 = r0.zzb     // Catch: java.lang.Throwable -> Le
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> Le
            if (r1 != 0) goto L10
            r2.zzf = r0     // Catch: java.lang.Throwable -> Le
            goto L10
        Le:
            r3 = move-exception
            goto L2e
        L10:
            java.util.List r3 = r3.zza     // Catch: java.lang.Throwable -> Le
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> Le
        L16:
            boolean r0 = r3.hasNext()     // Catch: java.lang.Throwable -> Le
            if (r0 == 0) goto L2c
            java.lang.Object r0 = r3.next()     // Catch: java.lang.Throwable -> Le
            com.google.android.gms.internal.ads.zzfbu r0 = (com.google.android.gms.internal.ads.zzfbu) r0     // Catch: java.lang.Throwable -> Le
            java.lang.String r0 = r0.zzab     // Catch: java.lang.Throwable -> Le
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> Le
            if (r1 != 0) goto L16
            r2.zzg = r0     // Catch: java.lang.Throwable -> Le
        L2c:
            monitor-exit(r2)
            return r2
        L2e:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Le
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfhe.zzs(com.google.android.gms.internal.ads.zzfcf):com.google.android.gms.internal.ads.zzfhe");
    }

    public final synchronized zzfhe zzt(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjd)).booleanValue()) {
            this.zzm = str;
        }
        return this;
    }

    public final synchronized zzfhe zzu(String str) {
        this.zzh = str;
        return this;
    }

    public final synchronized zzfhe zzv(String str) {
        this.zzi = str;
        return this;
    }

    public final synchronized zzfhe zzw(zzfhs zzfhsVar) {
        this.zzj = zzfhsVar;
        return this;
    }

    public final synchronized zzfhe zzx(boolean z) {
        this.zzd = z;
        return this;
    }

    public final synchronized zzfhe zzy(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjd)).booleanValue()) {
            this.zzl = zzbui.zzf(th);
            this.zzk = (String) zzfvr.zzb(zzfun.zzc('\n')).zzd(zzbui.zze(th)).iterator().next();
        }
        return this;
    }

    public final synchronized zzfhe zzz() {
        Configuration configuration;
        com.google.android.gms.ads.internal.util.zzaa zzs = com.google.android.gms.ads.internal.zzv.zzs();
        Context context = this.zza;
        this.zze = zzs.zzm(context);
        Resources resources = context.getResources();
        int i = 2;
        if (resources != null && (configuration = resources.getConfiguration()) != null) {
            i = configuration.orientation == 2 ? 4 : 3;
        }
        this.zzr = i;
        this.zzb = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
        this.zzo = true;
        return this;
    }
}
