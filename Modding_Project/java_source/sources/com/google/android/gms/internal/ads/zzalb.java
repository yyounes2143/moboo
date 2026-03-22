package com.google.android.gms.internal.ads;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzalb implements zzakl {
    private static final Pattern zza = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");
    private final boolean zzb;
    @Nullable
    private final zzala zzc;
    private final zzek zzd;
    private Map zze;
    private float zzf;
    private float zzg;

    public zzalb() {
        this(null);
    }

    private static float zzb(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return -3.4028235E38f;
                }
                return 0.95f;
            }
            return 0.5f;
        }
        return 0.05f;
    }

    private static int zzc(long j, List list, List list2) {
        int i;
        ArrayList arrayList;
        int size = list.size();
        while (true) {
            size--;
            if (size >= 0) {
                if (((Long) list.get(size)).longValue() == j) {
                    return size;
                }
                if (((Long) list.get(size)).longValue() < j) {
                    i = size + 1;
                    break;
                }
            } else {
                i = 0;
                break;
            }
        }
        list.add(i, Long.valueOf(j));
        if (i == 0) {
            arrayList = new ArrayList();
        } else {
            arrayList = new ArrayList((Collection) list2.get(i - 1));
        }
        list2.add(i, arrayList);
        return i;
    }

    private static long zzd(String str) {
        Matcher matcher = zza.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        String group = matcher.group(1);
        String str2 = zzeu.zza;
        return (Long.parseLong(group) * 3600000000L) + (Long.parseLong(matcher.group(2)) * 60000000) + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(4)) * 10000);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0050, code lost:
        if (r3.equals("playresx") != false) goto L72;
     */
    /* JADX WARN: Removed duplicated region for block: B:87:0x002c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0010 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zze(com.google.android.gms.internal.ads.zzek r7, java.nio.charset.Charset r8) {
        /*
            r6 = this;
        L0:
            java.lang.String r0 = r7.zzz(r8)
            if (r0 == 0) goto Ldd
            java.lang.String r1 = "[Script Info]"
            boolean r1 = r1.equalsIgnoreCase(r0)
            r2 = 91
            if (r1 == 0) goto L73
        L10:
            java.lang.String r0 = r7.zzz(r8)
            if (r0 == 0) goto L0
            int r1 = r7.zza()
            if (r1 == 0) goto L22
            int r1 = r7.zze(r8)
            if (r1 == r2) goto L0
        L22:
            java.lang.String r1 = ":"
            java.lang.String[] r0 = r0.split(r1)
            int r1 = r0.length
            r3 = 2
            if (r1 != r3) goto L10
            r1 = 0
            r3 = r0[r1]
            java.lang.String r3 = r3.trim()
            java.lang.String r3 = com.google.android.gms.internal.ads.zzfui.zza(r3)
            int r4 = r3.hashCode()
            r5 = 1
            switch(r4) {
                case 1879649548: goto L4a;
                case 1879649549: goto L40;
                default: goto L3f;
            }
        L3f:
            goto L53
        L40:
            java.lang.String r1 = "playresy"
            boolean r1 = r3.equals(r1)
            if (r1 == 0) goto L53
            r1 = r5
            goto L54
        L4a:
            java.lang.String r4 = "playresx"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L53
            goto L54
        L53:
            r1 = -1
        L54:
            if (r1 == 0) goto L66
            if (r1 == r5) goto L59
            goto L10
        L59:
            r0 = r0[r5]     // Catch: java.lang.NumberFormatException -> L10
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L10
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L10
            r6.zzg = r0     // Catch: java.lang.NumberFormatException -> L10
            goto L10
        L66:
            r0 = r0[r5]     // Catch: java.lang.NumberFormatException -> L10
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L10
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L10
            r6.zzf = r0     // Catch: java.lang.NumberFormatException -> L10
            goto L10
        L73:
            java.lang.String r1 = "[V4+ Styles]"
            boolean r1 = r1.equalsIgnoreCase(r0)
            java.lang.String r3 = "SsaParser"
            if (r1 == 0) goto Lc6
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            r1 = 0
        L83:
            java.lang.String r4 = r7.zzz(r8)
            if (r4 == 0) goto Lc2
            int r5 = r7.zza()
            if (r5 == 0) goto L95
            int r5 = r7.zze(r8)
            if (r5 == r2) goto Lc2
        L95:
            java.lang.String r5 = "Format:"
            boolean r5 = r4.startsWith(r5)
            if (r5 == 0) goto La2
            com.google.android.gms.internal.ads.zzalc r1 = com.google.android.gms.internal.ads.zzalc.zza(r4)
            goto L83
        La2:
            java.lang.String r5 = "Style:"
            boolean r5 = r4.startsWith(r5)
            if (r5 == 0) goto L83
            if (r1 != 0) goto Lb6
            java.lang.String r5 = "Skipping 'Style:' line before 'Format:' line: "
            java.lang.String r4 = r5.concat(r4)
            com.google.android.gms.internal.ads.zzdx.zzf(r3, r4)
            goto L83
        Lb6:
            com.google.android.gms.internal.ads.zzale r4 = com.google.android.gms.internal.ads.zzale.zzb(r4, r1)
            if (r4 == 0) goto L83
            java.lang.String r5 = r4.zza
            r0.put(r5, r4)
            goto L83
        Lc2:
            r6.zze = r0
            goto L0
        Lc6:
            java.lang.String r1 = "[V4 Styles]"
            boolean r1 = r1.equalsIgnoreCase(r0)
            if (r1 == 0) goto Ld5
            java.lang.String r0 = "[V4 Styles] are not supported"
            com.google.android.gms.internal.ads.zzdx.zze(r3, r0)
            goto L0
        Ld5:
            java.lang.String r1 = "[Events]"
            boolean r0 = r1.equalsIgnoreCase(r0)
            if (r0 == 0) goto L0
        Ldd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalb.zze(com.google.android.gms.internal.ads.zzek, java.nio.charset.Charset):void");
    }

    @Override // com.google.android.gms.internal.ads.zzakl
    public final void zza(byte[] bArr, int i, int i2, zzakk zzakkVar, zzdk zzdkVar) {
        zzala zzalaVar;
        Charset charset;
        zzala zzalaVar2;
        zzek zzekVar;
        float f;
        int i3;
        Layout.Alignment alignment;
        int i4;
        int i5;
        int i6;
        Integer num;
        int i7;
        zzalb zzalbVar = this;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        zzek zzekVar2 = zzalbVar.zzd;
        zzekVar2.zzJ(bArr, i + i2);
        zzekVar2.zzL(i);
        Charset zzC = zzekVar2.zzC();
        if (zzC == null) {
            zzC = StandardCharsets.UTF_8;
        }
        if (!zzalbVar.zzb) {
            zzalbVar.zze(zzekVar2, zzC);
            zzalaVar = null;
        } else {
            zzalaVar = zzalbVar.zzc;
        }
        while (true) {
            String zzz = zzekVar2.zzz(zzC);
            if (zzz != null) {
                if (zzz.startsWith("Format:")) {
                    zzalaVar = zzala.zza(zzz);
                } else {
                    if (zzz.startsWith("Dialogue:")) {
                        if (zzalaVar == null) {
                            zzdx.zzf("SsaParser", "Skipping dialogue line before complete format: ".concat(zzz));
                        } else {
                            zzdc.zzd(zzz.startsWith("Dialogue:"));
                            String substring = zzz.substring(9);
                            int i8 = zzalaVar.zze;
                            String[] split = substring.split(",", i8);
                            if (split.length != i8) {
                                zzdx.zzf("SsaParser", "Skipping dialogue line with fewer columns than format: ".concat(zzz));
                            } else {
                                long zzd = zzd(split[zzalaVar.zza]);
                                if (zzd == -9223372036854775807L) {
                                    zzdx.zzf("SsaParser", "Skipping invalid timing: ".concat(zzz));
                                } else {
                                    long zzd2 = zzd(split[zzalaVar.zzb]);
                                    if (zzd2 != -9223372036854775807L && zzd2 > zzd) {
                                        Map map = zzalbVar.zze;
                                        zzale zzaleVar = (map == null || (i7 = zzalaVar.zzc) == -1) ? null : (zzale) map.get(split[i7].trim());
                                        String str = split[zzalaVar.zzd];
                                        zzald zza2 = zzald.zza(str);
                                        String replace = zzald.zzb(str).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " ");
                                        float f2 = zzalbVar.zzf;
                                        float f3 = zzalbVar.zzg;
                                        SpannableString spannableString = new SpannableString(replace);
                                        zzcs zzcsVar = new zzcs();
                                        zzcsVar.zzl(spannableString);
                                        charset = zzC;
                                        if (zzaleVar != null) {
                                            Integer num2 = zzaleVar.zzc;
                                            if (num2 != null) {
                                                zzalaVar2 = zzalaVar;
                                                zzekVar = zzekVar2;
                                                f = f2;
                                                spannableString.setSpan(new ForegroundColorSpan(num2.intValue()), 0, spannableString.length(), 33);
                                            } else {
                                                zzalaVar2 = zzalaVar;
                                                zzekVar = zzekVar2;
                                                f = f2;
                                            }
                                            if (zzaleVar.zzj == 3 && (num = zzaleVar.zzd) != null) {
                                                spannableString.setSpan(new BackgroundColorSpan(num.intValue()), 0, spannableString.length(), 33);
                                            }
                                            float f4 = zzaleVar.zze;
                                            if (f4 != -3.4028235E38f && f3 != -3.4028235E38f) {
                                                zzcsVar.zzn(f4 / f3, 1);
                                            }
                                            if (!zzaleVar.zzf) {
                                                i5 = 0;
                                                i6 = 33;
                                                if (zzaleVar.zzg) {
                                                    spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
                                                }
                                            } else if (zzaleVar.zzg) {
                                                i5 = 0;
                                                i6 = 33;
                                                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
                                            } else {
                                                i5 = 0;
                                                i6 = 33;
                                                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                                            }
                                            if (zzaleVar.zzh) {
                                                spannableString.setSpan(new UnderlineSpan(), i5, spannableString.length(), i6);
                                            }
                                            if (zzaleVar.zzi) {
                                                spannableString.setSpan(new StrikethroughSpan(), i5, spannableString.length(), i6);
                                            }
                                        } else {
                                            zzalaVar2 = zzalaVar;
                                            zzekVar = zzekVar2;
                                            f = f2;
                                        }
                                        int i9 = zza2.zza;
                                        if (i9 != -1) {
                                            i3 = i9;
                                        } else {
                                            i3 = zzaleVar != null ? zzaleVar.zzb : -1;
                                        }
                                        switch (i3) {
                                            case 0:
                                            default:
                                                zzdx.zzf("SsaParser", "Unknown alignment: " + i3);
                                            case -1:
                                                alignment = null;
                                                break;
                                            case 1:
                                            case 4:
                                            case 7:
                                                alignment = Layout.Alignment.ALIGN_NORMAL;
                                                break;
                                            case 2:
                                            case 5:
                                            case 8:
                                                alignment = Layout.Alignment.ALIGN_CENTER;
                                                break;
                                            case 3:
                                            case 6:
                                            case 9:
                                                alignment = Layout.Alignment.ALIGN_OPPOSITE;
                                                break;
                                        }
                                        zzcsVar.zzm(alignment);
                                        int i10 = Integer.MIN_VALUE;
                                        switch (i3) {
                                            case 0:
                                            default:
                                                zzdx.zzf("SsaParser", "Unknown alignment: " + i3);
                                            case -1:
                                                i4 = Integer.MIN_VALUE;
                                                break;
                                            case 1:
                                            case 4:
                                            case 7:
                                                i4 = 0;
                                                break;
                                            case 2:
                                            case 5:
                                            case 8:
                                                i4 = 1;
                                                break;
                                            case 3:
                                            case 6:
                                            case 9:
                                                i4 = 2;
                                                break;
                                        }
                                        zzcsVar.zzi(i4);
                                        switch (i3) {
                                            case -1:
                                                break;
                                            case 0:
                                            default:
                                                zzdx.zzf("SsaParser", "Unknown alignment: " + i3);
                                                break;
                                            case 1:
                                            case 2:
                                            case 3:
                                                i10 = 2;
                                                break;
                                            case 4:
                                            case 5:
                                            case 6:
                                                i10 = 1;
                                                break;
                                            case 7:
                                            case 8:
                                            case 9:
                                                i10 = 0;
                                                break;
                                        }
                                        zzcsVar.zzf(i10);
                                        PointF pointF = zza2.zzb;
                                        if (pointF != null && f3 != -3.4028235E38f && f != -3.4028235E38f) {
                                            zzcsVar.zzh(pointF.x / f);
                                            zzcsVar.zze(pointF.y / f3, 0);
                                        } else {
                                            zzcsVar.zzh(zzb(zzcsVar.zzb()));
                                            zzcsVar.zze(zzb(zzcsVar.zza()), 0);
                                        }
                                        zzcu zzp = zzcsVar.zzp();
                                        int zzc = zzc(zzd2, arrayList2, arrayList);
                                        for (int zzc2 = zzc(zzd, arrayList2, arrayList); zzc2 < zzc; zzc2++) {
                                            ((List) arrayList.get(zzc2)).add(zzp);
                                        }
                                    } else {
                                        charset = zzC;
                                        zzalaVar2 = zzalaVar;
                                        zzekVar = zzekVar2;
                                        zzdx.zzf("SsaParser", "Skipping invalid timing: ".concat(zzz));
                                    }
                                    zzalbVar = this;
                                    zzC = charset;
                                    zzekVar2 = zzekVar;
                                    zzalaVar = zzalaVar2;
                                }
                            }
                        }
                    }
                    charset = zzC;
                    zzalaVar2 = zzalaVar;
                    zzekVar = zzekVar2;
                    zzalbVar = this;
                    zzC = charset;
                    zzekVar2 = zzekVar;
                    zzalaVar = zzalaVar2;
                }
            } else {
                int i11 = 0;
                while (i11 < arrayList.size()) {
                    List list = (List) arrayList.get(i11);
                    if (list.isEmpty()) {
                        if (i11 != 0) {
                            i11++;
                        } else {
                            i11 = 0;
                        }
                    }
                    if (i11 != arrayList.size() - 1) {
                        long longValue = ((Long) arrayList2.get(i11)).longValue();
                        zzdkVar.zza(new zzakd(list, longValue, ((Long) arrayList2.get(i11 + 1)).longValue() - longValue));
                        i11++;
                    } else {
                        throw new IllegalStateException();
                    }
                }
                return;
            }
        }
    }

    public zzalb(@Nullable List list) {
        this.zzf = -3.4028235E38f;
        this.zzg = -3.4028235E38f;
        this.zzd = new zzek();
        if (list == null || list.isEmpty()) {
            this.zzb = false;
            this.zzc = null;
            return;
        }
        this.zzb = true;
        String zzB = zzeu.zzB((byte[]) list.get(0));
        zzdc.zzd(zzB.startsWith("Format:"));
        zzala zza2 = zzala.zza(zzB);
        zza2.getClass();
        this.zzc = zza2;
        zze(new zzek((byte[]) list.get(1)), StandardCharsets.UTF_8);
    }
}
