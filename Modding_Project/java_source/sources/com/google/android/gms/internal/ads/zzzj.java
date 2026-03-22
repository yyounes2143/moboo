package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.work.multiprocess.RemoteWorkManager;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzzj implements zzzf, zzhg {
    public static final zzfyc zza = zzfyc.zzr(4300000L, 3200000L, 2400000L, 1700000L, 860000L);
    public static final zzfyc zzb = zzfyc.zzr(1500000L, 980000L, 750000L, 520000L, 290000L);
    public static final zzfyc zzc;
    public static final zzfyc zzd;
    public static final zzfyc zze;
    public static final zzfyc zzf;
    @Nullable
    @SuppressLint({"NonFinalStaticField", "StaticFieldLeak"})
    private static zzzj zzg;
    @Nullable
    private final Context zzh;
    private final zzfyf zzi;
    private final zzzd zzj;
    @GuardedBy("this")
    private final zzzz zzk;
    @GuardedBy("this")
    private int zzl;
    @GuardedBy("this")
    private long zzm;
    @GuardedBy("this")
    private long zzn;
    @GuardedBy("this")
    private long zzo;
    @GuardedBy("this")
    private long zzp;
    @GuardedBy("this")
    private long zzq;
    @GuardedBy("this")
    private long zzr;
    private int zzs;
    private String zzt;

    static {
        Long valueOf = Long.valueOf((long) SilenceSkippingAudioProcessor.DEFAULT_MAX_SILENCE_TO_KEEP_DURATION_US);
        zzc = zzfyc.zzr(valueOf, 1300000L, 1000000L, 860000L, 610000L);
        zzd = zzfyc.zzr(2500000L, 1700000L, Long.valueOf((long) RemoteWorkManager.MAX_SESSION_TIMEOUT_MILLIS), 970000L, 680000L);
        zze = zzfyc.zzr(4700000L, 2800000L, 2100000L, 1700000L, 980000L);
        zzf = zzfyc.zzr(2700000L, valueOf, 1600000L, 1300000L, 1000000L);
    }

    public /* synthetic */ zzzj(Context context, Map map, int i, zzdg zzdgVar, boolean z, zzzi zzziVar) {
        Context applicationContext;
        if (context == null) {
            applicationContext = null;
        } else {
            applicationContext = context.getApplicationContext();
        }
        this.zzh = applicationContext;
        this.zzi = zzfyf.zzc(map);
        this.zzj = new zzzd();
        this.zzk = new zzzz(2000);
        if (context != null) {
            zzei zzb2 = zzei.zzb(context);
            int zza2 = zzb2.zza();
            this.zzs = zza2;
            this.zzq = zzj(zza2);
            zzb2.zzf(new zzzh(this), zzdd.zza());
            return;
        }
        this.zzs = 0;
        this.zzq = 1000000L;
    }

    public static synchronized zzzj zzh(Context context) {
        zzzj zzzjVar;
        Context applicationContext;
        synchronized (zzzj.class) {
            try {
                if (zzg == null) {
                    if (context == null) {
                        applicationContext = null;
                    } else {
                        applicationContext = context.getApplicationContext();
                    }
                    Context context2 = applicationContext;
                    zzdg zzdgVar = zzdg.zza;
                    HashMap hashMap = new HashMap(8);
                    hashMap.put(0, 1000000L);
                    hashMap.put(2, -9223372036854775807L);
                    hashMap.put(3, -9223372036854775807L);
                    hashMap.put(4, -9223372036854775807L);
                    hashMap.put(5, -9223372036854775807L);
                    hashMap.put(10, -9223372036854775807L);
                    hashMap.put(9, -9223372036854775807L);
                    hashMap.put(7, -9223372036854775807L);
                    zzg = new zzzj(context2, hashMap, 2000, zzdgVar, true, null);
                }
                zzzjVar = zzg;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzzjVar;
    }

    public static /* synthetic */ void zzi(zzzj zzzjVar, int i) {
        zzzjVar.zzl(i);
    }

    private final long zzj(int i) {
        long longValue;
        zzfyf zzfyfVar = this.zzi;
        Long l = (Long) zzfyfVar.get(Integer.valueOf(i));
        if (l == null) {
            l = (Long) zzfyfVar.get(0);
        } else if (l.longValue() == -9223372036854775807L) {
            int[] zzn = zzn(zzfvt.zzc(this.zzt));
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            if (i != 7) {
                                if (i != 9) {
                                    if (i != 10) {
                                        longValue = 1000000;
                                    } else {
                                        longValue = ((Long) zze.get(zzn[4])).longValue();
                                    }
                                } else {
                                    longValue = ((Long) zzf.get(zzn[5])).longValue();
                                }
                            }
                        } else {
                            longValue = ((Long) zzd.get(zzn[3])).longValue();
                        }
                    } else {
                        longValue = ((Long) zzc.get(zzn[2])).longValue();
                    }
                } else {
                    longValue = ((Long) zzb.get(zzn[1])).longValue();
                }
                l = Long.valueOf(longValue);
            }
            longValue = ((Long) zza.get(zzn[0])).longValue();
            l = Long.valueOf(longValue);
        }
        if (l == null) {
            l = 1000000L;
        }
        return l.longValue();
    }

    @GuardedBy("this")
    private final void zzk(int i, long j, long j2) {
        int i2;
        long j3;
        if (i == 0) {
            if (j == 0) {
                if (j2 != this.zzr) {
                    j3 = 0;
                } else {
                    return;
                }
            } else {
                j3 = j;
            }
            i2 = 0;
        } else {
            i2 = i;
            j3 = j;
        }
        this.zzr = j2;
        this.zzj.zzb(i2, j3, j2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0007, code lost:
        if (r8.zzt == null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzl(int r9) {
        /*
            r8 = this;
            monitor-enter(r8)
            int r0 = r8.zzs     // Catch: java.lang.Throwable -> L82
            if (r0 != r9) goto L12
            java.lang.String r0 = r8.zzt     // Catch: java.lang.Throwable -> Ld
            if (r0 != 0) goto La
            goto L12
        La:
            r2 = r8
            goto L85
        Ld:
            r0 = move-exception
            r9 = r0
            r2 = r8
            goto L87
        L12:
            r8.zzs = r9     // Catch: java.lang.Throwable -> L82
            r0 = 1
            if (r9 == r0) goto La
            if (r9 == 0) goto La
            r0 = 8
            if (r9 != r0) goto L1e
            goto La
        L1e:
            java.lang.String r0 = r8.zzt     // Catch: java.lang.Throwable -> L82
            if (r0 != 0) goto L4f
            android.content.Context r0 = r8.zzh     // Catch: java.lang.Throwable -> Ld
            java.lang.String r1 = com.google.android.gms.internal.ads.zzeu.zza     // Catch: java.lang.Throwable -> Ld
            if (r0 == 0) goto L41
            java.lang.String r1 = "phone"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> Ld
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0     // Catch: java.lang.Throwable -> Ld
            if (r0 == 0) goto L41
            java.lang.String r0 = r0.getNetworkCountryIso()     // Catch: java.lang.Throwable -> Ld
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> Ld
            if (r1 != 0) goto L41
            java.lang.String r0 = com.google.android.gms.internal.ads.zzfui.zzb(r0)     // Catch: java.lang.Throwable -> Ld
            goto L4d
        L41:
            java.util.Locale r0 = java.util.Locale.getDefault()     // Catch: java.lang.Throwable -> Ld
            java.lang.String r0 = r0.getCountry()     // Catch: java.lang.Throwable -> Ld
            java.lang.String r0 = com.google.android.gms.internal.ads.zzfui.zzb(r0)     // Catch: java.lang.Throwable -> Ld
        L4d:
            r8.zzt = r0     // Catch: java.lang.Throwable -> Ld
        L4f:
            long r0 = r8.zzj(r9)     // Catch: java.lang.Throwable -> L82
            r8.zzq = r0     // Catch: java.lang.Throwable -> L82
            long r0 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L82
            int r9 = r8.zzl     // Catch: java.lang.Throwable -> L82
            if (r9 <= 0) goto L64
            long r2 = r8.zzm     // Catch: java.lang.Throwable -> Ld
            long r2 = r0 - r2
            int r9 = (int) r2
        L62:
            r3 = r9
            goto L66
        L64:
            r9 = 0
            goto L62
        L66:
            long r4 = r8.zzn     // Catch: java.lang.Throwable -> L82
            long r6 = r8.zzq     // Catch: java.lang.Throwable -> L82
            r2 = r8
            r2.zzk(r3, r4, r6)     // Catch: java.lang.Throwable -> L7f
            r2.zzm = r0     // Catch: java.lang.Throwable -> L7f
            r0 = 0
            r2.zzn = r0     // Catch: java.lang.Throwable -> L7f
            r2.zzp = r0     // Catch: java.lang.Throwable -> L7f
            r2.zzo = r0     // Catch: java.lang.Throwable -> L7f
            com.google.android.gms.internal.ads.zzzz r9 = r2.zzk     // Catch: java.lang.Throwable -> L7f
            r9.zzc()     // Catch: java.lang.Throwable -> L7f
            monitor-exit(r8)
            return
        L7f:
            r0 = move-exception
        L80:
            r9 = r0
            goto L87
        L82:
            r0 = move-exception
            r2 = r8
            goto L80
        L85:
            monitor-exit(r8)
            return
        L87:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L7f
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzzj.zzl(int):void");
    }

    private static boolean zzm(zzgl zzglVar, boolean z) {
        if (z && !zzglVar.zzb(8)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:1008:0x013b, code lost:
        if (r3.equals("YT") != false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1011:0x0145, code lost:
        if (r3.equals("YE") != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1018:0x015d, code lost:
        if (r3.equals("WS") != false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1021:0x0167, code lost:
        if (r3.equals("WF") != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1024:0x0171, code lost:
        if (r3.equals("VU") != false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1039:0x01a5, code lost:
        if (r3.equals("VE") != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1042:0x01af, code lost:
        if (r3.equals("VC") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1045:0x01b9, code lost:
        if (r3.equals("VA") != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1064:0x01fb, code lost:
        if (r3.equals("UA") != false) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1075:0x0221, code lost:
        if (r3.equals("TV") != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1082:0x0239, code lost:
        if (r3.equals("TR") != false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1093:0x025f, code lost:
        if (r3.equals("TM") != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1096:0x0269, code lost:
        if (r3.equals("TL") != false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1099:0x0273, code lost:
        if (r3.equals("TJ") != false) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1102:0x027d, code lost:
        if (r3.equals("TH") != false) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1109:0x0295, code lost:
        if (r3.equals("TD") != false) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1116:0x02ad, code lost:
        if (r3.equals("SZ") != false) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1119:0x02b7, code lost:
        if (r3.equals("SY") != false) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1122:0x02c1, code lost:
        if (r3.equals("SX") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1133:0x02e7, code lost:
        if (r3.equals("SS") != false) goto L240;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1148:0x031b, code lost:
        if (r3.equals("SM") != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1151:0x0325, code lost:
        if (r3.equals("SL") != false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1158:0x033d, code lost:
        if (r3.equals("SJ") != false) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1161:0x0347, code lost:
        if (r3.equals("SI") != false) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1164:0x0351, code lost:
        if (r3.equals("SH") != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1171:0x0369, code lost:
        if (r3.equals("SE") != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1174:0x0373, code lost:
        if (r3.equals("SD") != false) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1177:0x037d, code lost:
        if (r3.equals("SC") != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1180:0x0387, code lost:
        if (r3.equals("SB") != false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1182:0x038e, code lost:
        return new int[]{4, 2, 4, 3, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1212:0x03f7, code lost:
        if (r3.equals("PY") != false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1219:0x040f, code lost:
        if (r3.equals("PT") != false) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1230:0x0435, code lost:
        if (r3.equals("PM") != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1245:0x0469, code lost:
        if (r3.equals(com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_PG) != false) goto L346;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1256:0x048f, code lost:
        if (r3.equals("PA") != false) goto L358;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1267:0x04b5, code lost:
        if (r3.equals("NU") != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1270:0x04bf, code lost:
        if (r3.equals("NR") != false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1285:0x04f3, code lost:
        if (r3.equals("NI") != false) goto L386;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1292:0x050b, code lost:
        if (r3.equals("NF") != false) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1295:0x0515, code lost:
        if (r3.equals("NE") != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1298:0x051f, code lost:
        if (r3.equals("NC") != false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1300:0x0526, code lost:
        return new int[]{2, 3, 3, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1306:0x053b, code lost:
        if (r3.equals("MZ") != false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1308:0x0542, code lost:
        return new int[]{3, 1, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1330:0x058f, code lost:
        if (r3.equals("MT") != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1333:0x0599, code lost:
        if (r3.equals("MS") != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1336:0x05a3, code lost:
        if (r3.equals("MR") != false) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1343:0x05bb, code lost:
        if (r3.equals("MP") != false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1345:0x05c2, code lost:
        return new int[]{1, 2, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1355:0x05e5, code lost:
        if (r3.equals("MM") != false) goto L448;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1358:0x05ef, code lost:
        if (r3.equals("ML") != false) goto L452;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1365:0x0607, code lost:
        if (r3.equals("MH") != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1367:0x060e, code lost:
        return new int[]{4, 2, 2, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1369:0x0615, code lost:
        if (r3.equals("MG") != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1384:0x0649, code lost:
        if (r3.equals("MC") != false) goto L476;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1391:0x0661, code lost:
        if (r3.equals("LY") != false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1394:0x066b, code lost:
        if (r3.equals("LV") != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1405:0x0691, code lost:
        if (r3.equals("LS") != false) goto L346;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1407:0x0698, code lost:
        return new int[]{4, 3, 3, 3, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1409:0x069f, code lost:
        if (r3.equals("LR") != false) goto L498;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1412:0x06a9, code lost:
        if (r3.equals("LK") != false) goto L448;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1414:0x06b0, code lost:
        return new int[]{3, 2, 3, 3, 4, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1416:0x06b7, code lost:
        if (r3.equals("LI") != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1435:0x06f9, code lost:
        if (r3.equals("KY") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1438:0x0703, code lost:
        if (r3.equals("KW") != false) goto L524;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1445:0x071b, code lost:
        if (r3.equals("KN") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1448:0x0725, code lost:
        if (r3.equals("KM") != false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1450:0x072c, code lost:
        return new int[]{4, 3, 3, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1452:0x0733, code lost:
        if (r3.equals("KI") != false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1471:0x0775, code lost:
        if (r3.equals("JO") != false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1478:0x078d, code lost:
        if (r3.equals("JE") != false) goto L560;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1485:0x07a5, code lost:
        if (r3.equals("IS") != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1504:0x07e7, code lost:
        if (r3.equals("IM") != false) goto L560;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1519:0x081b, code lost:
        if (r3.equals("HU") != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1522:0x0825, code lost:
        if (r3.equals("HT") != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1525:0x082f, code lost:
        if (r3.equals("HR") != false) goto L524;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1527:0x0836, code lost:
        return new int[]{1, 0, 0, 0, 0, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1553:0x0891, code lost:
        if (r3.equals("GQ") != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1564:0x08b7, code lost:
        if (r3.equals("GM") != false) goto L240;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1566:0x08be, code lost:
        return new int[]{4, 3, 2, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1568:0x08c5, code lost:
        if (r3.equals("GL") != false) goto L476;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1570:0x08cc, code lost:
        return new int[]{1, 2, 2, 0, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1572:0x08d3, code lost:
        if (r3.equals("GI") != false) goto L560;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1574:0x08da, code lost:
        return new int[]{0, 2, 0, 1, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1616:0x096d, code lost:
        if (r3.equals("FK") != false) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1618:0x0974, code lost:
        return new int[]{3, 2, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1636:0x09b3, code lost:
        if (r3.equals("ER") != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1638:0x09ba, code lost:
        return new int[]{4, 2, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1640:0x09c1, code lost:
        if (r3.equals("EG") != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1642:0x09c8, code lost:
        return new int[]{3, 4, 3, 3, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1644:0x09cf, code lost:
        if (r3.equals("EE") != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1646:0x09d6, code lost:
        return new int[]{0, 0, 0, 0, 0, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1652:0x09eb, code lost:
        if (r3.equals("DZ") != false) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1654:0x09f2, code lost:
        return new int[]{3, 3, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1656:0x09f9, code lost:
        if (r3.equals("DO") != false) goto L498;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1658:0x0a00, code lost:
        return new int[]{3, 4, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1660:0x0a07, code lost:
        if (r3.equals("DM") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1667:0x0a1f, code lost:
        if (r3.equals("DJ") != false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1682:0x0a53, code lost:
        if (r3.equals("CX") != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1685:0x0a5d, code lost:
        if (r3.equals("CW") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1692:0x0a75, code lost:
        if (r3.equals("CU") != false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1694:0x0a7c, code lost:
        return new int[]{4, 2, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1696:0x0a83, code lost:
        if (r3.equals("CR") != false) goto L386;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1698:0x0a8a, code lost:
        return new int[]{2, 4, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1708:0x0aad, code lost:
        if (r3.equals("CM") != false) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1710:0x0ab4, code lost:
        return new int[]{4, 3, 3, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1712:0x0abb, code lost:
        if (r3.equals("CL") != false) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1714:0x0ac2, code lost:
        return new int[]{0, 1, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1716:0x0ac9, code lost:
        if (r3.equals("CK") != false) goto L762;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1719:0x0ad3, code lost:
        if (r3.equals("CD") != false) goto L452;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1721:0x0ada, code lost:
        return new int[]{3, 3, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1723:0x0ae1, code lost:
        if (r3.equals("CA") != false) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1725:0x0ae8, code lost:
        return new int[]{0, 2, 1, 2, 3, 3};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1735:0x0b0b, code lost:
        if (r3.equals("BI") != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1737:0x0b12, code lost:
        return new int[]{4, 4, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1743:0x0b27, code lost:
        if (r3.equals("BG") != false) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1745:0x0b2e, code lost:
        return new int[]{0, 0, 0, 0, 1, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1747:0x0b35, code lost:
        if (r3.equals("BF") != false) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1749:0x0b3c, code lost:
        return new int[]{4, 3, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1759:0x0b5f, code lost:
        if (r3.equals("AZ") != false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1761:0x0b66, code lost:
        return new int[]{4, 2, 3, 3, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1767:0x0b7b, code lost:
        if (r3.equals("AI") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1770:0x0b84, code lost:
        if (r3.equals("AG") != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1772:0x0b8b, code lost:
        return new int[]{2, 4, 3, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1774:0x0b92, code lost:
        if (r3.equals("AF") != false) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1776:0x0b99, code lost:
        return new int[]{4, 4, 3, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1782:0x0bae, code lost:
        if (r3.equals("AD") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1785:0x0bb7, code lost:
        if (r3.equals("BZ") != false) goto L762;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1787:0x0bbe, code lost:
        return new int[]{2, 2, 2, 1, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1793:0x0bd3, code lost:
        if (r3.equals("BB") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1795:0x0bda, code lost:
        return new int[]{1, 2, 0, 0, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1797:0x0be1, code lost:
        if (r3.equals("BA") != false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1799:0x0be8, code lost:
        return new int[]{1, 1, 1, 1, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1801:0x0bef, code lost:
        if (r3.equals("AX") != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1803:0x0bf6, code lost:
        return new int[]{0, 2, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1809:0x0c0b, code lost:
        if (r3.equals("AM") != false) goto L358;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1811:0x0c12, code lost:
        return new int[]{2, 3, 2, 3, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:935:0x003f, code lost:
        if (r3.equals("CI") != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:942:0x0057, code lost:
        if (r3.equals("CG") != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:961:0x0099, code lost:
        if (r3.equals("BQ") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:976:0x00cd, code lost:
        if (r3.equals("BL") != false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:983:0x00e5, code lost:
        if (r3.equals("AT") != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:994:0x010b, code lost:
        if (r3.equals("AQ") != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:997:0x0115, code lost:
        if (r3.equals("ZW") != false) goto L96;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int[] zzn(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 6672
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzzj.zzn(java.lang.String):int[]");
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final synchronized void zza(zzgg zzggVar, zzgl zzglVar, boolean z, int i) {
        if (!zzm(zzglVar, z)) {
            return;
        }
        this.zzn += i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x004b, code lost:
        if (r10.zzp >= 524288) goto L16;
     */
    @Override // com.google.android.gms.internal.ads.zzhg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzb(com.google.android.gms.internal.ads.zzgg r11, com.google.android.gms.internal.ads.zzgl r12, boolean r13) {
        /*
            r10 = this;
            monitor-enter(r10)
            boolean r11 = zzm(r12, r13)     // Catch: java.lang.Throwable -> L6d
            if (r11 != 0) goto L9
            monitor-exit(r10)
            return
        L9:
            int r11 = r10.zzl     // Catch: java.lang.Throwable -> L6d
            if (r11 <= 0) goto Lf
            r11 = 1
            goto L10
        Lf:
            r11 = 0
        L10:
            com.google.android.gms.internal.ads.zzdc.zzf(r11)     // Catch: java.lang.Throwable -> L6d
            long r11 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L6d
            long r0 = r10.zzm     // Catch: java.lang.Throwable -> L6d
            long r0 = r11 - r0
            long r2 = r10.zzo     // Catch: java.lang.Throwable -> L6d
            int r5 = (int) r0     // Catch: java.lang.Throwable -> L6d
            long r0 = (long) r5     // Catch: java.lang.Throwable -> L6d
            long r2 = r2 + r0
            r10.zzo = r2     // Catch: java.lang.Throwable -> L6d
            long r0 = r10.zzp     // Catch: java.lang.Throwable -> L6d
            long r2 = r10.zzn     // Catch: java.lang.Throwable -> L6d
            long r0 = r0 + r2
            r10.zzp = r0     // Catch: java.lang.Throwable -> L6d
            if (r5 <= 0) goto L70
            float r13 = (float) r2     // Catch: java.lang.Throwable -> L6d
            com.google.android.gms.internal.ads.zzzz r0 = r10.zzk     // Catch: java.lang.Throwable -> L6d
            double r1 = (double) r2     // Catch: java.lang.Throwable -> L6d
            double r1 = java.lang.Math.sqrt(r1)     // Catch: java.lang.Throwable -> L6d
            int r1 = (int) r1     // Catch: java.lang.Throwable -> L6d
            r2 = 1174011904(0x45fa0000, float:8000.0)
            float r13 = r13 * r2
            float r2 = (float) r5     // Catch: java.lang.Throwable -> L6d
            float r13 = r13 / r2
            r0.zzb(r1, r13)     // Catch: java.lang.Throwable -> L6d
            long r1 = r10.zzo     // Catch: java.lang.Throwable -> L6d
            r3 = 2000(0x7d0, double:9.88E-321)
            int r13 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r13 >= 0) goto L52
            long r1 = r10.zzp     // Catch: java.lang.Throwable -> L4e
            r3 = 524288(0x80000, double:2.590327E-318)
            int r13 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r13 < 0) goto L5b
            goto L52
        L4e:
            r0 = move-exception
            r11 = r0
            r4 = r10
            goto L79
        L52:
            r13 = 1056964608(0x3f000000, float:0.5)
            float r13 = r0.zza(r13)     // Catch: java.lang.Throwable -> L6d
            long r0 = (long) r13     // Catch: java.lang.Throwable -> L6d
            r10.zzq = r0     // Catch: java.lang.Throwable -> L6d
        L5b:
            long r6 = r10.zzn     // Catch: java.lang.Throwable -> L6d
            long r8 = r10.zzq     // Catch: java.lang.Throwable -> L6d
            r4 = r10
            r4.zzk(r5, r6, r8)     // Catch: java.lang.Throwable -> L6a
            r4.zzm = r11     // Catch: java.lang.Throwable -> L6a
            r11 = 0
            r4.zzn = r11     // Catch: java.lang.Throwable -> L6a
            goto L71
        L6a:
            r0 = move-exception
        L6b:
            r11 = r0
            goto L79
        L6d:
            r0 = move-exception
            r4 = r10
            goto L6b
        L70:
            r4 = r10
        L71:
            int r11 = r4.zzl     // Catch: java.lang.Throwable -> L6a
            int r11 = r11 + (-1)
            r4.zzl = r11     // Catch: java.lang.Throwable -> L6a
            monitor-exit(r10)
            return
        L79:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L6a
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzzj.zzb(com.google.android.gms.internal.ads.zzgg, com.google.android.gms.internal.ads.zzgl, boolean):void");
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final synchronized void zzd(zzgg zzggVar, zzgl zzglVar, boolean z) {
        try {
            if (!zzm(zzglVar, z)) {
                return;
            }
            if (this.zzl == 0) {
                this.zzm = SystemClock.elapsedRealtime();
            }
            this.zzl++;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void zzf(Handler handler, zzze zzzeVar) {
        zzzeVar.getClass();
        this.zzj.zza(handler, zzzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void zzg(zzze zzzeVar) {
        this.zzj.zzc(zzzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final zzhg zze() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zzc(zzgg zzggVar, zzgl zzglVar, boolean z) {
    }
}
