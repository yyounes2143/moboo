package com.google.android.gms.internal.ads;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcdl extends zzcdi {
    public static final /* synthetic */ int zzd = 0;
    private static final Set zze = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat zzf = new DecimalFormat("#,###");
    private File zzg;
    private boolean zzh;

    public zzcdl(zzcbw zzcbwVar) {
        super(zzcbwVar);
        File cacheDir = this.zza.getCacheDir();
        if (cacheDir == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Context.getCacheDir() returned null");
            return;
        }
        File file = new File(zzfqi.zza(zzfqh.zza(), cacheDir, "admobVideoStreams"));
        this.zzg = file;
        if (!file.isDirectory() && !this.zzg.mkdirs()) {
            String valueOf = String.valueOf(this.zzg.getAbsolutePath());
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not create preload cache directory at ".concat(valueOf));
            this.zzg = null;
        } else if (this.zzg.setReadable(true, false) && this.zzg.setExecutable(true, false)) {
        } else {
            String valueOf2 = String.valueOf(this.zzg.getAbsolutePath());
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not set cache file permissions at ".concat(valueOf2));
            this.zzg = null;
        }
    }

    private final File zza(File file) {
        return new File(zzfqi.zza(zzfqh.zza(), this.zzg, String.valueOf(file.getName()).concat(".done")));
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzf() {
        this.zzh = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:133:0x032f, code lost:
        r22 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0331, code lost:
        r22.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0339, code lost:
        if (com.google.android.gms.ads.internal.util.client.zzo.zzm(3) == false) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x033b, code lost:
        com.google.android.gms.ads.internal.util.client.zzo.zze("Preloaded " + r14.format(r6) + " bytes from " + r27);
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x035c, code lost:
        r3 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0360, code lost:
        r3.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0367, code lost:
        if (r11.isFile() == false) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0369, code lost:
        r11.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0371, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0374, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0377, code lost:
        r11.createNewFile();
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0397, code lost:
        com.google.android.gms.ads.internal.zzv.zzp().zzw(r0, "VideoStreamFullFileCache.preload");
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x03a7, code lost:
        r5 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Preload aborted for URL \"" + r27 + "\"");
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x03c3, code lost:
        r6 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzk("Preload failed for URL \"" + r27 + "\"", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x03ea, code lost:
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not delete partial cache file at ".concat(java.lang.String.valueOf(r3.getAbsolutePath())));
     */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03e4  */
    /* JADX WARN: Type inference failed for: r9v6, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzcdi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzt(final java.lang.String r27) {
        /*
            Method dump skipped, instructions count: 1042
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcdl.zzt(java.lang.String):boolean");
    }
}
