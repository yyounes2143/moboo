package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzwa implements zzzp, zzuq {
    final /* synthetic */ zzwf zza;
    private final Uri zzc;
    private final zzhf zzd;
    private final zzvu zze;
    private final zzadq zzf;
    private final zzdj zzg;
    private volatile boolean zzi;
    private long zzk;
    @Nullable
    private zzaet zzm;
    private boolean zzn;
    private final zzaej zzh = new zzaej();
    private boolean zzj = true;
    private final long zzb = zzus.zza();
    private zzgl zzl = zzi(0);

    public zzwa(zzwf zzwfVar, Uri uri, zzgg zzggVar, zzvu zzvuVar, zzadq zzadqVar, zzdj zzdjVar) {
        this.zza = zzwfVar;
        this.zzc = uri;
        this.zzd = new zzhf(zzggVar);
        this.zze = zzvuVar;
        this.zzf = zzadqVar;
        this.zzg = zzdjVar;
    }

    public static /* bridge */ /* synthetic */ void zzf(zzwa zzwaVar, long j, long j2) {
        zzwaVar.zzh.zza = j;
        zzwaVar.zzk = j2;
        zzwaVar.zzj = true;
        zzwaVar.zzn = false;
    }

    private final zzgl zzi(long j) {
        Map map;
        zzgj zzgjVar = new zzgj();
        zzgjVar.zzd(this.zzc);
        zzgjVar.zzc(j);
        zzgjVar.zza(6);
        map = zzwf.zzb;
        zzgjVar.zzb(map);
        return zzgjVar.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void zza(zzek zzekVar) {
        long zzS;
        long max;
        if (this.zzn) {
            zzS = this.zza.zzS(true);
            max = Math.max(zzS, this.zzk);
        } else {
            max = this.zzk;
        }
        long j = max;
        int zza = zzekVar.zza();
        zzaet zzaetVar = this.zzm;
        zzaetVar.getClass();
        zzaetVar.zzr(zzekVar, zza);
        zzaetVar.zzt(j, 1, zza, 0, null);
        this.zzn = true;
    }

    @Override // com.google.android.gms.internal.ads.zzzp
    public final void zzg() {
        this.zzi = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:174:0x00ad A[Catch: all -> 0x008a, TryCatch #4 {all -> 0x008a, blocks: (B:172:0x00a2, B:174:0x00ad, B:176:0x00b9, B:178:0x00c3, B:180:0x00cf, B:182:0x00d9, B:184:0x00e5, B:186:0x00ef, B:188:0x0101, B:190:0x010b, B:191:0x0111, B:200:0x013f, B:201:0x0146, B:203:0x0153, B:205:0x015b, B:207:0x0176, B:209:0x0189, B:210:0x018c, B:212:0x0190, B:195:0x011b, B:198:0x0131, B:165:0x0072, B:170:0x0090), top: B:252:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x00c3 A[Catch: all -> 0x008a, TryCatch #4 {all -> 0x008a, blocks: (B:172:0x00a2, B:174:0x00ad, B:176:0x00b9, B:178:0x00c3, B:180:0x00cf, B:182:0x00d9, B:184:0x00e5, B:186:0x00ef, B:188:0x0101, B:190:0x010b, B:191:0x0111, B:200:0x013f, B:201:0x0146, B:203:0x0153, B:205:0x015b, B:207:0x0176, B:209:0x0189, B:210:0x018c, B:212:0x0190, B:195:0x011b, B:198:0x0131, B:165:0x0072, B:170:0x0090), top: B:252:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x00d9 A[Catch: all -> 0x008a, TryCatch #4 {all -> 0x008a, blocks: (B:172:0x00a2, B:174:0x00ad, B:176:0x00b9, B:178:0x00c3, B:180:0x00cf, B:182:0x00d9, B:184:0x00e5, B:186:0x00ef, B:188:0x0101, B:190:0x010b, B:191:0x0111, B:200:0x013f, B:201:0x0146, B:203:0x0153, B:205:0x015b, B:207:0x0176, B:209:0x0189, B:210:0x018c, B:212:0x0190, B:195:0x011b, B:198:0x0131, B:165:0x0072, B:170:0x0090), top: B:252:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x00ef A[Catch: all -> 0x008a, TryCatch #4 {all -> 0x008a, blocks: (B:172:0x00a2, B:174:0x00ad, B:176:0x00b9, B:178:0x00c3, B:180:0x00cf, B:182:0x00d9, B:184:0x00e5, B:186:0x00ef, B:188:0x0101, B:190:0x010b, B:191:0x0111, B:200:0x013f, B:201:0x0146, B:203:0x0153, B:205:0x015b, B:207:0x0176, B:209:0x0189, B:210:0x018c, B:212:0x0190, B:195:0x011b, B:198:0x0131, B:165:0x0072, B:170:0x0090), top: B:252:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x010b A[Catch: all -> 0x008a, TRY_LEAVE, TryCatch #4 {all -> 0x008a, blocks: (B:172:0x00a2, B:174:0x00ad, B:176:0x00b9, B:178:0x00c3, B:180:0x00cf, B:182:0x00d9, B:184:0x00e5, B:186:0x00ef, B:188:0x0101, B:190:0x010b, B:191:0x0111, B:200:0x013f, B:201:0x0146, B:203:0x0153, B:205:0x015b, B:207:0x0176, B:209:0x0189, B:210:0x018c, B:212:0x0190, B:195:0x011b, B:198:0x0131, B:165:0x0072, B:170:0x0090), top: B:252:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x013f A[Catch: all -> 0x008a, TryCatch #4 {all -> 0x008a, blocks: (B:172:0x00a2, B:174:0x00ad, B:176:0x00b9, B:178:0x00c3, B:180:0x00cf, B:182:0x00d9, B:184:0x00e5, B:186:0x00ef, B:188:0x0101, B:190:0x010b, B:191:0x0111, B:200:0x013f, B:201:0x0146, B:203:0x0153, B:205:0x015b, B:207:0x0176, B:209:0x0189, B:210:0x018c, B:212:0x0190, B:195:0x011b, B:198:0x0131, B:165:0x0072, B:170:0x0090), top: B:252:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0153 A[Catch: all -> 0x008a, TryCatch #4 {all -> 0x008a, blocks: (B:172:0x00a2, B:174:0x00ad, B:176:0x00b9, B:178:0x00c3, B:180:0x00cf, B:182:0x00d9, B:184:0x00e5, B:186:0x00ef, B:188:0x0101, B:190:0x010b, B:191:0x0111, B:200:0x013f, B:201:0x0146, B:203:0x0153, B:205:0x015b, B:207:0x0176, B:209:0x0189, B:210:0x018c, B:212:0x0190, B:195:0x011b, B:198:0x0131, B:165:0x0072, B:170:0x0090), top: B:252:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0189 A[Catch: all -> 0x008a, TryCatch #4 {all -> 0x008a, blocks: (B:172:0x00a2, B:174:0x00ad, B:176:0x00b9, B:178:0x00c3, B:180:0x00cf, B:182:0x00d9, B:184:0x00e5, B:186:0x00ef, B:188:0x0101, B:190:0x010b, B:191:0x0111, B:200:0x013f, B:201:0x0146, B:203:0x0153, B:205:0x015b, B:207:0x0176, B:209:0x0189, B:210:0x018c, B:212:0x0190, B:195:0x011b, B:198:0x0131, B:165:0x0072, B:170:0x0090), top: B:252:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0190 A[Catch: all -> 0x008a, TRY_LEAVE, TryCatch #4 {all -> 0x008a, blocks: (B:172:0x00a2, B:174:0x00ad, B:176:0x00b9, B:178:0x00c3, B:180:0x00cf, B:182:0x00d9, B:184:0x00e5, B:186:0x00ef, B:188:0x0101, B:190:0x010b, B:191:0x0111, B:200:0x013f, B:201:0x0146, B:203:0x0153, B:205:0x015b, B:207:0x0176, B:209:0x0189, B:210:0x018c, B:212:0x0190, B:195:0x011b, B:198:0x0131, B:165:0x0072, B:170:0x0090), top: B:252:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x019a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0204 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:264:0x01d0 A[EDGE_INSN: B:264:0x01d0->B:226:0x01d0 ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzzp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 517
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzwa.zzh():void");
    }
}
