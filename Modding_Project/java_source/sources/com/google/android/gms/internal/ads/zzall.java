package com.google.android.gms.internal.ads;

import android.text.Layout;
import androidx.annotation.Nullable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzall implements zzakl {
    private final XmlPullParserFactory zzi;
    private static final Pattern zzc = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern zzd = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern zze = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    static final Pattern zza = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    static final Pattern zzb = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");
    private static final Pattern zzf = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");
    private static final Pattern zzg = Pattern.compile("^(\\d+) (\\d+)$");
    private static final zzalj zzh = new zzalj(30.0f, 1, 1);

    public zzall() {
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.zzi = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c7, code lost:
        if (r13.equals(androidx.media3.exoplayer.upstream.CmcdData.Factory.STREAMING_FORMAT_SS) != false) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long zzc(java.lang.String r13, com.google.android.gms.internal.ads.zzalj r14) throws com.google.android.gms.internal.ads.zzakh {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzall.zzc(java.lang.String, com.google.android.gms.internal.ads.zzalj):long");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Nullable
    private static Layout.Alignment zzd(String str) {
        char c;
        String zza2 = zzfui.zza(str);
        switch (zza2.hashCode()) {
            case -1364013995:
                if (zza2.equals("center")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 100571:
                if (zza2.equals("end")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 3317767:
                if (zza2.equals("left")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 108511772:
                if (zza2.equals("right")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 109757538:
                if (zza2.equals("start")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c != 0 && c != 1) {
            if (c != 2 && c != 3) {
                if (c != 4) {
                    return null;
                }
                return Layout.Alignment.ALIGN_CENTER;
            }
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return Layout.Alignment.ALIGN_NORMAL;
    }

    private static zzalo zze(@Nullable zzalo zzaloVar) {
        if (zzaloVar == null) {
            return new zzalo();
        }
        return zzaloVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v25 */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v28 */
    /* JADX WARN: Type inference failed for: r11v29 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v30 */
    /* JADX WARN: Type inference failed for: r11v31 */
    /* JADX WARN: Type inference failed for: r11v32 */
    /* JADX WARN: Type inference failed for: r11v33 */
    /* JADX WARN: Type inference failed for: r11v34 */
    /* JADX WARN: Type inference failed for: r11v35 */
    /* JADX WARN: Type inference failed for: r11v36 */
    /* JADX WARN: Type inference failed for: r11v37 */
    /* JADX WARN: Type inference failed for: r11v38 */
    /* JADX WARN: Type inference failed for: r11v39 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v40 */
    /* JADX WARN: Type inference failed for: r11v41 */
    /* JADX WARN: Type inference failed for: r11v42 */
    /* JADX WARN: Type inference failed for: r11v43 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v29 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v31 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v34 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v71 */
    /* JADX WARN: Type inference failed for: r7v9 */
    private static zzalo zzf(XmlPullParser xmlPullParser, zzalo zzaloVar) {
        ?? r7;
        Matcher matcher;
        int attributeCount = xmlPullParser.getAttributeCount();
        boolean z = false;
        zzalo zzaloVar2 = zzaloVar;
        int i = 0;
        while (i < attributeCount) {
            String attributeValue = xmlPullParser.getAttributeValue(i);
            String attributeName = xmlPullParser.getAttributeName(i);
            ?? r11 = -1;
            r11 = -1;
            r11 = -1;
            r11 = -1;
            r11 = -1;
            ?? r112 = -1;
            r11 = -1;
            r11 = -1;
            ?? r113 = -1;
            r11 = -1;
            r11 = -1;
            r11 = -1;
            r11 = -1;
            r11 = -1;
            r11 = -1;
            ?? r114 = -1;
            r11 = -1;
            r11 = -1;
            ?? r115 = -1;
            r11 = -1;
            r11 = -1;
            r11 = -1;
            switch (attributeName.hashCode()) {
                case -1550943582:
                    if (attributeName.equals("fontStyle")) {
                        r7 = 6;
                        break;
                    }
                    r7 = -1;
                    break;
                case -1289044182:
                    if (attributeName.equals("extent")) {
                        r7 = 16;
                        break;
                    }
                    r7 = -1;
                    break;
                case -1224696685:
                    if (attributeName.equals("fontFamily")) {
                        r7 = 3;
                        break;
                    }
                    r7 = -1;
                    break;
                case -1065511464:
                    if (attributeName.equals("textAlign")) {
                        r7 = 7;
                        break;
                    }
                    r7 = -1;
                    break;
                case -1008619738:
                    if (attributeName.equals("origin")) {
                        r7 = 15;
                        break;
                    }
                    r7 = -1;
                    break;
                case -879295043:
                    if (attributeName.equals("textDecoration")) {
                        r7 = 12;
                        break;
                    }
                    r7 = -1;
                    break;
                case -734428249:
                    if (attributeName.equals("fontWeight")) {
                        r7 = 5;
                        break;
                    }
                    r7 = -1;
                    break;
                case 3355:
                    if (attributeName.equals("id")) {
                        r7 = z;
                        break;
                    }
                    r7 = -1;
                    break;
                case 3511770:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_RUBY)) {
                        r7 = 10;
                        break;
                    }
                    r7 = -1;
                    break;
                case 94842723:
                    if (attributeName.equals("color")) {
                        r7 = 2;
                        break;
                    }
                    r7 = -1;
                    break;
                case 109403361:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_SHEAR)) {
                        r7 = 14;
                        break;
                    }
                    r7 = -1;
                    break;
                case 110138194:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_TEXT_COMBINE)) {
                        r7 = 9;
                        break;
                    }
                    r7 = -1;
                    break;
                case 365601008:
                    if (attributeName.equals("fontSize")) {
                        r7 = 4;
                        break;
                    }
                    r7 = -1;
                    break;
                case 921125321:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_TEXT_EMPHASIS)) {
                        r7 = 13;
                        break;
                    }
                    r7 = -1;
                    break;
                case 1115953443:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_RUBY_POSITION)) {
                        r7 = 11;
                        break;
                    }
                    r7 = -1;
                    break;
                case 1287124693:
                    if (attributeName.equals("backgroundColor")) {
                        r7 = 1;
                        break;
                    }
                    r7 = -1;
                    break;
                case 1754920356:
                    if (attributeName.equals(TtmlNode.ATTR_EBUTTS_MULTI_ROW_ALIGN)) {
                        r7 = 8;
                        break;
                    }
                    r7 = -1;
                    break;
                default:
                    r7 = -1;
                    break;
            }
            switch (r7) {
                case 0:
                    if (!"style".equals(xmlPullParser.getName())) {
                        break;
                    } else {
                        zzaloVar2 = zze(zzaloVar2);
                        zzaloVar2.zzt(attributeValue);
                        break;
                    }
                case 1:
                    zzaloVar2 = zze(zzaloVar2);
                    try {
                        zzaloVar2.zzm(zzdi.zzb(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused) {
                        zzdx.zzf("TtmlParser", "Failed parsing background value: ".concat(String.valueOf(attributeValue)));
                        break;
                    }
                case 2:
                    zzaloVar2 = zze(zzaloVar2);
                    try {
                        zzaloVar2.zzp(zzdi.zzb(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused2) {
                        zzdx.zzf("TtmlParser", "Failed parsing color value: ".concat(String.valueOf(attributeValue)));
                        break;
                    }
                case 3:
                    zzaloVar2 = zze(zzaloVar2);
                    zzaloVar2.zzq(attributeValue);
                    break;
                case 4:
                    try {
                        zzaloVar2 = zze(zzaloVar2);
                        String str = zzeu.zza;
                        String[] split = attributeValue.split("\\s+", -1);
                        int length = split.length;
                        if (length == 1) {
                            matcher = zze.matcher(attributeValue);
                        } else if (length == 2) {
                            matcher = zze.matcher(split[1]);
                            zzdx.zzf("TtmlParser", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
                        } else {
                            throw new zzakh("Invalid number of entries for fontSize: " + length + ".");
                        }
                        if (matcher.matches()) {
                            String group = matcher.group(3);
                            if (group != null) {
                                int hashCode = group.hashCode();
                                if (hashCode != 37) {
                                    if (hashCode != 3240) {
                                        if (hashCode == 3592 && group.equals("px")) {
                                            r11 = 0;
                                        }
                                    } else if (group.equals("em")) {
                                        r11 = 1;
                                    }
                                } else if (group.equals("%")) {
                                    r11 = 2;
                                }
                                if (r11 != 0) {
                                    if (r11 != 1) {
                                        if (r11 == 2) {
                                            zzaloVar2.zzs(3);
                                        } else {
                                            throw new zzakh("Invalid unit for fontSize: '" + group + "'.");
                                        }
                                    } else {
                                        zzaloVar2.zzs(2);
                                    }
                                } else {
                                    zzaloVar2.zzs(1);
                                }
                                String group2 = matcher.group(1);
                                if (group2 != null) {
                                    zzaloVar2.zzr(Float.parseFloat(group2));
                                    break;
                                } else {
                                    throw null;
                                }
                            } else {
                                throw null;
                            }
                        } else {
                            throw new zzakh("Invalid expression for fontSize: '" + attributeValue + "'.");
                        }
                    } catch (zzakh unused3) {
                        zzdx.zzf("TtmlParser", "Failed parsing fontSize value: ".concat(String.valueOf(attributeValue)));
                        break;
                    }
                case 5:
                    zzaloVar2 = zze(zzaloVar2);
                    zzaloVar2.zzn("bold".equalsIgnoreCase(attributeValue));
                    break;
                case 6:
                    zzaloVar2 = zze(zzaloVar2);
                    zzaloVar2.zzu("italic".equalsIgnoreCase(attributeValue));
                    break;
                case 7:
                    zzaloVar2 = zze(zzaloVar2);
                    zzaloVar2.zzB(zzd(attributeValue));
                    break;
                case 8:
                    zzaloVar2 = zze(zzaloVar2);
                    zzaloVar2.zzw(zzd(attributeValue));
                    break;
                case 9:
                    String zza2 = zzfui.zza(attributeValue);
                    int hashCode2 = zza2.hashCode();
                    if (hashCode2 != 96673) {
                        if (hashCode2 == 3387192 && zza2.equals("none")) {
                            r115 = z;
                        }
                    } else if (zza2.equals(TtmlNode.COMBINE_ALL)) {
                        r115 = 1;
                    }
                    if (r115 != 0) {
                        if (r115 == 1) {
                            zzaloVar2 = zze(zzaloVar2);
                            zzaloVar2.zzC(true);
                            break;
                        } else {
                            break;
                        }
                    } else {
                        zzaloVar2 = zze(zzaloVar2);
                        zzaloVar2.zzC(z);
                        break;
                    }
                case 10:
                    String zza3 = zzfui.zza(attributeValue);
                    switch (zza3.hashCode()) {
                        case -618561360:
                            if (zza3.equals(TtmlNode.RUBY_BASE_CONTAINER)) {
                                r114 = 2;
                                break;
                            }
                            break;
                        case -410956671:
                            if (zza3.equals(TtmlNode.RUBY_CONTAINER)) {
                                r114 = z;
                                break;
                            }
                            break;
                        case -250518009:
                            if (zza3.equals(TtmlNode.RUBY_DELIMITER)) {
                                r114 = 5;
                                break;
                            }
                            break;
                        case -136074796:
                            if (zza3.equals(TtmlNode.RUBY_TEXT_CONTAINER)) {
                                r114 = 4;
                                break;
                            }
                            break;
                        case 3016401:
                            if (zza3.equals(TtmlNode.RUBY_BASE)) {
                                r114 = 1;
                                break;
                            }
                            break;
                        case 3556653:
                            if (zza3.equals("text")) {
                                r114 = 3;
                                break;
                            }
                            break;
                    }
                    if (r114 != 0) {
                        if (r114 != 1 && r114 != 2) {
                            if (r114 != 3 && r114 != 4) {
                                if (r114 == 5) {
                                    zzaloVar2 = zze(zzaloVar2);
                                    zzaloVar2.zzz(4);
                                    break;
                                } else {
                                    break;
                                }
                            } else {
                                zzaloVar2 = zze(zzaloVar2);
                                zzaloVar2.zzz(3);
                                break;
                            }
                        } else {
                            zzaloVar2 = zze(zzaloVar2);
                            zzaloVar2.zzz(2);
                            break;
                        }
                    } else {
                        zzaloVar2 = zze(zzaloVar2);
                        zzaloVar2.zzz(1);
                        break;
                    }
                case 11:
                    String zza4 = zzfui.zza(attributeValue);
                    int hashCode3 = zza4.hashCode();
                    if (hashCode3 != -1392885889) {
                        if (hashCode3 == 92734940 && zza4.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                            r113 = 1;
                        }
                    } else if (zza4.equals(TtmlNode.ANNOTATION_POSITION_BEFORE)) {
                        r113 = z;
                    }
                    if (r113 != 0) {
                        if (r113 == 1) {
                            zzaloVar2 = zze(zzaloVar2);
                            zzaloVar2.zzy(2);
                            break;
                        } else {
                            break;
                        }
                    } else {
                        zzaloVar2 = zze(zzaloVar2);
                        zzaloVar2.zzy(1);
                        break;
                    }
                    break;
                case 12:
                    String zza5 = zzfui.zza(attributeValue);
                    switch (zza5.hashCode()) {
                        case -1461280213:
                            if (zza5.equals("nounderline")) {
                                r112 = 3;
                                break;
                            }
                            break;
                        case -1026963764:
                            if (zza5.equals("underline")) {
                                r112 = 2;
                                break;
                            }
                            break;
                        case 913457136:
                            if (zza5.equals("nolinethrough")) {
                                r112 = 1;
                                break;
                            }
                            break;
                        case 1679736913:
                            if (zza5.equals("linethrough")) {
                                r112 = z;
                                break;
                            }
                            break;
                    }
                    if (r112 != 0) {
                        if (r112 != 1) {
                            if (r112 != 2) {
                                if (r112 == 3) {
                                    zzaloVar2 = zze(zzaloVar2);
                                    zzaloVar2.zzE(z);
                                    break;
                                } else {
                                    break;
                                }
                            } else {
                                zzaloVar2 = zze(zzaloVar2);
                                zzaloVar2.zzE(true);
                                break;
                            }
                        } else {
                            zzaloVar2 = zze(zzaloVar2);
                            zzaloVar2.zzv(z);
                            break;
                        }
                    } else {
                        zzaloVar2 = zze(zzaloVar2);
                        zzaloVar2.zzv(true);
                        break;
                    }
                case 13:
                    zzaloVar2 = zze(zzaloVar2);
                    zzaloVar2.zzD(zzalh.zza(attributeValue));
                    break;
                case 14:
                    zzalo zze2 = zze(zzaloVar2);
                    Matcher matcher2 = zza.matcher(attributeValue);
                    float f = Float.MAX_VALUE;
                    if (!matcher2.matches()) {
                        zzdx.zzf("TtmlParser", "Invalid value for shear: ".concat(String.valueOf(attributeValue)));
                    } else {
                        try {
                            String group3 = matcher2.group(1);
                            if (group3 != null) {
                                f = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(group3)));
                            } else {
                                throw null;
                                break;
                            }
                        } catch (NumberFormatException e) {
                            zzdx.zzg("TtmlParser", "Failed to parse shear: ".concat(String.valueOf(attributeValue)), e);
                        }
                    }
                    zze2.zzA(f);
                    zzaloVar2 = zze2;
                    break;
                case 15:
                    zzaloVar2 = zze(zzaloVar2);
                    zzaloVar2.zzx(attributeValue);
                    break;
                case 16:
                    zzaloVar2 = zze(zzaloVar2);
                    zzaloVar2.zzo(attributeValue);
                    break;
            }
            i++;
            z = false;
        }
        return zzaloVar2;
    }

    private static String[] zzg(String str) {
        String trim = str.trim();
        if (trim.isEmpty()) {
            return new String[0];
        }
        String str2 = zzeu.zza;
        return trim.split("\\s+", -1);
    }

    @Override // com.google.android.gms.internal.ads.zzakl
    public final void zza(byte[] bArr, int i, int i2, zzakk zzakkVar, zzdk zzdkVar) {
        zzakf.zza(zzb(bArr, i, i2), zzakkVar, zzdkVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02bf A[Catch: IOException -> 0x00a3, XmlPullParserException -> 0x00a6, LOOP:1: B:125:0x02bf->B:297:0x05e4, LOOP_START, PHI: r2 r5 r7 r8 r31 r32 r33 r36 r37 
      PHI: (r2v20 com.google.android.gms.internal.ads.zzalj) = (r2v11 com.google.android.gms.internal.ads.zzalj), (r2v57 com.google.android.gms.internal.ads.zzalj) binds: [B:124:0x02bd, B:297:0x05e4] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r5v10 java.lang.String) = (r5v7 java.lang.String), (r5v37 java.lang.String) binds: [B:124:0x02bd, B:297:0x05e4] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r7v9 java.lang.String) = (r7v1 java.lang.String), (r7v31 java.lang.String) binds: [B:124:0x02bd, B:297:0x05e4] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r8v17 java.lang.String) = (r8v1 java.lang.String), (r8v35 java.lang.String) binds: [B:124:0x02bd, B:297:0x05e4] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r31v2 java.util.HashMap) = (r31v1 java.util.HashMap), (r31v3 java.util.HashMap) binds: [B:124:0x02bd, B:297:0x05e4] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r32v9 java.lang.String) = (r32v6 java.lang.String), (r32v23 java.lang.String) binds: [B:124:0x02bd, B:297:0x05e4] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r33v8 java.lang.String) = (r33v5 java.lang.String), (r33v22 java.lang.String) binds: [B:124:0x02bd, B:297:0x05e4] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r36v12 java.lang.String) = (r36v1 java.lang.String), (r36v14 java.lang.String) binds: [B:124:0x02bd, B:297:0x05e4] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r37v5 java.util.HashMap) = (r37v1 java.util.HashMap), (r37v9 java.util.HashMap) binds: [B:124:0x02bd, B:297:0x05e4] A[DONT_GENERATE, DONT_INLINE], TryCatch #18 {IOException -> 0x00a3, XmlPullParserException -> 0x00a6, blocks: (B:3:0x0010, B:5:0x0071, B:7:0x007b, B:10:0x0086, B:13:0x0094, B:15:0x009c, B:22:0x00ac, B:25:0x00b8, B:29:0x00cb, B:31:0x00e6, B:33:0x00f2, B:34:0x00f6, B:36:0x0102, B:39:0x010c, B:72:0x01af, B:90:0x020e, B:93:0x021c, B:95:0x0222, B:97:0x022a, B:99:0x0232, B:101:0x023a, B:103:0x0242, B:105:0x024a, B:107:0x0250, B:109:0x0258, B:111:0x0260, B:113:0x0266, B:115:0x026c, B:117:0x0272, B:119:0x027a, B:122:0x0283, B:423:0x07d5, B:123:0x02b9, B:125:0x02bf, B:127:0x02c8, B:129:0x02d7, B:131:0x02e2, B:133:0x02f6, B:135:0x02fc, B:294:0x05d7, B:138:0x0311, B:140:0x0319, B:142:0x031f, B:144:0x0328, B:146:0x032e, B:148:0x033a, B:153:0x034f, B:292:0x05cd, B:156:0x0367, B:158:0x036f, B:160:0x0375, B:162:0x037d, B:164:0x0383, B:167:0x039a, B:169:0x03a0, B:171:0x03ad, B:199:0x044f, B:201:0x0455, B:203:0x045b, B:205:0x0463, B:207:0x0469, B:210:0x047e, B:212:0x0484, B:214:0x0491, B:240:0x0522, B:242:0x052a, B:262:0x0571, B:264:0x0579, B:290:0x05c0, B:215:0x04a1, B:216:0x04a2, B:217:0x04a3, B:219:0x04b4, B:222:0x04be, B:225:0x04cb, B:227:0x04d1, B:229:0x04d8, B:231:0x04de, B:232:0x04f2, B:236:0x04f9, B:235:0x04f8, B:238:0x0508, B:173:0x03c3, B:174:0x03c4, B:175:0x03c5, B:178:0x03da, B:181:0x03e6, B:184:0x03fb, B:186:0x0401, B:188:0x0408, B:190:0x040e, B:191:0x041f, B:195:0x0426, B:194:0x0425, B:197:0x0430, B:299:0x0608, B:302:0x062b, B:336:0x068c, B:338:0x0694, B:344:0x06a8, B:347:0x06b2, B:351:0x06c0, B:400:0x0755, B:354:0x06c8, B:355:0x06d0, B:363:0x06f0, B:367:0x06fa, B:371:0x0703, B:381:0x0719, B:390:0x0731, B:392:0x073d, B:394:0x0742, B:385:0x0722, B:75:0x01b8, B:77:0x01c4, B:80:0x01cf, B:82:0x01d5, B:84:0x01e0, B:85:0x01ec, B:86:0x01ed, B:87:0x01ee, B:43:0x0128, B:46:0x0138, B:49:0x0143, B:51:0x0149, B:53:0x0150, B:55:0x0156, B:61:0x016c, B:63:0x0173, B:71:0x01a6, B:67:0x0197, B:70:0x01a5, B:404:0x0782, B:406:0x078f, B:409:0x0793, B:411:0x079d, B:413:0x07a7, B:415:0x07ae, B:416:0x07af, B:419:0x07c5, B:422:0x07d3, B:427:0x07f9), top: B:461:0x0010, inners: #4, #7, #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0555  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0564  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0579 A[Catch: IOException -> 0x00a3, XmlPullParserException -> 0x00a6, TRY_LEAVE, TryCatch #18 {IOException -> 0x00a3, XmlPullParserException -> 0x00a6, blocks: (B:3:0x0010, B:5:0x0071, B:7:0x007b, B:10:0x0086, B:13:0x0094, B:15:0x009c, B:22:0x00ac, B:25:0x00b8, B:29:0x00cb, B:31:0x00e6, B:33:0x00f2, B:34:0x00f6, B:36:0x0102, B:39:0x010c, B:72:0x01af, B:90:0x020e, B:93:0x021c, B:95:0x0222, B:97:0x022a, B:99:0x0232, B:101:0x023a, B:103:0x0242, B:105:0x024a, B:107:0x0250, B:109:0x0258, B:111:0x0260, B:113:0x0266, B:115:0x026c, B:117:0x0272, B:119:0x027a, B:122:0x0283, B:423:0x07d5, B:123:0x02b9, B:125:0x02bf, B:127:0x02c8, B:129:0x02d7, B:131:0x02e2, B:133:0x02f6, B:135:0x02fc, B:294:0x05d7, B:138:0x0311, B:140:0x0319, B:142:0x031f, B:144:0x0328, B:146:0x032e, B:148:0x033a, B:153:0x034f, B:292:0x05cd, B:156:0x0367, B:158:0x036f, B:160:0x0375, B:162:0x037d, B:164:0x0383, B:167:0x039a, B:169:0x03a0, B:171:0x03ad, B:199:0x044f, B:201:0x0455, B:203:0x045b, B:205:0x0463, B:207:0x0469, B:210:0x047e, B:212:0x0484, B:214:0x0491, B:240:0x0522, B:242:0x052a, B:262:0x0571, B:264:0x0579, B:290:0x05c0, B:215:0x04a1, B:216:0x04a2, B:217:0x04a3, B:219:0x04b4, B:222:0x04be, B:225:0x04cb, B:227:0x04d1, B:229:0x04d8, B:231:0x04de, B:232:0x04f2, B:236:0x04f9, B:235:0x04f8, B:238:0x0508, B:173:0x03c3, B:174:0x03c4, B:175:0x03c5, B:178:0x03da, B:181:0x03e6, B:184:0x03fb, B:186:0x0401, B:188:0x0408, B:190:0x040e, B:191:0x041f, B:195:0x0426, B:194:0x0425, B:197:0x0430, B:299:0x0608, B:302:0x062b, B:336:0x068c, B:338:0x0694, B:344:0x06a8, B:347:0x06b2, B:351:0x06c0, B:400:0x0755, B:354:0x06c8, B:355:0x06d0, B:363:0x06f0, B:367:0x06fa, B:371:0x0703, B:381:0x0719, B:390:0x0731, B:392:0x073d, B:394:0x0742, B:385:0x0722, B:75:0x01b8, B:77:0x01c4, B:80:0x01cf, B:82:0x01d5, B:84:0x01e0, B:85:0x01ec, B:86:0x01ed, B:87:0x01ee, B:43:0x0128, B:46:0x0138, B:49:0x0143, B:51:0x0149, B:53:0x0150, B:55:0x0156, B:61:0x016c, B:63:0x0173, B:71:0x01a6, B:67:0x0197, B:70:0x01a5, B:404:0x0782, B:406:0x078f, B:409:0x0793, B:411:0x079d, B:413:0x07a7, B:415:0x07ae, B:416:0x07af, B:419:0x07c5, B:422:0x07d3, B:427:0x07f9), top: B:461:0x0010, inners: #4, #7, #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x05b2  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x05cd A[Catch: IOException -> 0x00a3, XmlPullParserException -> 0x00a6, TryCatch #18 {IOException -> 0x00a3, XmlPullParserException -> 0x00a6, blocks: (B:3:0x0010, B:5:0x0071, B:7:0x007b, B:10:0x0086, B:13:0x0094, B:15:0x009c, B:22:0x00ac, B:25:0x00b8, B:29:0x00cb, B:31:0x00e6, B:33:0x00f2, B:34:0x00f6, B:36:0x0102, B:39:0x010c, B:72:0x01af, B:90:0x020e, B:93:0x021c, B:95:0x0222, B:97:0x022a, B:99:0x0232, B:101:0x023a, B:103:0x0242, B:105:0x024a, B:107:0x0250, B:109:0x0258, B:111:0x0260, B:113:0x0266, B:115:0x026c, B:117:0x0272, B:119:0x027a, B:122:0x0283, B:423:0x07d5, B:123:0x02b9, B:125:0x02bf, B:127:0x02c8, B:129:0x02d7, B:131:0x02e2, B:133:0x02f6, B:135:0x02fc, B:294:0x05d7, B:138:0x0311, B:140:0x0319, B:142:0x031f, B:144:0x0328, B:146:0x032e, B:148:0x033a, B:153:0x034f, B:292:0x05cd, B:156:0x0367, B:158:0x036f, B:160:0x0375, B:162:0x037d, B:164:0x0383, B:167:0x039a, B:169:0x03a0, B:171:0x03ad, B:199:0x044f, B:201:0x0455, B:203:0x045b, B:205:0x0463, B:207:0x0469, B:210:0x047e, B:212:0x0484, B:214:0x0491, B:240:0x0522, B:242:0x052a, B:262:0x0571, B:264:0x0579, B:290:0x05c0, B:215:0x04a1, B:216:0x04a2, B:217:0x04a3, B:219:0x04b4, B:222:0x04be, B:225:0x04cb, B:227:0x04d1, B:229:0x04d8, B:231:0x04de, B:232:0x04f2, B:236:0x04f9, B:235:0x04f8, B:238:0x0508, B:173:0x03c3, B:174:0x03c4, B:175:0x03c5, B:178:0x03da, B:181:0x03e6, B:184:0x03fb, B:186:0x0401, B:188:0x0408, B:190:0x040e, B:191:0x041f, B:195:0x0426, B:194:0x0425, B:197:0x0430, B:299:0x0608, B:302:0x062b, B:336:0x068c, B:338:0x0694, B:344:0x06a8, B:347:0x06b2, B:351:0x06c0, B:400:0x0755, B:354:0x06c8, B:355:0x06d0, B:363:0x06f0, B:367:0x06fa, B:371:0x0703, B:381:0x0719, B:390:0x0731, B:392:0x073d, B:394:0x0742, B:385:0x0722, B:75:0x01b8, B:77:0x01c4, B:80:0x01cf, B:82:0x01d5, B:84:0x01e0, B:85:0x01ec, B:86:0x01ed, B:87:0x01ee, B:43:0x0128, B:46:0x0138, B:49:0x0143, B:51:0x0149, B:53:0x0150, B:55:0x0156, B:61:0x016c, B:63:0x0173, B:71:0x01a6, B:67:0x0197, B:70:0x01a5, B:404:0x0782, B:406:0x078f, B:409:0x0793, B:411:0x079d, B:413:0x07a7, B:415:0x07ae, B:416:0x07af, B:419:0x07c5, B:422:0x07d3, B:427:0x07f9), top: B:461:0x0010, inners: #4, #7, #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:293:0x05d5  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x05e4 A[LOOP:1: B:125:0x02bf->B:297:0x05e4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:298:0x05f8  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x0742 A[Catch: IOException -> 0x00a3, XmlPullParserException -> 0x00a6, zzakh -> 0x0746, TRY_LEAVE, TryCatch #0 {zzakh -> 0x0746, blocks: (B:392:0x073d, B:394:0x0742), top: B:435:0x073d }] */
    /* JADX WARN: Removed duplicated region for block: B:483:0x05dd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01b8 A[Catch: IOException -> 0x00a3, XmlPullParserException -> 0x00a6, TryCatch #18 {IOException -> 0x00a3, XmlPullParserException -> 0x00a6, blocks: (B:3:0x0010, B:5:0x0071, B:7:0x007b, B:10:0x0086, B:13:0x0094, B:15:0x009c, B:22:0x00ac, B:25:0x00b8, B:29:0x00cb, B:31:0x00e6, B:33:0x00f2, B:34:0x00f6, B:36:0x0102, B:39:0x010c, B:72:0x01af, B:90:0x020e, B:93:0x021c, B:95:0x0222, B:97:0x022a, B:99:0x0232, B:101:0x023a, B:103:0x0242, B:105:0x024a, B:107:0x0250, B:109:0x0258, B:111:0x0260, B:113:0x0266, B:115:0x026c, B:117:0x0272, B:119:0x027a, B:122:0x0283, B:423:0x07d5, B:123:0x02b9, B:125:0x02bf, B:127:0x02c8, B:129:0x02d7, B:131:0x02e2, B:133:0x02f6, B:135:0x02fc, B:294:0x05d7, B:138:0x0311, B:140:0x0319, B:142:0x031f, B:144:0x0328, B:146:0x032e, B:148:0x033a, B:153:0x034f, B:292:0x05cd, B:156:0x0367, B:158:0x036f, B:160:0x0375, B:162:0x037d, B:164:0x0383, B:167:0x039a, B:169:0x03a0, B:171:0x03ad, B:199:0x044f, B:201:0x0455, B:203:0x045b, B:205:0x0463, B:207:0x0469, B:210:0x047e, B:212:0x0484, B:214:0x0491, B:240:0x0522, B:242:0x052a, B:262:0x0571, B:264:0x0579, B:290:0x05c0, B:215:0x04a1, B:216:0x04a2, B:217:0x04a3, B:219:0x04b4, B:222:0x04be, B:225:0x04cb, B:227:0x04d1, B:229:0x04d8, B:231:0x04de, B:232:0x04f2, B:236:0x04f9, B:235:0x04f8, B:238:0x0508, B:173:0x03c3, B:174:0x03c4, B:175:0x03c5, B:178:0x03da, B:181:0x03e6, B:184:0x03fb, B:186:0x0401, B:188:0x0408, B:190:0x040e, B:191:0x041f, B:195:0x0426, B:194:0x0425, B:197:0x0430, B:299:0x0608, B:302:0x062b, B:336:0x068c, B:338:0x0694, B:344:0x06a8, B:347:0x06b2, B:351:0x06c0, B:400:0x0755, B:354:0x06c8, B:355:0x06d0, B:363:0x06f0, B:367:0x06fa, B:371:0x0703, B:381:0x0719, B:390:0x0731, B:392:0x073d, B:394:0x0742, B:385:0x0722, B:75:0x01b8, B:77:0x01c4, B:80:0x01cf, B:82:0x01d5, B:84:0x01e0, B:85:0x01ec, B:86:0x01ed, B:87:0x01ee, B:43:0x0128, B:46:0x0138, B:49:0x0143, B:51:0x0149, B:53:0x0150, B:55:0x0156, B:61:0x016c, B:63:0x0173, B:71:0x01a6, B:67:0x0197, B:70:0x01a5, B:404:0x0782, B:406:0x078f, B:409:0x0793, B:411:0x079d, B:413:0x07a7, B:415:0x07ae, B:416:0x07af, B:419:0x07c5, B:422:0x07d3, B:427:0x07f9), top: B:461:0x0010, inners: #4, #7, #14 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzakg zzb(byte[] r49, int r50, int r51) {
        /*
            Method dump skipped, instructions count: 2084
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzall.zzb(byte[], int, int):com.google.android.gms.internal.ads.zzakg");
    }
}
