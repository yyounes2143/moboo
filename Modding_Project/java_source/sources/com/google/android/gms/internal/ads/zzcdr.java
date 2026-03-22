package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.common.util.Clock;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcdr extends zzcdi implements zzcbm {
    public static final /* synthetic */ int zzd = 0;
    private zzcbn zze;
    private String zzf;
    private boolean zzg;
    private boolean zzh;
    private zzcda zzi;
    private long zzj;
    private long zzk;

    public zzcdr(zzcbw zzcbwVar, zzcbv zzcbvVar) {
        super(zzcbwVar);
        zzcej zzcejVar = new zzcej(zzcbwVar.getContext(), zzcbvVar, (zzcbw) this.zzc.get(), null);
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("ExoPlayerAdapter initialized.");
        this.zze = zzcejVar;
        zzcejVar.zzL(this);
    }

    public static /* synthetic */ void zzb(zzcdr zzcdrVar) {
        long longValue;
        long intValue;
        boolean booleanValue;
        long j;
        long j2;
        long j3;
        boolean z;
        long j4;
        long j5;
        String zzc = zzc(zzcdrVar.zzf);
        try {
            longValue = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzN)).longValue() * 1000;
            intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzt)).intValue();
            booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcc)).booleanValue();
        } catch (Exception e) {
            String str = "Failed to preload url " + zzcdrVar.zzf + " Exception: " + e.getMessage();
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj(str);
            com.google.android.gms.ads.internal.zzv.zzp().zzv(e, "VideoStreamExoPlayerCache.preload");
            zzcdrVar.release();
            zzcdrVar.zzg(zzcdrVar.zzf, zzc, "error", zzd("error", e));
        }
        synchronized (zzcdrVar) {
            if (com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - zzcdrVar.zzj <= longValue) {
                if (!zzcdrVar.zzg) {
                    if (!zzcdrVar.zzh) {
                        if (zzcdrVar.zze.zzV()) {
                            long zzz = zzcdrVar.zze.zzz();
                            if (zzz > 0) {
                                long zzv = zzcdrVar.zze.zzv();
                                if (zzv != zzcdrVar.zzk) {
                                    if (zzv > 0) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    String str2 = zzcdrVar.zzf;
                                    long j6 = -1;
                                    if (booleanValue) {
                                        j4 = zzcdrVar.zze.zzA();
                                    } else {
                                        j4 = -1;
                                    }
                                    if (booleanValue) {
                                        j5 = zzcdrVar.zze.zzx();
                                    } else {
                                        j5 = -1;
                                    }
                                    if (booleanValue) {
                                        j6 = zzcdrVar.zze.zzB();
                                    }
                                    j = intValue;
                                    j2 = zzz;
                                    j3 = zzv;
                                    zzcdrVar.zzo(str2, zzc, j3, j2, z, j4, j5, j6, zzcbn.zzs(), zzcbn.zzu());
                                    zzcdrVar.zzk = j3;
                                } else {
                                    j = intValue;
                                    j2 = zzz;
                                    j3 = zzv;
                                }
                                if (j3 >= j2) {
                                    zzcdrVar.zzj(zzcdrVar.zzf, zzc, j2);
                                } else if (zzcdrVar.zze.zzw() >= j && j3 > 0) {
                                }
                            }
                            zzcdrVar.zzx(((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzO)).longValue());
                            return;
                        }
                        throw new IOException("ExoPlayer was released during preloading.");
                    }
                    com.google.android.gms.ads.internal.zzv.zzA().zzc(zzcdrVar.zzi);
                    return;
                }
                throw new IOException("Abort requested before buffering finished. ");
            }
            throw new IOException("Timeout reached. Limit: " + longValue + " ms");
        }
    }

    public static final String zzc(String str) {
        return "cache:".concat(String.valueOf(com.google.android.gms.ads.internal.util.client.zzf.zzg(str)));
    }

    private static String zzd(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        return str + "/" + canonicalName + ":" + message;
    }

    private final void zzx(long j) {
        com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcdq
            @Override // java.lang.Runnable
            public final void run() {
                zzcdr.zzb(zzcdr.this);
            }
        }, j);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzcbn zzcbnVar = this.zze;
        if (zzcbnVar != null) {
            zzcbnVar.zzL(null);
            this.zze.zzH();
        }
    }

    public final zzcbn zza() {
        synchronized (this) {
            this.zzh = true;
            notify();
        }
        this.zze.zzL(null);
        zzcbn zzcbnVar = this.zze;
        this.zze = null;
        return zzcbnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzf() {
        synchronized (this) {
            this.zzg = true;
            notify();
            release();
        }
        String str = this.zzf;
        if (str != null) {
            zzg(this.zzf, zzc(str), "externalAbort", "Programmatic precache abort.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zzi(final boolean z, final long j) {
        final zzcbw zzcbwVar = (zzcbw) this.zzc.get();
        if (zzcbwVar != null) {
            zzcaa.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcdp
                @Override // java.lang.Runnable
                public final void run() {
                    zzcbw.this.zzv(z, j);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zzk(String str, Exception exc) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzk("Precache error", exc);
        com.google.android.gms.ads.internal.zzv.zzp().zzv(exc, "VideoStreamExoPlayerCache.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zzl(String str, Exception exc) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzk("Precache exception", exc);
        com.google.android.gms.ads.internal.zzv.zzp().zzv(exc, "VideoStreamExoPlayerCache.onException");
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzp(int i) {
        this.zze.zzJ(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzq(int i) {
        this.zze.zzK(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzr(int i) {
        this.zze.zzM(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzs(int i) {
        this.zze.zzN(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final boolean zzt(String str) {
        return zzu(str, new String[]{str});
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final boolean zzu(String str, String[] strArr) {
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        boolean z;
        long j7;
        long j8;
        long j9;
        this.zzf = str;
        String zzc = zzc(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            this.zze.zzF(uriArr, this.zzb);
            zzcbw zzcbwVar = (zzcbw) this.zzc.get();
            if (zzcbwVar != null) {
                zzcbwVar.zzt(zzc, this);
            }
            Clock zzD = com.google.android.gms.ads.internal.zzv.zzD();
            long currentTimeMillis = zzD.currentTimeMillis();
            long longValue = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzO)).longValue();
            long longValue2 = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzN)).longValue() * 1000;
            long intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzt)).intValue();
            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcc)).booleanValue();
            long j10 = -1;
            while (true) {
                synchronized (this) {
                    if (zzD.currentTimeMillis() - currentTimeMillis <= longValue2) {
                        if (!this.zzg) {
                            if (!this.zzh) {
                                if (this.zze.zzV()) {
                                    long zzz = this.zze.zzz();
                                    if (zzz > 0) {
                                        long zzv = this.zze.zzv();
                                        if (zzv != j10) {
                                            if (zzv > 0) {
                                                j6 = intValue;
                                                z = true;
                                            } else {
                                                j6 = intValue;
                                                z = false;
                                            }
                                            if (booleanValue) {
                                                j7 = this.zze.zzA();
                                            } else {
                                                j7 = -1;
                                            }
                                            if (booleanValue) {
                                                j8 = this.zze.zzx();
                                            } else {
                                                j8 = -1;
                                            }
                                            if (booleanValue) {
                                                j9 = this.zze.zzB();
                                            } else {
                                                j9 = -1;
                                            }
                                            long j11 = longValue;
                                            j5 = zzv;
                                            long j12 = j7;
                                            j2 = j6;
                                            j = longValue2;
                                            j4 = zzz;
                                            j3 = j11;
                                            zzo(str, zzc, j5, j4, z, j12, j8, j9, zzcbn.zzs(), zzcbn.zzu());
                                            j10 = j5;
                                        } else {
                                            j3 = longValue;
                                            j = longValue2;
                                            j2 = intValue;
                                            j4 = zzz;
                                            j5 = zzv;
                                        }
                                        if (j5 >= j4) {
                                            zzj(str, zzc, j4);
                                        } else if (this.zze.zzw() < j2 || j5 <= 0) {
                                            longValue = j3;
                                        }
                                    } else {
                                        j = longValue2;
                                        j2 = intValue;
                                    }
                                    try {
                                        wait(longValue);
                                    } catch (InterruptedException unused) {
                                        throw new IOException("Wait interrupted.");
                                    }
                                } else {
                                    throw new IOException("ExoPlayer was released during preloading.");
                                }
                            }
                        } else {
                            throw new IOException("Abort requested before buffering finished. ");
                        }
                    } else {
                        throw new IOException("Timeout reached. Limit: " + longValue2 + " ms");
                    }
                }
                intValue = j2;
                longValue2 = j;
            }
            return true;
        } catch (Exception e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to preload url " + str + " Exception: " + e.getMessage());
            com.google.android.gms.ads.internal.zzv.zzp().zzv(e, "VideoStreamExoPlayerCache.preload");
            release();
            zzg(str, zzc, "error", zzd("error", e));
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zzv() {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Precache onRenderedFirstFrame");
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final boolean zzw(String str, String[] strArr, zzcda zzcdaVar) {
        this.zzf = str;
        this.zzi = zzcdaVar;
        String zzc = zzc(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            this.zze.zzF(uriArr, this.zzb);
            zzcbw zzcbwVar = (zzcbw) this.zzc.get();
            if (zzcbwVar != null) {
                zzcbwVar.zzt(zzc, this);
            }
            this.zzj = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
            this.zzk = -1L;
            zzx(0L);
            return true;
        } catch (Exception e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to preload url " + str + " Exception: " + e.getMessage());
            com.google.android.gms.ads.internal.zzv.zzp().zzv(e, "VideoStreamExoPlayerCache.preload");
            release();
            zzg(str, zzc, "error", zzd("error", e));
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zzm(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zzD(int i, int i2) {
    }
}
