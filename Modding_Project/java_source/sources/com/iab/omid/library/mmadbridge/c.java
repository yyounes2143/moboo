package com.iab.omid.library.mmadbridge;

import com.iab.omid.library.mmadbridge.utils.g;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes5.dex */
class c {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f8281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Pattern.compile("<(head)( [^>]*)?>", 2);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f8280Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Pattern.compile("<(head)( [^>]*)?/>", 2);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f8279Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Pattern.compile("<(body)( [^>]*?)?>", 2);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f8278Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Pattern.compile("<(body)( [^>]*?)?/>", 2);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f8277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Pattern.compile("<(html)( [^>]*?)?>", 2);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f8276Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Pattern.compile("<(html)( [^>]*?)?/>", 2);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f8275Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Pattern.compile("<!DOCTYPE [^>]*>", 2);

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            int end = matcher.end();
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(start, iArr)) {
                sb.append(str.substring(0, matcher.end() - 2));
                sb.append(">");
                sb.append(str2);
                sb.append("</");
                sb.append(matcher.group(1));
                sb.append(">");
                sb.append(str.substring(matcher.end()));
                return true;
            }
            i = end;
        }
        return false;
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, "<script type=\"text/javascript\">" + str + "</script>");
    }

    public static int[][] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        int i = 0;
        while (i < length) {
            int indexOf = str.indexOf("<!--", i);
            if (indexOf >= 0) {
                int indexOf2 = str.indexOf("-->", indexOf);
                if (indexOf2 >= 0) {
                    arrayList.add(new int[]{indexOf, indexOf2});
                    i = indexOf2 + 3;
                } else {
                    arrayList.add(new int[]{indexOf, length});
                }
            }
            i = length;
        }
        return (int[][]) arrayList.toArray((int[][]) Array.newInstance(Integer.TYPE, 0, 2));
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int start = matcher.start();
            int end = matcher.end();
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(start, iArr)) {
                sb.append(str.substring(0, matcher.end()));
                sb.append(str2);
                sb.append(str.substring(matcher.end()));
                return true;
            }
            i = end;
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int[][] iArr) {
        if (iArr != null) {
            for (int[] iArr2 : iArr) {
                if (i >= iArr2[0] && i <= iArr2[1]) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, "HTML is null or empty");
        int[][] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        StringBuilder sb = new StringBuilder(str.length() + str2.length() + 16);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, sb, f8280Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            return sb.toString();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, sb, f8281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            return sb.toString();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, sb, f8278Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            return sb.toString();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, sb, f8279Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            return sb.toString();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, sb, f8276Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            return sb.toString();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, sb, f8277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            return sb.toString();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, sb, f8275Wwwwwwwwwwwwwwwwwwwwwwwwwwww, str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            return sb.toString();
        }
        return str2 + str;
    }
}
