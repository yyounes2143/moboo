package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaqq implements zzape {
    private final zzaqp zzc;
    private final Map zza = new LinkedHashMap(16, 0.75f, true);
    private long zzb = 0;
    private final int zzd = 5242880;

    public zzaqq(zzaqp zzaqpVar, int i) {
        this.zzc = zzaqpVar;
    }

    public static int zze(InputStream inputStream) throws IOException {
        return (zzn(inputStream) << 24) | zzn(inputStream) | (zzn(inputStream) << 8) | (zzn(inputStream) << 16);
    }

    public static long zzf(InputStream inputStream) throws IOException {
        return (zzn(inputStream) & 255) | ((zzn(inputStream) & 255) << 8) | ((zzn(inputStream) & 255) << 16) | ((zzn(inputStream) & 255) << 24) | ((zzn(inputStream) & 255) << 32) | ((zzn(inputStream) & 255) << 40) | ((zzn(inputStream) & 255) << 48) | ((zzn(inputStream) & 255) << 56);
    }

    public static String zzh(zzaqo zzaqoVar) throws IOException {
        return new String(zzm(zzaqoVar, zzf(zzaqoVar)), "UTF-8");
    }

    public static void zzj(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    public static void zzk(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    public static void zzl(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        int length = bytes.length;
        zzk(outputStream, length);
        outputStream.write(bytes, 0, length);
    }

    @VisibleForTesting
    public static byte[] zzm(zzaqo zzaqoVar, long j) throws IOException {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        long zza = zzaqoVar.zza();
        if (i >= 0 && j <= zza) {
            int i2 = (int) j;
            if (i2 == j) {
                byte[] bArr = new byte[i2];
                new DataInputStream(zzaqoVar).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j + ", maxLength=" + zza);
    }

    private static int zzn(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    private final void zzo(String str, zzaqn zzaqnVar) {
        Map map = this.zza;
        if (!map.containsKey(str)) {
            this.zzb += zzaqnVar.zza;
        } else {
            this.zzb += zzaqnVar.zza - ((zzaqn) map.get(str)).zza;
        }
        map.put(str, zzaqnVar);
    }

    private final void zzp(String str) {
        zzaqn zzaqnVar = (zzaqn) this.zza.remove(str);
        if (zzaqnVar != null) {
            this.zzb -= zzaqnVar.zza;
        }
    }

    private static final String zzq(String str) {
        int length = str.length() / 2;
        return String.valueOf(String.valueOf(str.substring(0, length).hashCode())).concat(String.valueOf(String.valueOf(str.substring(length).hashCode())));
    }

    @Override // com.google.android.gms.internal.ads.zzape
    public final synchronized zzapd zza(String str) {
        zzaqn zzaqnVar = (zzaqn) this.zza.get(str);
        if (zzaqnVar == null) {
            return null;
        }
        File zzg = zzg(str);
        try {
            zzaqo zzaqoVar = new zzaqo(new BufferedInputStream(new FileInputStream(zzg)), zzg.length());
            try {
                String str2 = zzaqn.zza(zzaqoVar).zzb;
                if (!TextUtils.equals(str, str2)) {
                    zzaqg.zza("%s: key=%s, found=%s", zzg.getAbsolutePath(), str, str2);
                    zzp(str);
                    return null;
                }
                byte[] zzm = zzm(zzaqoVar, zzaqoVar.zza());
                zzapd zzapdVar = new zzapd();
                zzapdVar.zza = zzm;
                zzapdVar.zzb = zzaqnVar.zzc;
                zzapdVar.zzc = zzaqnVar.zzd;
                zzapdVar.zzd = zzaqnVar.zze;
                zzapdVar.zze = zzaqnVar.zzf;
                zzapdVar.zzf = zzaqnVar.zzg;
                List<zzapm> list = zzaqnVar.zzh;
                TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                for (zzapm zzapmVar : list) {
                    treeMap.put(zzapmVar.zza(), zzapmVar.zzb());
                }
                zzapdVar.zzg = treeMap;
                zzapdVar.zzh = Collections.unmodifiableList(list);
                return zzapdVar;
            } finally {
                zzaqoVar.close();
            }
        } catch (IOException e) {
            zzaqg.zza("%s: %s", zzg.getAbsolutePath(), e.toString());
            zzi(str);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzape
    public final synchronized void zzb() {
        synchronized (this) {
            File zza = this.zzc.zza();
            if (!zza.exists()) {
                if (!zza.mkdirs()) {
                    zzaqg.zzb("Unable to create cache dir %s", zza.getAbsolutePath());
                }
            } else {
                File[] listFiles = zza.listFiles();
                if (listFiles != null) {
                    for (File file : listFiles) {
                        try {
                            long length = file.length();
                            zzaqo zzaqoVar = new zzaqo(new BufferedInputStream(new FileInputStream(file)), length);
                            try {
                                zzaqn zza2 = zzaqn.zza(zzaqoVar);
                                zza2.zza = length;
                                zzo(zza2.zzb, zza2);
                                zzaqoVar.close();
                            } catch (Throwable th) {
                                zzaqoVar.close();
                                throw th;
                                break;
                            }
                        } catch (IOException unused) {
                            file.delete();
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzape
    public final synchronized void zzc(String str, boolean z) {
        zzapd zza = zza(str);
        if (zza != null) {
            zza.zzf = 0L;
            zza.zze = 0L;
            zzd(str, zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzape
    public final synchronized void zzd(String str, zzapd zzapdVar) {
        long j;
        float f;
        try {
            long j2 = this.zzb;
            int length = zzapdVar.zza.length;
            long j3 = j2 + length;
            int i = this.zzd;
            float f2 = 0.9f;
            if (j3 <= i || length <= i * 0.9f) {
                File zzg = zzg(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(zzg));
                    zzaqn zzaqnVar = new zzaqn(str, zzapdVar);
                    try {
                        zzj(bufferedOutputStream, 538247942);
                        zzl(bufferedOutputStream, zzaqnVar.zzb);
                        String str2 = zzaqnVar.zzc;
                        if (str2 == null) {
                            str2 = "";
                        }
                        zzl(bufferedOutputStream, str2);
                        zzk(bufferedOutputStream, zzaqnVar.zzd);
                        zzk(bufferedOutputStream, zzaqnVar.zze);
                        zzk(bufferedOutputStream, zzaqnVar.zzf);
                        zzk(bufferedOutputStream, zzaqnVar.zzg);
                        List<zzapm> list = zzaqnVar.zzh;
                        if (list != null) {
                            zzj(bufferedOutputStream, list.size());
                            for (zzapm zzapmVar : list) {
                                zzl(bufferedOutputStream, zzapmVar.zza());
                                zzl(bufferedOutputStream, zzapmVar.zzb());
                            }
                        } else {
                            zzj(bufferedOutputStream, 0);
                        }
                        bufferedOutputStream.flush();
                        bufferedOutputStream.write(zzapdVar.zza);
                        bufferedOutputStream.close();
                        zzaqnVar.zza = zzg.length();
                        zzo(str, zzaqnVar);
                        long j4 = this.zzb;
                        int i2 = this.zzd;
                        if (j4 >= i2) {
                            boolean z = zzaqg.zzb;
                            if (z) {
                                zzaqg.zzd("Pruning old cache entries.", new Object[0]);
                            }
                            long j5 = this.zzb;
                            long elapsedRealtime = SystemClock.elapsedRealtime();
                            Iterator it = this.zza.entrySet().iterator();
                            int i3 = 0;
                            while (true) {
                                if (it.hasNext()) {
                                    zzaqn zzaqnVar2 = (zzaqn) ((Map.Entry) it.next()).getValue();
                                    String str3 = zzaqnVar2.zzb;
                                    if (zzg(str3).delete()) {
                                        f = f2;
                                        j = j5;
                                        this.zzb -= zzaqnVar2.zza;
                                    } else {
                                        f = f2;
                                        j = j5;
                                        zzaqg.zza("Could not delete cache entry for key=%s, filename=%s", str3, zzq(str3));
                                    }
                                    it.remove();
                                    i3++;
                                    if (((float) this.zzb) < i2 * f) {
                                        break;
                                    }
                                    j5 = j;
                                    f2 = f;
                                } else {
                                    j = j5;
                                    break;
                                }
                            }
                            if (z) {
                                zzaqg.zzd("pruned %d files, %d bytes, %d ms", Integer.valueOf(i3), Long.valueOf(this.zzb - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                            }
                        }
                    } catch (IOException e) {
                        zzaqg.zza("%s", e.toString());
                        bufferedOutputStream.close();
                        zzaqg.zza("Failed to write header for %s", zzg.getAbsolutePath());
                        throw new IOException();
                    }
                } catch (IOException unused) {
                    if (!zzg.delete()) {
                        zzaqg.zza("Could not clean up file %s", zzg.getAbsolutePath());
                    }
                    if (!this.zzc.zza().exists()) {
                        zzaqg.zza("Re-initializing cache after external clearing.", new Object[0]);
                        this.zza.clear();
                        this.zzb = 0L;
                        zzb();
                    }
                }
            }
        } finally {
        }
    }

    public final File zzg(String str) {
        return new File(this.zzc.zza(), zzq(str));
    }

    public final synchronized void zzi(String str) {
        boolean delete = zzg(str).delete();
        zzp(str);
        if (!delete) {
            zzaqg.zza("Could not delete cache entry for key=%s, filename=%s", str, zzq(str));
        }
    }

    public zzaqq(File file, int i) {
        this.zzc = new zzaqm(this, file);
    }
}
