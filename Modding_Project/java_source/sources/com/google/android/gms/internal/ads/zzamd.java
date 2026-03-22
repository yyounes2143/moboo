package com.google.android.gms.internal.ads;

import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzamd {
    public static final Pattern zza = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");
    private static final Pattern zzb = Pattern.compile("(\\S+?):(\\S+)");
    private static final Map zzc;
    private static final Map zzd;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        zzc = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        zzd = Collections.unmodifiableMap(hashMap2);
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x012c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.text.SpannedString zza(@androidx.annotation.Nullable java.lang.String r18, java.lang.String r19, java.util.List r20) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamd.zza(java.lang.String, java.lang.String, java.util.List):android.text.SpannedString");
    }

    public static zzcs zzb(String str) {
        zzamb zzambVar = new zzamb();
        zzh(str, zzambVar);
        return zzambVar.zza();
    }

    @Nullable
    public static zzalw zzc(zzek zzekVar, List list) {
        Charset charset = StandardCharsets.UTF_8;
        String zzz = zzekVar.zzz(charset);
        if (zzz != null) {
            Pattern pattern = zza;
            Matcher matcher = pattern.matcher(zzz);
            if (!matcher.matches()) {
                String zzz2 = zzekVar.zzz(charset);
                if (zzz2 != null) {
                    Matcher matcher2 = pattern.matcher(zzz2);
                    if (matcher2.matches()) {
                        return zze(zzz.trim(), matcher2, zzekVar, list);
                    }
                }
            } else {
                return zze(null, matcher, zzekVar, list);
            }
        }
        return null;
    }

    private static int zzd(List list, @Nullable String str, zzalz zzalzVar) {
        List zzf = zzf(list, str, zzalzVar);
        for (int i = 0; i < zzf.size(); i++) {
            zzalv zzalvVar = ((zzama) zzf.get(i)).zzb;
            if (zzalvVar.zze() != -1) {
                return zzalvVar.zze();
            }
        }
        return -1;
    }

    @Nullable
    private static zzalw zze(@Nullable String str, Matcher matcher, zzek zzekVar, List list) {
        zzamb zzambVar = new zzamb();
        try {
            String group = matcher.group(1);
            if (group != null) {
                zzambVar.zza = zzamf.zzb(group);
                String group2 = matcher.group(2);
                if (group2 != null) {
                    zzambVar.zzb = zzamf.zzb(group2);
                    String group3 = matcher.group(3);
                    group3.getClass();
                    zzh(group3, zzambVar);
                    StringBuilder sb = new StringBuilder();
                    String zzz = zzekVar.zzz(StandardCharsets.UTF_8);
                    while (!TextUtils.isEmpty(zzz)) {
                        if (sb.length() > 0) {
                            sb.append("\n");
                        }
                        sb.append(zzz.trim());
                        zzz = zzekVar.zzz(StandardCharsets.UTF_8);
                    }
                    zzambVar.zzc = zza(str, sb.toString(), list);
                    return new zzalw(zzambVar.zza().zzp(), zzambVar.zza, zzambVar.zzb);
                }
                throw null;
            }
            throw null;
        } catch (IllegalArgumentException unused) {
            zzdx.zzf("WebvttCueParser", "Skipping cue with bad header: ".concat(String.valueOf(matcher.group())));
            return null;
        }
    }

    private static List zzf(List list, @Nullable String str, zzalz zzalzVar) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            zzalv zzalvVar = (zzalv) list.get(i);
            int zzf = zzalvVar.zzf(str, zzalzVar.zza, zzalzVar.zzd, zzalzVar.zzc);
            if (zzf > 0) {
                arrayList.add(new zzama(zzf, zzalvVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static void zzg(@Nullable String str, zzalz zzalzVar, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        char c;
        Comparator comparator;
        zzalz zzalzVar2;
        zzalz zzalzVar3;
        zzalz zzalzVar4;
        int i;
        int i2 = zzalzVar.zzb;
        int length = spannableStringBuilder.length();
        String str2 = zzalzVar.zza;
        int hashCode = str2.hashCode();
        int i3 = -1;
        if (hashCode == 0) {
            if (str2.equals("")) {
                c = 7;
            }
            c = 65535;
        } else if (hashCode == 105) {
            if (str2.equals(CmcdData.Factory.OBJECT_TYPE_INIT_SEGMENT)) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode == 3314158) {
            if (str2.equals("lang")) {
                c = 6;
            }
            c = 65535;
        } else if (hashCode == 3511770) {
            if (str2.equals(TtmlNode.ATTR_TTS_RUBY)) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode == 98) {
            if (str2.equals(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode == 99) {
            if (str2.equals("c")) {
                c = 4;
            }
            c = 65535;
        } else if (hashCode != 117) {
            if (hashCode == 118 && str2.equals("v")) {
                c = 5;
            }
            c = 65535;
        } else {
            if (str2.equals("u")) {
                c = 3;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                spannableStringBuilder.setSpan(new StyleSpan(1), i2, length, 33);
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(2), i2, length, 33);
                break;
            case 2:
                int zzd2 = zzd(list2, str, zzalzVar);
                ArrayList arrayList = new ArrayList(list.size());
                arrayList.addAll(list);
                comparator = zzaly.zza;
                Collections.sort(arrayList, comparator);
                int i4 = i2;
                int i5 = 0;
                int i6 = 0;
                while (i5 < arrayList.size()) {
                    zzalzVar2 = ((zzaly) arrayList.get(i5)).zzb;
                    if ("rt".equals(zzalzVar2.zza)) {
                        zzaly zzalyVar = (zzaly) arrayList.get(i5);
                        zzalzVar3 = zzalyVar.zzb;
                        int zzd3 = zzd(list2, str, zzalzVar3);
                        if (zzd3 == i3) {
                            zzd3 = zzd2 != i3 ? zzd2 : 1;
                        }
                        zzalzVar4 = zzalyVar.zzb;
                        int i7 = zzalzVar4.zzb - i6;
                        i = zzalyVar.zzc;
                        int i8 = i - i6;
                        CharSequence subSequence = spannableStringBuilder.subSequence(i7, i8);
                        spannableStringBuilder.delete(i7, i8);
                        spannableStringBuilder.setSpan(new zzcy(subSequence.toString(), zzd3), i4, i7, 33);
                        i6 += subSequence.length();
                        i4 = i7;
                    }
                    i5++;
                    i3 = -1;
                }
                break;
            case 3:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i2, length, 33);
                break;
            case 4:
                for (String str3 : zzalzVar.zzd) {
                    Map map = zzc;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str3)).intValue()), i2, length, 33);
                    } else {
                        Map map2 = zzd;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str3)).intValue()), i2, length, 33);
                        }
                    }
                }
                break;
            case 5:
                spannableStringBuilder.setSpan(new zzdb(zzalzVar.zzc), i2, length, 33);
                break;
            case 6:
            case 7:
                break;
            default:
                return;
        }
        List zzf = zzf(list2, str, zzalzVar);
        for (int i9 = 0; i9 < zzf.size(); i9++) {
            zzalv zzalvVar = ((zzama) zzf.get(i9)).zzb;
            if (zzalvVar != null) {
                if (zzalvVar.zzg() != -1) {
                    zzcz.zzb(spannableStringBuilder, new StyleSpan(zzalvVar.zzg()), i2, length, 33);
                }
                if (zzalvVar.zzz()) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i2, length, 33);
                }
                if (zzalvVar.zzy()) {
                    zzcz.zzb(spannableStringBuilder, new ForegroundColorSpan(zzalvVar.zzc()), i2, length, 33);
                }
                if (zzalvVar.zzx()) {
                    zzcz.zzb(spannableStringBuilder, new BackgroundColorSpan(zzalvVar.zzb()), i2, length, 33);
                }
                if (zzalvVar.zzr() != null) {
                    zzcz.zzb(spannableStringBuilder, new TypefaceSpan(zzalvVar.zzr()), i2, length, 33);
                }
                int zzd4 = zzalvVar.zzd();
                if (zzd4 == 1) {
                    zzcz.zzb(spannableStringBuilder, new AbsoluteSizeSpan((int) zzalvVar.zza(), true), i2, length, 33);
                } else if (zzd4 == 2) {
                    zzcz.zzb(spannableStringBuilder, new RelativeSizeSpan(zzalvVar.zza()), i2, length, 33);
                } else if (zzd4 == 3) {
                    zzcz.zzb(spannableStringBuilder, new RelativeSizeSpan(zzalvVar.zza() / 100.0f), i2, length, 33);
                }
                if (zzalvVar.zzw()) {
                    spannableStringBuilder.setSpan(new zzcx(), i2, length, 33);
                }
            }
        }
    }

    private static void zzh(String str, zzamb zzambVar) {
        Matcher matcher = zzb.matcher(str);
        while (matcher.find()) {
            int i = 1;
            String group = matcher.group(1);
            group.getClass();
            int i2 = 2;
            String group2 = matcher.group(2);
            group2.getClass();
            try {
                char c = 65535;
                if (!"line".equals(group)) {
                    if (!"align".equals(group)) {
                        if (!"position".equals(group)) {
                            if ("size".equals(group)) {
                                zzambVar.zzj = zzamf.zza(group2);
                            } else if (!"vertical".equals(group)) {
                                zzdx.zzf("WebvttCueParser", "Unknown cue setting " + group + ":" + group2);
                            } else {
                                int hashCode = group2.hashCode();
                                if (hashCode != 3462) {
                                    if (hashCode == 3642 && group2.equals("rl")) {
                                        c = 0;
                                    }
                                } else if (group2.equals("lr")) {
                                    c = 1;
                                }
                                if (c != 0) {
                                    if (c != 1) {
                                        zzdx.zzf("WebvttCueParser", "Invalid 'vertical' value: ".concat(group2));
                                        i = Integer.MIN_VALUE;
                                    } else {
                                        i = 2;
                                    }
                                }
                                zzambVar.zzk = i;
                            }
                        } else {
                            int indexOf = group2.indexOf(44);
                            if (indexOf != -1) {
                                String substring = group2.substring(indexOf + 1);
                                switch (substring.hashCode()) {
                                    case -1842484672:
                                        if (substring.equals("line-left")) {
                                            c = 0;
                                            break;
                                        }
                                        break;
                                    case -1364013995:
                                        if (substring.equals("center")) {
                                            c = 2;
                                            break;
                                        }
                                        break;
                                    case -1276788989:
                                        if (substring.equals("line-right")) {
                                            c = 4;
                                            break;
                                        }
                                        break;
                                    case -1074341483:
                                        if (substring.equals("middle")) {
                                            c = 3;
                                            break;
                                        }
                                        break;
                                    case 100571:
                                        if (substring.equals("end")) {
                                            c = 5;
                                            break;
                                        }
                                        break;
                                    case 109757538:
                                        if (substring.equals("start")) {
                                            c = 1;
                                            break;
                                        }
                                        break;
                                }
                                if (c != 0 && c != 1) {
                                    if (c != 2 && c != 3) {
                                        if (c != 4 && c != 5) {
                                            zzdx.zzf("WebvttCueParser", "Invalid anchor value: ".concat(substring));
                                            i = Integer.MIN_VALUE;
                                        } else {
                                            i = 2;
                                        }
                                    }
                                } else {
                                    i = 0;
                                }
                                zzambVar.zzi = i;
                                group2 = group2.substring(0, indexOf);
                            }
                            zzambVar.zzh = zzamf.zza(group2);
                        }
                    } else {
                        switch (group2.hashCode()) {
                            case -1364013995:
                                if (group2.equals("center")) {
                                    c = 2;
                                    break;
                                }
                                break;
                            case -1074341483:
                                if (group2.equals("middle")) {
                                    c = 3;
                                    break;
                                }
                                break;
                            case 100571:
                                if (group2.equals("end")) {
                                    c = 4;
                                    break;
                                }
                                break;
                            case 3317767:
                                if (group2.equals("left")) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case 108511772:
                                if (group2.equals("right")) {
                                    c = 5;
                                    break;
                                }
                                break;
                            case 109757538:
                                if (group2.equals("start")) {
                                    c = 0;
                                    break;
                                }
                                break;
                        }
                        if (c != 0) {
                            if (c != 1) {
                                if (c != 2 && c != 3) {
                                    if (c != 4) {
                                        if (c != 5) {
                                            zzdx.zzf("WebvttCueParser", "Invalid alignment value: ".concat(group2));
                                        } else {
                                            i = 5;
                                        }
                                    } else {
                                        i = 3;
                                    }
                                }
                                i = 2;
                            } else {
                                i = 4;
                            }
                        }
                        zzambVar.zzd = i;
                    }
                } else {
                    int indexOf2 = group2.indexOf(44);
                    if (indexOf2 != -1) {
                        String substring2 = group2.substring(indexOf2 + 1);
                        switch (substring2.hashCode()) {
                            case -1364013995:
                                if (substring2.equals("center")) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case -1074341483:
                                if (substring2.equals("middle")) {
                                    c = 2;
                                    break;
                                }
                                break;
                            case 100571:
                                if (substring2.equals("end")) {
                                    c = 3;
                                    break;
                                }
                                break;
                            case 109757538:
                                if (substring2.equals("start")) {
                                    c = 0;
                                    break;
                                }
                                break;
                        }
                        if (c != 0) {
                            if (c != 1 && c != 2) {
                                if (c != 3) {
                                    zzdx.zzf("WebvttCueParser", "Invalid anchor value: ".concat(substring2));
                                    i2 = Integer.MIN_VALUE;
                                }
                            } else {
                                i2 = 1;
                            }
                        } else {
                            i2 = 0;
                        }
                        zzambVar.zzg = i2;
                        group2 = group2.substring(0, indexOf2);
                    }
                    if (group2.endsWith("%")) {
                        zzambVar.zze = zzamf.zza(group2);
                        zzambVar.zzf = 0;
                    } else {
                        zzambVar.zze = Integer.parseInt(group2);
                        zzambVar.zzf = 1;
                    }
                }
            } catch (NumberFormatException unused) {
                zzdx.zzf("WebvttCueParser", "Skipping bad cue setting: ".concat(String.valueOf(matcher.group())));
            }
        }
    }
}
