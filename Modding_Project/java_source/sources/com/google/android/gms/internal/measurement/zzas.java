package com.google.android.gms.internal.measurement;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.google.android.gms.ads.AdError;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzas implements Iterable, zzao {
    private final String zza;

    public zzas(String str) {
        if (str != null) {
            this.zza = str;
            return;
        }
        throw new IllegalArgumentException("StringValue cannot be null.");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzas)) {
            return false;
        }
        return this.zza.equals(((zzas) obj).zza);
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new zzar(this);
    }

    public final String toString() {
        String str = this.zza;
        StringBuilder sb = new StringBuilder(str.length() + 2);
        sb.append("\"");
        sb.append(str);
        sb.append("\"");
        return sb.toString();
    }

    public final /* synthetic */ String zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String zzc() {
        return this.zza;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao zzcA(String str, zzg zzgVar, List list) {
        String str2;
        String str3;
        String str4;
        String str5;
        char c;
        int i;
        int i2;
        double doubleValue;
        double zzi;
        String zzc;
        int i3;
        Matcher matcher;
        double d;
        double min;
        double length;
        double min2;
        long j;
        int i4;
        int i5;
        zzg zzgVar2;
        int i6;
        int length2;
        if ("charAt".equals(str) || "concat".equals(str) || "hasOwnProperty".equals(str) || "indexOf".equals(str) || "lastIndexOf".equals(str) || "match".equals(str) || "replace".equals(str) || "search".equals(str) || "slice".equals(str) || "split".equals(str) || "substring".equals(str) || "toLowerCase".equals(str) || "toLocaleLowerCase".equals(str) || "toString".equals(str) || "toUpperCase".equals(str) || "toLocaleUpperCase".equals(str)) {
            str2 = "hasOwnProperty";
            str3 = "trim";
        } else {
            str2 = "hasOwnProperty";
            str3 = "trim";
            if (!str3.equals(str)) {
                throw new IllegalArgumentException(String.format("%s is not a String function", str));
            }
        }
        switch (str.hashCode()) {
            case -1789698943:
                str4 = str2;
                str5 = "charAt";
                if (str.equals(str4)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1776922004:
                str5 = "charAt";
                if (str.equals("toString")) {
                    c = 14;
                    str4 = str2;
                    break;
                }
                str4 = str2;
                c = 65535;
                break;
            case -1464939364:
                str5 = "charAt";
                if (str.equals("toLocaleLowerCase")) {
                    c = '\f';
                    str4 = str2;
                    break;
                }
                str4 = str2;
                c = 65535;
                break;
            case -1361633751:
                str5 = "charAt";
                if (str.equals(str5)) {
                    c = 0;
                    str4 = str2;
                    break;
                }
                str4 = str2;
                c = 65535;
                break;
            case -1354795244:
                if (str.equals("concat")) {
                    str4 = str2;
                    str5 = "charAt";
                    c = 1;
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                c = 65535;
                break;
            case -1137582698:
                if (str.equals("toLowerCase")) {
                    c = '\r';
                    str4 = str2;
                    str5 = "charAt";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                c = 65535;
                break;
            case -906336856:
                if (str.equals("search")) {
                    c = 7;
                    str4 = str2;
                    str5 = "charAt";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                c = 65535;
                break;
            case -726908483:
                if (str.equals("toLocaleUpperCase")) {
                    c = 11;
                    str4 = str2;
                    str5 = "charAt";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                c = 65535;
                break;
            case -467511597:
                if (str.equals("lastIndexOf")) {
                    c = 4;
                    str4 = str2;
                    str5 = "charAt";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                c = 65535;
                break;
            case -399551817:
                if (str.equals("toUpperCase")) {
                    c = 15;
                    str4 = str2;
                    str5 = "charAt";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                c = 65535;
                break;
            case 3568674:
                if (str.equals(str3)) {
                    c = 16;
                    str4 = str2;
                    str5 = "charAt";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                c = 65535;
                break;
            case 103668165:
                if (str.equals("match")) {
                    c = 5;
                    str4 = str2;
                    str5 = "charAt";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                c = 65535;
                break;
            case 109526418:
                if (str.equals("slice")) {
                    c = '\b';
                    str4 = str2;
                    str5 = "charAt";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                c = 65535;
                break;
            case 109648666:
                if (str.equals("split")) {
                    c = '\t';
                    str4 = str2;
                    str5 = "charAt";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                c = 65535;
                break;
            case 530542161:
                if (str.equals("substring")) {
                    c = '\n';
                    str4 = str2;
                    str5 = "charAt";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                c = 65535;
                break;
            case 1094496948:
                if (str.equals("replace")) {
                    c = 6;
                    str4 = str2;
                    str5 = "charAt";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                c = 65535;
                break;
            case 1943291465:
                if (str.equals("indexOf")) {
                    str4 = str2;
                    str5 = "charAt";
                    c = 3;
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                c = 65535;
                break;
            default:
                str4 = str2;
                str5 = "charAt";
                c = 65535;
                break;
        }
        String str6 = AdError.UNDEFINED_DOMAIN;
        char c2 = c;
        double d2 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        switch (c2) {
            case 0:
                zzh.zzc(str5, 1, list);
                if (!list.isEmpty()) {
                    i = (int) zzh.zzi(zzgVar.zza((zzao) list.get(0)).zzd().doubleValue());
                } else {
                    i = 0;
                }
                String str7 = this.zza;
                if (i >= 0 && i < str7.length()) {
                    return new zzas(String.valueOf(str7.charAt(i)));
                }
                return zzao.zzm;
            case 1:
                if (list.isEmpty()) {
                    return this;
                }
                StringBuilder sb = new StringBuilder(this.zza);
                for (int i7 = 0; i7 < list.size(); i7++) {
                    sb.append(zzgVar.zza((zzao) list.get(i7)).zzc());
                }
                return new zzas(sb.toString());
            case 2:
                zzh.zza(str4, 1, list);
                String str8 = this.zza;
                zzao zza = zzgVar.zza((zzao) list.get(0));
                if (SessionDescription.ATTR_LENGTH.equals(zza.zzc())) {
                    return zzao.zzk;
                }
                double doubleValue2 = zza.zzd().doubleValue();
                if (doubleValue2 == Math.floor(doubleValue2) && (i2 = (int) doubleValue2) >= 0 && i2 < str8.length()) {
                    return zzao.zzk;
                }
                return zzao.zzl;
            case 3:
                zzh.zzc("indexOf", 2, list);
                String str9 = this.zza;
                if (list.size() > 0) {
                    str6 = zzgVar.zza((zzao) list.get(0)).zzc();
                }
                String str10 = str6;
                if (list.size() >= 2) {
                    d2 = zzgVar.zza((zzao) list.get(1)).zzd().doubleValue();
                }
                return new zzah(Double.valueOf(str9.indexOf(str10, (int) zzh.zzi(d2))));
            case 4:
                zzh.zzc("lastIndexOf", 2, list);
                String str11 = this.zza;
                if (list.size() > 0) {
                    str6 = zzgVar.zza((zzao) list.get(0)).zzc();
                }
                String str12 = str6;
                if (list.size() < 2) {
                    doubleValue = Double.NaN;
                } else {
                    doubleValue = zzgVar.zza((zzao) list.get(1)).zzd().doubleValue();
                }
                if (Double.isNaN(doubleValue)) {
                    zzi = Double.POSITIVE_INFINITY;
                } else {
                    zzi = zzh.zzi(doubleValue);
                }
                return new zzah(Double.valueOf(str11.lastIndexOf(str12, (int) zzi)));
            case 5:
                zzh.zzc("match", 1, list);
                String str13 = this.zza;
                if (list.size() <= 0) {
                    zzc = "";
                } else {
                    zzc = zzgVar.zza((zzao) list.get(0)).zzc();
                }
                Matcher matcher2 = Pattern.compile(zzc).matcher(str13);
                if (matcher2.find()) {
                    return new zzae(Arrays.asList(new zzas(matcher2.group())));
                }
                return zzao.zzg;
            case 6:
                zzh.zzc("replace", 2, list);
                zzao zzaoVar = zzao.zzf;
                if (!list.isEmpty()) {
                    str6 = zzgVar.zza((zzao) list.get(0)).zzc();
                    if (list.size() > 1) {
                        zzaoVar = zzgVar.zza((zzao) list.get(1));
                    }
                }
                String str14 = str6;
                String str15 = this.zza;
                int indexOf = str15.indexOf(str14);
                if (indexOf >= 0) {
                    if (zzaoVar instanceof zzai) {
                        i3 = 0;
                        zzaoVar = ((zzai) zzaoVar).zza(zzgVar, Arrays.asList(new zzas(str14), new zzah(Double.valueOf(indexOf)), this));
                    } else {
                        i3 = 0;
                    }
                    String substring = str15.substring(i3, indexOf);
                    String zzc2 = zzaoVar.zzc();
                    String substring2 = str15.substring(indexOf + str14.length());
                    StringBuilder sb2 = new StringBuilder(String.valueOf(substring).length() + String.valueOf(zzc2).length() + String.valueOf(substring2).length());
                    sb2.append(substring);
                    sb2.append(zzc2);
                    sb2.append(substring2);
                    return new zzas(sb2.toString());
                }
                return this;
            case 7:
                zzh.zzc("search", 1, list);
                if (!list.isEmpty()) {
                    str6 = zzgVar.zza((zzao) list.get(0)).zzc();
                }
                if (Pattern.compile(str6).matcher(this.zza).find()) {
                    return new zzah(Double.valueOf(matcher.start()));
                }
                return new zzah(Double.valueOf(-1.0d));
            case '\b':
                zzh.zzc("slice", 2, list);
                String str16 = this.zza;
                if (!list.isEmpty()) {
                    d = zzgVar.zza((zzao) list.get(0)).zzd().doubleValue();
                } else {
                    d = 0.0d;
                }
                double zzi2 = zzh.zzi(d);
                if (zzi2 < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                    min = Math.max(str16.length() + zzi2, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                } else {
                    min = Math.min(zzi2, str16.length());
                }
                if (list.size() > 1) {
                    length = zzgVar.zza((zzao) list.get(1)).zzd().doubleValue();
                } else {
                    length = str16.length();
                }
                double zzi3 = zzh.zzi(length);
                if (zzi3 < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                    min2 = Math.max(str16.length() + zzi3, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                } else {
                    min2 = Math.min(zzi3, str16.length());
                }
                int i8 = (int) min;
                return new zzas(str16.substring(i8, Math.max(0, ((int) min2) - i8) + i8));
            case '\t':
                zzh.zzc("split", 2, list);
                String str17 = this.zza;
                if (str17.length() == 0) {
                    return new zzae(Arrays.asList(this));
                }
                ArrayList arrayList = new ArrayList();
                if (list.isEmpty()) {
                    arrayList.add(this);
                } else {
                    String zzc3 = zzgVar.zza((zzao) list.get(0)).zzc();
                    if (list.size() > 1) {
                        j = zzh.zzh(zzgVar.zza((zzao) list.get(1)).zzd().doubleValue());
                    } else {
                        j = 2147483647L;
                    }
                    if (j == 0) {
                        return new zzae();
                    }
                    String[] split = str17.split(Pattern.quote(zzc3), ((int) j) + 1);
                    int length3 = split.length;
                    if (zzc3.isEmpty() && length3 > 0) {
                        boolean isEmpty = split[0].isEmpty();
                        i4 = length3 - 1;
                        i5 = isEmpty;
                        if (!split[i4].isEmpty()) {
                            i4 = length3;
                            i5 = isEmpty;
                        }
                    } else {
                        i4 = length3;
                        i5 = 0;
                    }
                    if (length3 > j) {
                        i4--;
                    }
                    while (i5 < i4) {
                        arrayList.add(new zzas(split[i5]));
                        i5++;
                    }
                }
                return new zzae(arrayList);
            case '\n':
                zzh.zzc("substring", 2, list);
                String str18 = this.zza;
                if (!list.isEmpty()) {
                    zzgVar2 = zzgVar;
                    i6 = (int) zzh.zzi(zzgVar2.zza((zzao) list.get(0)).zzd().doubleValue());
                } else {
                    zzgVar2 = zzgVar;
                    i6 = 0;
                }
                if (list.size() > 1) {
                    length2 = (int) zzh.zzi(zzgVar2.zza((zzao) list.get(1)).zzd().doubleValue());
                } else {
                    length2 = str18.length();
                }
                int min3 = Math.min(Math.max(i6, 0), str18.length());
                int min4 = Math.min(Math.max(length2, 0), str18.length());
                return new zzas(str18.substring(Math.min(min3, min4), Math.max(min3, min4)));
            case 11:
                zzh.zza("toLocaleUpperCase", 0, list);
                return new zzas(this.zza.toUpperCase());
            case '\f':
                zzh.zza("toLocaleLowerCase", 0, list);
                return new zzas(this.zza.toLowerCase());
            case '\r':
                zzh.zza("toLowerCase", 0, list);
                return new zzas(this.zza.toLowerCase(Locale.ENGLISH));
            case 14:
                zzh.zza("toString", 0, list);
                return this;
            case 15:
                zzh.zza("toUpperCase", 0, list);
                return new zzas(this.zza.toUpperCase(Locale.ENGLISH));
            case 16:
                zzh.zza("toUpperCase", 0, list);
                return new zzas(this.zza.trim());
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double zzd() {
        String str = this.zza;
        if (!str.isEmpty()) {
            try {
                return Double.valueOf(str);
            } catch (NumberFormatException unused) {
                return Double.valueOf(Double.NaN);
            }
        }
        return Double.valueOf((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean zze() {
        return Boolean.valueOf(!this.zza.isEmpty());
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator zzf() {
        return new zzaq(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao zzt() {
        return new zzas(this.zza);
    }
}
