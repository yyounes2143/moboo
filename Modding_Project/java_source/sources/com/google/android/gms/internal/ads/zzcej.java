package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcej extends zzcbn implements zzhg, zzmm {
    public static final /* synthetic */ int zza = 0;
    private final Context zzb;
    private final zzcdu zzc;
    private final zzyo zzd;
    private final zzcbv zze;
    private final WeakReference zzf;
    private final zzwi zzg;
    @Nullable
    private zziv zzh;
    private ByteBuffer zzi;
    private boolean zzj;
    private zzcbm zzk;
    private int zzl;
    private int zzm;
    private long zzn;
    private final String zzo;
    private final int zzp;
    @Nullable
    private Integer zzr;
    private final ArrayList zzs;
    @Nullable
    private volatile zzcdw zzt;
    private final Object zzq = new Object();
    private final Set zzu = new HashSet();

    /* JADX WARN: Code restructure failed: missing block: B:68:0x00e3, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbcv.zzcc)).booleanValue() == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00e6, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00ea, code lost:
        if (r5.zzi == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00ef, code lost:
        if (r5.zzl == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00f1, code lost:
        r6 = new com.google.android.gms.internal.ads.zzcea();
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00f9, code lost:
        if (r5.zzh <= 0) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00fb, code lost:
        r6 = new com.google.android.gms.internal.ads.zzceb();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0101, code lost:
        r6 = new com.google.android.gms.internal.ads.zzcec();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0108, code lost:
        if (r5.zzi == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x010a, code lost:
        r5 = new com.google.android.gms.internal.ads.zzced();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0111, code lost:
        r5 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0112, code lost:
        r4 = r3.zzi;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0114, code lost:
        if (r4 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x011a, code lost:
        if (r4.limit() <= 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x011c, code lost:
        r4 = new byte[r3.zzi.limit()];
        r3.zzi.get(r4);
        r5 = new com.google.android.gms.internal.ads.zzcee();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzcej(android.content.Context r4, com.google.android.gms.internal.ads.zzcbv r5, com.google.android.gms.internal.ads.zzcbw r6, @androidx.annotation.Nullable java.lang.Integer r7) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcej.<init>(android.content.Context, com.google.android.gms.internal.ads.zzcbv, com.google.android.gms.internal.ads.zzcbw, java.lang.Integer):void");
    }

    public static /* synthetic */ zzgg zzW(zzcej zzcejVar, String str, boolean z) {
        zzcej zzcejVar2;
        if (true != z) {
            zzcejVar2 = null;
        } else {
            zzcejVar2 = zzcejVar;
        }
        zzcbv zzcbvVar = zzcejVar.zze;
        return new zzcem(str, zzcejVar2, zzcbvVar.zzd, zzcbvVar.zze, zzcbvVar.zzm, zzcbvVar.zzn);
    }

    public static /* synthetic */ zzgg zzX(zzcej zzcejVar, String str, boolean z) {
        zzcej zzcejVar2;
        if (true != z) {
            zzcejVar2 = null;
        } else {
            zzcejVar2 = zzcejVar;
        }
        zzcbv zzcbvVar = zzcejVar.zze;
        zzcdt zzcdtVar = new zzcdt(str, zzcejVar2, zzcbvVar.zzd, zzcbvVar.zze, zzcbvVar.zzh);
        zzcejVar.zzu.add(new WeakReference(zzcdtVar));
        return zzcdtVar;
    }

    public static /* synthetic */ zzgg zzY(zzcej zzcejVar, String str, boolean z) {
        zzcej zzcejVar2;
        zzgo zzgoVar = new zzgo();
        zzgoVar.zzf(str);
        if (true != z) {
            zzcejVar2 = null;
        } else {
            zzcejVar2 = zzcejVar;
        }
        zzgoVar.zze(zzcejVar2);
        zzcbv zzcbvVar = zzcejVar.zze;
        zzgoVar.zzc(zzcbvVar.zzd);
        zzgoVar.zzd(zzcbvVar.zze);
        zzgoVar.zzb(true);
        return zzgoVar.zza();
    }

    public static /* synthetic */ zzgg zzZ(zzcej zzcejVar, zzgf zzgfVar) {
        zzgg zza2 = zzgfVar.zza();
        zzceg zzcegVar = new zzceg(zzcejVar);
        return new zzcdw(zzcejVar.zzb, zza2, zzcejVar.zzo, zzcejVar.zzp, zzcejVar, zzcegVar);
    }

    public static /* synthetic */ void zzab(zzcej zzcejVar, boolean z, long j) {
        zzcbm zzcbmVar = zzcejVar.zzk;
        if (zzcbmVar != null) {
            zzcbmVar.zzi(z, j);
        }
    }

    public static /* synthetic */ zzlv[] zzac(zzcej zzcejVar, Handler handler, zzacc zzaccVar, zzqb zzqbVar, zzxh zzxhVar, zztz zztzVar) {
        zztl zztlVar = zztl.zza;
        Context context = zzcejVar.zzb;
        zzro zzroVar = new zzro(context, new zzsr(context, null, null), zztlVar, false, handler, zzqbVar, new zzqw(context).zzc());
        zzaas zzaasVar = new zzaas(context);
        zzaasVar.zzg(zztlVar);
        zzaasVar.zze(handler);
        zzaasVar.zzf(zzaccVar);
        return new zzlv[]{zzroVar, zzaasVar.zzh()};
    }

    private final boolean zzad() {
        if (this.zzt != null && this.zzt.zzq()) {
            return true;
        }
        return false;
    }

    public final void finalize() {
        zzcbn.zzD().decrementAndGet();
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("SimpleExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final long zzA() {
        if (!zzad()) {
            return this.zzl;
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final long zzB() {
        if (!zzad()) {
            synchronized (this.zzq) {
                while (true) {
                    ArrayList arrayList = this.zzs;
                    if (!arrayList.isEmpty()) {
                        long j = this.zzn;
                        Map zze = ((zzhb) arrayList.remove(0)).zze();
                        long j2 = 0;
                        if (zze != null) {
                            Iterator it = zze.entrySet().iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                Map.Entry entry = (Map.Entry) it.next();
                                if (entry != null) {
                                    try {
                                        if (entry.getKey() != null && zzfui.zzc("content-length", (CharSequence) entry.getKey()) && entry.getValue() != null && ((List) entry.getValue()).get(0) != null) {
                                            j2 = Long.parseLong((String) ((List) entry.getValue()).get(0));
                                            break;
                                        }
                                    } catch (NumberFormatException unused) {
                                        continue;
                                    }
                                }
                            }
                        }
                        this.zzn = j + j2;
                    }
                }
            }
            return this.zzn;
        }
        return this.zzt.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    @Nullable
    public final Integer zzC() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzF(Uri[] uriArr, String str) {
        zzG(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzG(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zzvd zzvtVar;
        if (this.zzh != null) {
            this.zzi = byteBuffer;
            this.zzj = z;
            int length = uriArr.length;
            if (length == 1) {
                zzvtVar = zzaa(uriArr[0]);
            } else {
                zzvd[] zzvdVarArr = new zzvd[length];
                for (int i = 0; i < uriArr.length; i++) {
                    zzvdVarArr[i] = zzaa(uriArr[i]);
                }
                zzvtVar = new zzvt(false, false, new zzum(), zzvdVarArr);
            }
            this.zzh.zzC(zzvtVar);
            this.zzh.zzq();
            zzcbn.zzE().incrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzH() {
        zziv zzivVar = this.zzh;
        if (zzivVar != null) {
            zzivVar.zzB(this);
            this.zzh.zzA();
            this.zzh = null;
            zzcbn.zzE().decrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzI(long j) {
        this.zzh.zza(j);
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzJ(int i) {
        this.zzc.zzl(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzK(int i) {
        this.zzc.zzm(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzL(zzcbm zzcbmVar) {
        this.zzk = zzcbmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzM(int i) {
        this.zzc.zzn(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzN(int i) {
        this.zzc.zzo(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzO(boolean z) {
        this.zzh.zzr(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzP(@Nullable Integer num) {
        this.zzr = num;
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzQ(boolean z) {
        if (this.zzh != null) {
            int i = 0;
            while (true) {
                this.zzh.zzy();
                if (i < 2) {
                    zzyo zzyoVar = this.zzd;
                    zzyb zzc = zzyoVar.zzf().zzc();
                    zzc.zzx(i, !z);
                    zzyoVar.zzl(zzc);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzR(int i) {
        for (WeakReference weakReference : this.zzu) {
            zzcdt zzcdtVar = (zzcdt) weakReference.get();
            if (zzcdtVar != null) {
                zzcdtVar.zzm(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzS(Surface surface, boolean z) {
        zziv zzivVar = this.zzh;
        if (zzivVar != null) {
            zzivVar.zzs(surface);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzT(float f, boolean z) {
        zziv zzivVar = this.zzh;
        if (zzivVar != null) {
            zzivVar.zzt(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzU() {
        this.zzh.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final boolean zzV() {
        if (this.zzh != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zza(zzgg zzggVar, zzgl zzglVar, boolean z, int i) {
        this.zzl += i;
    }

    @VisibleForTesting
    public final zzvd zzaa(Uri uri) {
        zzad zzadVar = new zzad();
        zzadVar.zzb(uri);
        zzap zzc = zzadVar.zzc();
        zzwi zzwiVar = this.zzg;
        zzwiVar.zza(this.zze.zzf);
        return zzwiVar.zzb(zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zzd(zzgg zzggVar, zzgl zzglVar, boolean z) {
        if (zzggVar instanceof zzhb) {
            synchronized (this.zzq) {
                this.zzs.add((zzhb) zzggVar);
            }
        } else if (zzggVar instanceof zzcdw) {
            this.zzt = (zzcdw) zzggVar;
            final zzcbw zzcbwVar = (zzcbw) this.zzf.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcc)).booleanValue() && zzcbwVar != null && this.zzt.zzn()) {
                final HashMap hashMap = new HashMap();
                hashMap.put("gcacheHit", String.valueOf(this.zzt.zzp()));
                hashMap.put("gcacheDownloaded", String.valueOf(this.zzt.zzo()));
                com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcef
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i = zzcej.zza;
                        zzcbw.this.zzd("onGcacheInfoEvent", hashMap);
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zze(zzmk zzmkVar, zzz zzzVar, @Nullable zzib zzibVar) {
        zzcbw zzcbwVar = (zzcbw) this.zzf.get();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcc)).booleanValue() && zzcbwVar != null) {
            HashMap hashMap = new HashMap();
            String str = zzzVar.zzn;
            if (str != null) {
                hashMap.put("audioMime", str);
            }
            String str2 = zzzVar.zzo;
            if (str2 != null) {
                hashMap.put("audioSampleMime", str2);
            }
            String str3 = zzzVar.zzk;
            if (str3 != null) {
                hashMap.put("audioCodec", str3);
            }
            zzcbwVar.zzd("onMetadataEvent", hashMap);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzh(zzmk zzmkVar, int i, long j) {
        this.zzm += i;
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzj(zzmk zzmkVar, zzus zzusVar, zzux zzuxVar, IOException iOException, boolean z) {
        zzcbm zzcbmVar = this.zzk;
        if (zzcbmVar != null) {
            if (this.zze.zzj) {
                zzcbmVar.zzl("onLoadException", iOException);
            } else {
                zzcbmVar.zzk("onLoadError", iOException);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzk(zzmk zzmkVar, int i) {
        zzcbm zzcbmVar = this.zzk;
        if (zzcbmVar != null) {
            zzcbmVar.zzm(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzl(zzmk zzmkVar, zzba zzbaVar) {
        zzcbm zzcbmVar = this.zzk;
        if (zzcbmVar != null) {
            zzcbmVar.zzk("onPlayerError", zzbaVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzn(zzmk zzmkVar, Object obj, long j) {
        zzcbm zzcbmVar = this.zzk;
        if (zzcbmVar != null) {
            zzcbmVar.zzv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzp(zzmk zzmkVar, zzz zzzVar, @Nullable zzib zzibVar) {
        zzcbw zzcbwVar = (zzcbw) this.zzf.get();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcc)).booleanValue() && zzcbwVar != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("frameRate", String.valueOf(zzzVar.zzx));
            hashMap.put("bitRate", String.valueOf(zzzVar.zzj));
            int i = zzzVar.zzv;
            int i2 = zzzVar.zzw;
            hashMap.put("resolution", i + "x" + i2);
            String str = zzzVar.zzn;
            if (str != null) {
                hashMap.put("videoMime", str);
            }
            String str2 = zzzVar.zzo;
            if (str2 != null) {
                hashMap.put("videoSampleMime", str2);
            }
            String str3 = zzzVar.zzk;
            if (str3 != null) {
                hashMap.put("videoCodec", str3);
            }
            zzcbwVar.zzd("onMetadataEvent", hashMap);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzq(zzmk zzmkVar, zzcd zzcdVar) {
        zzcbm zzcbmVar = this.zzk;
        if (zzcbmVar != null) {
            zzcbmVar.zzD(zzcdVar.zzb, zzcdVar.zzc);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final int zzr() {
        return this.zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final int zzt() {
        return this.zzh.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final long zzv() {
        return this.zzh.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final long zzw() {
        return this.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final long zzx() {
        if (zzad() && this.zzt.zzp()) {
            return Math.min(this.zzl, this.zzt.zzk());
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final long zzy() {
        return this.zzh.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final long zzz() {
        return this.zzh.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzg(zzmk zzmkVar, zzux zzuxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzi(zzbh zzbhVar, zzml zzmlVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzo(zzmk zzmkVar, zzia zziaVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zzb(zzgg zzggVar, zzgl zzglVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zzc(zzgg zzggVar, zzgl zzglVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzf(zzmk zzmkVar, int i, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzm(zzmk zzmkVar, zzbf zzbfVar, zzbf zzbfVar2, int i) {
    }
}
