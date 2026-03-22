package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzali {
    @Nullable
    public final String zza;
    @Nullable
    public final String zzb;
    public final boolean zzc;
    public final long zzd;
    public final long zze;
    @Nullable
    public final zzalo zzf;
    public final String zzg;
    @Nullable
    public final String zzh;
    @Nullable
    public final zzali zzi;
    @Nullable
    private final String[] zzj;
    private final HashMap zzk;
    private final HashMap zzl;
    private List zzm;

    private zzali(@Nullable String str, @Nullable String str2, long j, long j2, @Nullable zzalo zzaloVar, @Nullable String[] strArr, String str3, @Nullable String str4, @Nullable zzali zzaliVar) {
        boolean z;
        this.zza = str;
        this.zzb = str2;
        this.zzh = str4;
        this.zzf = zzaloVar;
        this.zzj = strArr;
        if (str2 != null) {
            z = true;
        } else {
            z = false;
        }
        this.zzc = z;
        this.zzd = j;
        this.zze = j2;
        str3.getClass();
        this.zzg = str3;
        this.zzi = zzaliVar;
        this.zzk = new HashMap();
        this.zzl = new HashMap();
    }

    public static zzali zzb(@Nullable String str, long j, long j2, @Nullable zzalo zzaloVar, @Nullable String[] strArr, String str2, @Nullable String str3, @Nullable zzali zzaliVar) {
        return new zzali(str, null, j, j2, zzaloVar, strArr, str2, str3, zzaliVar);
    }

    public static zzali zzc(String str) {
        return new zzali(null, str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " "), -9223372036854775807L, -9223372036854775807L, null, null, "", null, null);
    }

    private static SpannableStringBuilder zzi(String str, Map map) {
        if (!map.containsKey(str)) {
            zzcs zzcsVar = new zzcs();
            zzcsVar.zzl(new SpannableStringBuilder());
            map.put(str, zzcsVar);
        }
        CharSequence zzq = ((zzcs) map.get(str)).zzq();
        zzq.getClass();
        return (SpannableStringBuilder) zzq;
    }

    private final void zzj(TreeSet treeSet, boolean z) {
        String str = this.zza;
        boolean equals = "p".equals(str);
        boolean equals2 = "div".equals(str);
        if (z || equals || (equals2 && this.zzh != null)) {
            long j = this.zzd;
            if (j != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.zze;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.zzm != null) {
            for (int i = 0; i < this.zzm.size(); i++) {
                zzali zzaliVar = (zzali) this.zzm.get(i);
                boolean z2 = true;
                if (!z && !equals) {
                    z2 = false;
                }
                zzaliVar.zzj(treeSet, z2);
            }
        }
    }

    private final void zzk(long j, String str, List list) {
        String str2;
        String str3 = this.zzg;
        if (true != "".equals(str3)) {
            str = str3;
        }
        if (zzg(j) && "div".equals(this.zza) && (str2 = this.zzh) != null) {
            list.add(new Pair(str, str2));
            return;
        }
        for (int i = 0; i < zza(); i++) {
            zzd(i).zzk(j, str, list);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x023a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzl(long r20, java.util.Map r22, java.util.Map r23, java.lang.String r24, java.util.Map r25) {
        /*
            Method dump skipped, instructions count: 660
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzali.zzl(long, java.util.Map, java.util.Map, java.lang.String, java.util.Map):void");
    }

    private final void zzm(long j, boolean z, String str, Map map) {
        String str2;
        long j2;
        boolean z2;
        HashMap hashMap = this.zzk;
        hashMap.clear();
        HashMap hashMap2 = this.zzl;
        hashMap2.clear();
        String str3 = this.zza;
        if (!"metadata".equals(str3)) {
            String str4 = this.zzg;
            if (true != "".equals(str4)) {
                str2 = str4;
            } else {
                str2 = str;
            }
            if (this.zzc && z) {
                SpannableStringBuilder zzi = zzi(str2, map);
                String str5 = this.zzb;
                str5.getClass();
                zzi.append((CharSequence) str5);
            } else if ("br".equals(str3) && z) {
                zzi(str2, map).append('\n');
            } else if (zzg(j)) {
                for (Map.Entry entry : map.entrySet()) {
                    CharSequence zzq = ((zzcs) entry.getValue()).zzq();
                    zzq.getClass();
                    hashMap.put((String) entry.getKey(), Integer.valueOf(zzq.length()));
                }
                boolean equals = "p".equals(str3);
                for (int i = 0; i < zza(); i++) {
                    zzali zzd = zzd(i);
                    if (z || equals) {
                        j2 = j;
                        z2 = true;
                    } else {
                        j2 = j;
                        z2 = false;
                    }
                    zzd.zzm(j2, z2, str2, map);
                }
                if (equals) {
                    SpannableStringBuilder zzi2 = zzi(str2, map);
                    int length = zzi2.length();
                    do {
                        length--;
                        if (length < 0) {
                            break;
                        }
                    } while (zzi2.charAt(length) == ' ');
                    if (length >= 0 && zzi2.charAt(length) != '\n') {
                        zzi2.append('\n');
                    }
                }
                for (Map.Entry entry2 : map.entrySet()) {
                    CharSequence zzq2 = ((zzcs) entry2.getValue()).zzq();
                    zzq2.getClass();
                    hashMap2.put((String) entry2.getKey(), Integer.valueOf(zzq2.length()));
                }
            }
        }
    }

    public final int zza() {
        List list = this.zzm;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public final zzali zzd(int i) {
        List list = this.zzm;
        if (list != null) {
            return (zzali) list.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public final List zze(long j, Map map, Map map2, Map map3) {
        zzalg[] zzalgVarArr;
        List arrayList = new ArrayList();
        String str = this.zzg;
        zzk(j, str, arrayList);
        TreeMap treeMap = new TreeMap();
        zzm(j, false, str, treeMap);
        zzl(j, map, map2, str, treeMap);
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Pair pair = (Pair) arrayList.get(i);
            String str2 = (String) map3.get(pair.second);
            if (str2 != null) {
                byte[] decode = Base64.decode(str2, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                zzalm zzalmVar = (zzalm) map2.get(pair.first);
                zzalmVar.getClass();
                zzcs zzcsVar = new zzcs();
                zzcsVar.zzc(decodeByteArray);
                zzcsVar.zzh(zzalmVar.zzb);
                zzcsVar.zzi(0);
                zzcsVar.zze(zzalmVar.zzc, 0);
                zzcsVar.zzf(zzalmVar.zze);
                zzcsVar.zzk(zzalmVar.zzf);
                zzcsVar.zzd(zzalmVar.zzg);
                zzcsVar.zzo(zzalmVar.zzj);
                arrayList2.add(zzcsVar.zzp());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            zzalm zzalmVar2 = (zzalm) map2.get(entry.getKey());
            zzalmVar2.getClass();
            zzcs zzcsVar2 = (zzcs) entry.getValue();
            CharSequence zzq = zzcsVar2.zzq();
            zzq.getClass();
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) zzq;
            for (zzalg zzalgVar : (zzalg[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), zzalg.class)) {
                spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(zzalgVar), spannableStringBuilder.getSpanEnd(zzalgVar), (CharSequence) "");
            }
            int i2 = 0;
            while (i2 < spannableStringBuilder.length()) {
                int i3 = i2 + 1;
                if (spannableStringBuilder.charAt(i2) == ' ') {
                    int i4 = i3;
                    while (i4 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i4) == ' ') {
                        i4++;
                    }
                    int i5 = i4 - i3;
                    if (i5 > 0) {
                        spannableStringBuilder.delete(i2, i5 + i2);
                    }
                }
                i2 = i3;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
            }
            int i6 = 0;
            while (i6 < spannableStringBuilder.length() - 1) {
                int i7 = i6 + 1;
                if (spannableStringBuilder.charAt(i6) == '\n' && spannableStringBuilder.charAt(i7) == ' ') {
                    spannableStringBuilder.delete(i7, i6 + 2);
                }
                i6 = i7;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            int i8 = 0;
            while (i8 < spannableStringBuilder.length() - 1) {
                int i9 = i8 + 1;
                if (spannableStringBuilder.charAt(i8) == ' ' && spannableStringBuilder.charAt(i9) == '\n') {
                    spannableStringBuilder.delete(i8, i9);
                }
                i8 = i9;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            zzcsVar2.zze(zzalmVar2.zzc, zzalmVar2.zzd);
            zzcsVar2.zzf(zzalmVar2.zze);
            zzcsVar2.zzh(zzalmVar2.zzb);
            zzcsVar2.zzk(zzalmVar2.zzf);
            zzcsVar2.zzn(zzalmVar2.zzi, zzalmVar2.zzh);
            zzcsVar2.zzo(zzalmVar2.zzj);
            arrayList2.add(zzcsVar2.zzp());
        }
        return arrayList2;
    }

    public final void zzf(zzali zzaliVar) {
        if (this.zzm == null) {
            this.zzm = new ArrayList();
        }
        this.zzm.add(zzaliVar);
    }

    public final boolean zzg(long j) {
        long j2 = this.zzd;
        if (j2 == -9223372036854775807L) {
            if (this.zze == -9223372036854775807L) {
                return true;
            }
            j2 = -9223372036854775807L;
        }
        int i = (j2 > j ? 1 : (j2 == j ? 0 : -1));
        if (i <= 0 && this.zze == -9223372036854775807L) {
            return true;
        }
        if (j2 == -9223372036854775807L && j < this.zze) {
            return true;
        }
        if (i <= 0 && j < this.zze) {
            return true;
        }
        return false;
    }

    public final long[] zzh() {
        TreeSet treeSet = new TreeSet();
        int i = 0;
        zzj(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = ((Long) it.next()).longValue();
            i++;
        }
        return jArr;
    }
}
