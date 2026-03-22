package com.google.android.gms.internal.ads;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzalf implements zzakl {
    private static final Pattern zza = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*");
    private static final Pattern zzb = Pattern.compile("\\{\\\\.*?\\}");
    private final StringBuilder zzc = new StringBuilder();
    private final ArrayList zzd = new ArrayList();
    private final zzek zze = new zzek();

    @VisibleForTesting(otherwise = 2)
    public static float zzb(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return 0.92f;
                }
                throw new IllegalArgumentException();
            }
            return 0.5f;
        }
        return 0.08f;
    }

    private static long zzc(Matcher matcher, int i) {
        long j;
        String group = matcher.group(i + 1);
        if (group != null) {
            j = Long.parseLong(group) * 3600000;
        } else {
            j = 0;
        }
        String group2 = matcher.group(i + 2);
        group2.getClass();
        long parseLong = j + (Long.parseLong(group2) * 60000);
        String group3 = matcher.group(i + 3);
        group3.getClass();
        long parseLong2 = parseLong + (Long.parseLong(group3) * 1000);
        String group4 = matcher.group(i + 4);
        if (group4 != null) {
            parseLong2 += Long.parseLong(group4);
        }
        return parseLong2 * 1000;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzakl
    public final void zza(byte[] bArr, int i, int i2, zzakk zzakkVar, zzdk zzdkVar) {
        zzek zzekVar;
        String str;
        char c;
        char c2;
        int i3;
        zzcu zzp;
        zzalf zzalfVar = this;
        zzek zzekVar2 = zzalfVar.zze;
        zzekVar2.zzJ(bArr, i + i2);
        zzekVar2.zzL(i);
        Charset zzC = zzekVar2.zzC();
        if (zzC == null) {
            zzC = StandardCharsets.UTF_8;
        }
        while (true) {
            String zzz = zzekVar2.zzz(zzC);
            if (zzz == null) {
                return;
            }
            if (zzz.length() != 0) {
                try {
                    Integer.parseInt(zzz);
                    zzek zzekVar3 = zzalfVar.zze;
                    String zzz2 = zzekVar3.zzz(zzC);
                    if (zzz2 == null) {
                        zzdx.zzf("SubripParser", "Unexpected end");
                        return;
                    }
                    Matcher matcher = zza.matcher(zzz2);
                    if (matcher.matches()) {
                        long zzc = zzc(matcher, 1);
                        long zzc2 = zzc(matcher, 6);
                        StringBuilder sb = zzalfVar.zzc;
                        int i4 = 0;
                        sb.setLength(0);
                        ArrayList arrayList = zzalfVar.zzd;
                        arrayList.clear();
                        String zzz3 = zzekVar3.zzz(zzC);
                        while (!TextUtils.isEmpty(zzz3)) {
                            if (sb.length() > 0) {
                                sb.append("<br>");
                            }
                            String trim = zzz3.trim();
                            StringBuilder sb2 = new StringBuilder(trim);
                            Matcher matcher2 = zzb.matcher(trim);
                            int i5 = i4;
                            while (matcher2.find()) {
                                String group = matcher2.group();
                                arrayList.add(group);
                                int start = matcher2.start() - i5;
                                int length = group.length();
                                sb2.replace(start, start + length, "");
                                i5 += length;
                                zzekVar2 = zzekVar2;
                            }
                            sb.append(sb2.toString());
                            zzz3 = zzekVar3.zzz(zzC);
                            i4 = 0;
                        }
                        zzekVar = zzekVar2;
                        Spanned fromHtml = Html.fromHtml(sb.toString());
                        int i6 = 0;
                        while (true) {
                            if (i6 < arrayList.size()) {
                                str = (String) arrayList.get(i6);
                                if (!str.matches("\\{\\\\an[1-9]\\}")) {
                                    i6++;
                                }
                            } else {
                                str = null;
                            }
                        }
                        zzcs zzcsVar = new zzcs();
                        zzcsVar.zzl(fromHtml);
                        if (str == null) {
                            zzp = zzcsVar.zzp();
                        } else {
                            switch (str.hashCode()) {
                                case -685620710:
                                    if (str.equals("{\\an1}")) {
                                        c = 0;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case -685620648:
                                    if (str.equals("{\\an3}")) {
                                        c = 3;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case -685620617:
                                    if (str.equals("{\\an4}")) {
                                        c = 1;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case -685620555:
                                    if (str.equals("{\\an6}")) {
                                        c = 4;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case -685620524:
                                    if (str.equals("{\\an7}")) {
                                        c = 2;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case -685620462:
                                    if (str.equals("{\\an9}")) {
                                        c = 5;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                default:
                                    c = 65535;
                                    break;
                            }
                            if (c == 0 || c == 1 || c == 2) {
                                zzcsVar.zzi(0);
                            } else if (c != 3 && c != 4 && c != 5) {
                                zzcsVar.zzi(1);
                            } else {
                                zzcsVar.zzi(2);
                            }
                            switch (str.hashCode()) {
                                case -685620710:
                                    if (str.equals("{\\an1}")) {
                                        c2 = 0;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -685620679:
                                    if (str.equals("{\\an2}")) {
                                        c2 = 1;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -685620648:
                                    if (str.equals("{\\an3}")) {
                                        c2 = 2;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -685620524:
                                    if (str.equals("{\\an7}")) {
                                        c2 = 3;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -685620493:
                                    if (str.equals("{\\an8}")) {
                                        c2 = 4;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -685620462:
                                    if (str.equals("{\\an9}")) {
                                        c2 = 5;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                default:
                                    c2 = 65535;
                                    break;
                            }
                            if (c2 == 0 || c2 == 1) {
                                i3 = 2;
                            } else if (c2 != 2) {
                                if (c2 != 3 && c2 != 4 && c2 != 5) {
                                    zzcsVar.zzf(1);
                                } else {
                                    zzcsVar.zzf(0);
                                }
                                zzcsVar.zzh(zzb(zzcsVar.zzb()));
                                zzcsVar.zze(zzb(zzcsVar.zza()), 0);
                                zzp = zzcsVar.zzp();
                            } else {
                                i3 = 2;
                            }
                            zzcsVar.zzf(i3);
                            zzcsVar.zzh(zzb(zzcsVar.zzb()));
                            zzcsVar.zze(zzb(zzcsVar.zza()), 0);
                            zzp = zzcsVar.zzp();
                        }
                        zzdkVar.zza(new zzakd(zzfyc.zzo(zzp), zzc, zzc2 - zzc));
                    } else {
                        zzekVar = zzekVar2;
                        zzdx.zzf("SubripParser", "Skipping invalid timing: ".concat(zzz2));
                    }
                } catch (NumberFormatException unused) {
                    zzekVar = zzekVar2;
                    zzdx.zzf("SubripParser", "Skipping invalid index: ".concat(zzz));
                }
            } else {
                zzekVar = zzekVar2;
            }
            zzalfVar = this;
            zzekVar2 = zzekVar;
        }
    }
}
