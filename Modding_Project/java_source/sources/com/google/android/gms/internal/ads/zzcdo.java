package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcdo extends zzcdi implements zzhg {
    private static final AtomicInteger zzd = new AtomicInteger(0);
    private String zze;
    private final zzcbv zzf;
    private boolean zzg;
    private final zzcdn zzh;
    private final zzccs zzi;
    private ByteBuffer zzj;
    private boolean zzk;
    private final Object zzl;
    private final String zzm;
    private final int zzn;
    private boolean zzo;

    public zzcdo(zzcbw zzcbwVar, zzcbv zzcbvVar) {
        super(zzcbwVar);
        String str;
        int i;
        this.zzf = zzcbvVar;
        this.zzh = new zzcdn();
        this.zzi = new zzccs();
        this.zzl = new Object();
        if (zzcbwVar != null) {
            str = zzcbwVar.zzr();
        } else {
            str = null;
        }
        this.zzm = (String) zzfva.zzd(str).zzb("");
        if (zzcbwVar != null) {
            i = zzcbwVar.zzf();
        } else {
            i = 0;
        }
        this.zzn = i;
        zzd.incrementAndGet();
    }

    public static int zzi() {
        return zzd.get();
    }

    public static final String zzv(String str) {
        return "cache:".concat(String.valueOf(com.google.android.gms.ads.internal.util.client.zzf.zzg(str)));
    }

    private final void zzx() {
        boolean z;
        int zza = (int) this.zzh.zza();
        int zza2 = (int) this.zzi.zza(this.zzj);
        int position = this.zzj.position();
        int round = Math.round(zza2 * (position / zza));
        int zzs = zzcbn.zzs();
        int zzu = zzcbn.zzu();
        String str = this.zze;
        String zzv = zzv(str);
        long j = round;
        if (round > 0) {
            z = true;
        } else {
            z = false;
        }
        zzn(str, zzv, position, zza, j, zza2, z, zzs, zzu);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzd.decrementAndGet();
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zzd(zzgg zzggVar, zzgl zzglVar, boolean z) {
        if (zzggVar instanceof zzgt) {
            this.zzh.zzb((zzgt) zzggVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzf() {
        this.zzg = true;
    }

    public final String zzk() {
        return this.zze;
    }

    public final ByteBuffer zzl() {
        synchronized (this.zzl) {
            try {
                ByteBuffer byteBuffer = this.zzj;
                if (byteBuffer != null && !this.zzk) {
                    byteBuffer.flip();
                    this.zzk = true;
                }
                this.zzg = true;
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.zzj;
    }

    public final boolean zzm() {
        return this.zzo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00ac, code lost:
        r23.zzo = true;
        zzj(r24, r4, (int) r23.zzi.zza(r23.zzj));
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e6, code lost:
        return true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v7, types: [boolean] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:? -> B:23:0x00cf). Please submit an issue!!! */
    @Override // com.google.android.gms.internal.ads.zzcdi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzt(java.lang.String r24) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcdo.zzt(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zzb(zzgg zzggVar, zzgl zzglVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zzc(zzgg zzggVar, zzgl zzglVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zza(zzgg zzggVar, zzgl zzglVar, boolean z, int i) {
    }
}
