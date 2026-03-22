package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.net.HttpHeaders;
import j$.util.DesugarTimeZone;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaqr {
    public static long zza(String str) {
        try {
            return zzd("EEE, dd MMM yyyy HH:mm:ss zzz").parse(str).getTime();
        } catch (ParseException e) {
            if (!"0".equals(str) && !"-1".equals(str)) {
                zzaqg.zzc(e, "Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            zzaqg.zzd("Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    @Nullable
    public static zzapd zzb(zzapq zzapqVar) {
        long j;
        long j2;
        boolean z;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        long j9;
        long currentTimeMillis = System.currentTimeMillis();
        Map map = zzapqVar.zzc;
        if (map != null) {
            String str = (String) map.get("Date");
            if (str != null) {
                j = zza(str);
            } else {
                j = 0;
            }
            String str2 = (String) map.get("Cache-Control");
            int i = 0;
            if (str2 != null) {
                String[] split = str2.split(",", 0);
                z = false;
                j3 = 0;
                j4 = 0;
                while (i < split.length) {
                    String trim = split[i].trim();
                    if (!trim.equals("no-cache") && !trim.equals("no-store")) {
                        if (trim.startsWith("max-age=")) {
                            try {
                                j4 = Long.parseLong(trim.substring(8));
                            } catch (Exception unused) {
                            }
                        } else if (trim.startsWith("stale-while-revalidate=")) {
                            j3 = Long.parseLong(trim.substring(23));
                        } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                            z = true;
                        }
                        i++;
                    } else {
                        return null;
                    }
                }
                j2 = 0;
                i = 1;
            } else {
                j2 = 0;
                z = false;
                j3 = 0;
                j4 = 0;
            }
            String str3 = (String) map.get("Expires");
            if (str3 != null) {
                j5 = zza(str3);
            } else {
                j5 = j2;
            }
            String str4 = (String) map.get(HttpHeaders.LAST_MODIFIED);
            if (str4 != null) {
                j6 = currentTimeMillis;
                j7 = zza(str4);
            } else {
                j6 = currentTimeMillis;
                j7 = j2;
            }
            String str5 = (String) map.get("ETag");
            if (i != 0) {
                long j10 = (j4 * 1000) + j6;
                if (z) {
                    j9 = j10;
                } else {
                    Long.signum(j3);
                    j9 = (j3 * 1000) + j10;
                }
                j8 = j10;
            } else {
                if (j > j2 && j5 >= j) {
                    j8 = (j5 - j) + j6;
                } else {
                    j8 = j2;
                }
                j9 = j8;
            }
            zzapd zzapdVar = new zzapd();
            zzapdVar.zza = zzapqVar.zzb;
            zzapdVar.zzb = str5;
            zzapdVar.zzf = j8;
            zzapdVar.zze = j9;
            zzapdVar.zzc = j;
            zzapdVar.zzd = j7;
            zzapdVar.zzg = map;
            zzapdVar.zzh = zzapqVar.zzd;
            return zzapdVar;
        }
        return null;
    }

    public static String zzc(long j) {
        return zzd("EEE, dd MMM yyyy HH:mm:ss 'GMT'").format(new Date(j));
    }

    private static SimpleDateFormat zzd(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }
}
