package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.media3.extractor.ts.TsExtractor;
import java.lang.reflect.Constructor;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzadi implements zzads {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};
    private static final zzadh zzc = new zzadh(new zzadg() { // from class: com.google.android.gms.internal.ads.zzade
        @Override // com.google.android.gms.internal.ads.zzadg
        public final Constructor zza() {
            int i = zzadi.zza;
            if (!Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", null).invoke(null, null))) {
                return null;
            }
            return Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(zzadn.class).getConstructor(Integer.TYPE);
        }
    });
    private static final zzadh zzd = new zzadh(new zzadg() { // from class: com.google.android.gms.internal.ads.zzadf
        @Override // com.google.android.gms.internal.ads.zzadg
        public final Constructor zza() {
            int i = zzadi.zza;
            return Class.forName("androidx.media3.decoder.midi.MidiExtractor").asSubclass(zzadn.class).getConstructor(null);
        }
    });
    @Nullable
    private zzfyc zze;
    private final zzakj zzf = new zzake();

    private final void zzb(int i, List list) {
        switch (i) {
            case 0:
                list.add(new zzami());
                return;
            case 1:
                list.add(new zzamk());
                return;
            case 2:
                list.add(new zzamm(0));
                return;
            case 3:
                list.add(new zzafa(0));
                return;
            case 4:
                zzadn zza2 = zzc.zza(0);
                if (zza2 != null) {
                    list.add(zza2);
                    return;
                } else {
                    list.add(new zzafs(0));
                    return;
                }
            case 5:
                list.add(new zzafu());
                return;
            case 6:
                list.add(new zzahq(this.zzf, 0));
                return;
            case 7:
                list.add(new zzahw(0));
                return;
            case 8:
                zzakj zzakjVar = this.zzf;
                list.add(new zzaiv(zzakjVar, 0, null, null, zzfyc.zzn(), null));
                list.add(new zzajb(zzakjVar, 0));
                return;
            case 9:
                list.add(new zzajr());
                return;
            case 10:
                list.add(new zzanr());
                return;
            case 11:
                if (this.zze == null) {
                    this.zze = zzfyc.zzn();
                }
                list.add(new zzaob(1, 0, this.zzf, new zzer(0L), new zzamo(0, this.zze), TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES));
                return;
            case 12:
                list.add(new zzaom());
                return;
            case 13:
            default:
                return;
            case 14:
                list.add(new zzaga(0));
                return;
            case 15:
                zzadn zza3 = zzd.zza(new Object[0]);
                if (zza3 != null) {
                    list.add(zza3);
                    return;
                }
                return;
            case 16:
                list.add(new zzaff(0, this.zzf));
                return;
            case 17:
                list.add(new zzakc());
                return;
            case 18:
                list.add(new zzaor());
                return;
            case 19:
                list.add(new zzafn());
                return;
            case 20:
                list.add(new zzafz());
                return;
            case 21:
                list.add(new zzafm());
                return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:139:0x01fb A[Catch: all -> 0x0026, TryCatch #0 {all -> 0x0026, blocks: (B:4:0x0003, B:6:0x0017, B:9:0x001f, B:139:0x01fb, B:140:0x01fe, B:247:0x03b1, B:248:0x03b4, B:250:0x03b9, B:253:0x03bf, B:254:0x03c2, B:255:0x03c5, B:143:0x0207, B:145:0x020f, B:148:0x021a, B:151:0x0226, B:153:0x022e, B:156:0x0239, B:159:0x0244, B:162:0x024f, B:165:0x025a, B:167:0x0262, B:169:0x026a, B:172:0x0276, B:174:0x0284, B:177:0x028f, B:180:0x029a, B:182:0x02a2, B:184:0x02b0, B:186:0x02be, B:189:0x02d0, B:191:0x02de, B:194:0x02ea, B:196:0x02f2, B:198:0x02fa, B:200:0x0302, B:203:0x030e, B:205:0x0316, B:208:0x0327, B:210:0x032f, B:213:0x033a, B:215:0x0342, B:218:0x034e, B:220:0x0356, B:223:0x0360, B:226:0x036a, B:229:0x0374, B:232:0x037f, B:234:0x0387, B:237:0x0392, B:239:0x039a, B:242:0x03a4, B:15:0x004c, B:16:0x0054, B:115:0x01c3, B:18:0x0059, B:21:0x0065, B:24:0x0071, B:27:0x007d, B:30:0x0089, B:33:0x0094, B:36:0x00a0, B:39:0x00ab, B:42:0x00b6, B:45:0x00c2, B:48:0x00ce, B:51:0x00d9, B:54:0x00e4, B:57:0x00ef, B:60:0x00fa, B:63:0x0106, B:66:0x0111, B:69:0x011c, B:72:0x0128, B:75:0x0134, B:78:0x0140, B:81:0x014c, B:84:0x0158, B:87:0x0164, B:90:0x016f, B:93:0x017a, B:96:0x0185, B:99:0x0190, B:102:0x019a, B:105:0x01a4, B:108:0x01ae, B:111:0x01b8), top: B:260:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0207 A[Catch: all -> 0x0026, TryCatch #0 {all -> 0x0026, blocks: (B:4:0x0003, B:6:0x0017, B:9:0x001f, B:139:0x01fb, B:140:0x01fe, B:247:0x03b1, B:248:0x03b4, B:250:0x03b9, B:253:0x03bf, B:254:0x03c2, B:255:0x03c5, B:143:0x0207, B:145:0x020f, B:148:0x021a, B:151:0x0226, B:153:0x022e, B:156:0x0239, B:159:0x0244, B:162:0x024f, B:165:0x025a, B:167:0x0262, B:169:0x026a, B:172:0x0276, B:174:0x0284, B:177:0x028f, B:180:0x029a, B:182:0x02a2, B:184:0x02b0, B:186:0x02be, B:189:0x02d0, B:191:0x02de, B:194:0x02ea, B:196:0x02f2, B:198:0x02fa, B:200:0x0302, B:203:0x030e, B:205:0x0316, B:208:0x0327, B:210:0x032f, B:213:0x033a, B:215:0x0342, B:218:0x034e, B:220:0x0356, B:223:0x0360, B:226:0x036a, B:229:0x0374, B:232:0x037f, B:234:0x0387, B:237:0x0392, B:239:0x039a, B:242:0x03a4, B:15:0x004c, B:16:0x0054, B:115:0x01c3, B:18:0x0059, B:21:0x0065, B:24:0x0071, B:27:0x007d, B:30:0x0089, B:33:0x0094, B:36:0x00a0, B:39:0x00ab, B:42:0x00b6, B:45:0x00c2, B:48:0x00ce, B:51:0x00d9, B:54:0x00e4, B:57:0x00ef, B:60:0x00fa, B:63:0x0106, B:66:0x0111, B:69:0x011c, B:72:0x0128, B:75:0x0134, B:78:0x0140, B:81:0x014c, B:84:0x0158, B:87:0x0164, B:90:0x016f, B:93:0x017a, B:96:0x0185, B:99:0x0190, B:102:0x019a, B:105:0x01a4, B:108:0x01ae, B:111:0x01b8), top: B:260:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:246:0x03af A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:250:0x03b9 A[Catch: all -> 0x0026, TryCatch #0 {all -> 0x0026, blocks: (B:4:0x0003, B:6:0x0017, B:9:0x001f, B:139:0x01fb, B:140:0x01fe, B:247:0x03b1, B:248:0x03b4, B:250:0x03b9, B:253:0x03bf, B:254:0x03c2, B:255:0x03c5, B:143:0x0207, B:145:0x020f, B:148:0x021a, B:151:0x0226, B:153:0x022e, B:156:0x0239, B:159:0x0244, B:162:0x024f, B:165:0x025a, B:167:0x0262, B:169:0x026a, B:172:0x0276, B:174:0x0284, B:177:0x028f, B:180:0x029a, B:182:0x02a2, B:184:0x02b0, B:186:0x02be, B:189:0x02d0, B:191:0x02de, B:194:0x02ea, B:196:0x02f2, B:198:0x02fa, B:200:0x0302, B:203:0x030e, B:205:0x0316, B:208:0x0327, B:210:0x032f, B:213:0x033a, B:215:0x0342, B:218:0x034e, B:220:0x0356, B:223:0x0360, B:226:0x036a, B:229:0x0374, B:232:0x037f, B:234:0x0387, B:237:0x0392, B:239:0x039a, B:242:0x03a4, B:15:0x004c, B:16:0x0054, B:115:0x01c3, B:18:0x0059, B:21:0x0065, B:24:0x0071, B:27:0x007d, B:30:0x0089, B:33:0x0094, B:36:0x00a0, B:39:0x00ab, B:42:0x00b6, B:45:0x00c2, B:48:0x00ce, B:51:0x00d9, B:54:0x00e4, B:57:0x00ef, B:60:0x00fa, B:63:0x0106, B:66:0x0111, B:69:0x011c, B:72:0x0128, B:75:0x0134, B:78:0x0140, B:81:0x014c, B:84:0x0158, B:87:0x0164, B:90:0x016f, B:93:0x017a, B:96:0x0185, B:99:0x0190, B:102:0x019a, B:105:0x01a4, B:108:0x01ae, B:111:0x01b8), top: B:260:0x0003 }] */
    @Override // com.google.android.gms.internal.ads.zzads
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.google.android.gms.internal.ads.zzadn[] zza(android.net.Uri r25, java.util.Map r26) {
        /*
            Method dump skipped, instructions count: 1180
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzadi.zza(android.net.Uri, java.util.Map):com.google.android.gms.internal.ads.zzadn[]");
    }
}
