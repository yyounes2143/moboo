package org.apache.commons.io;

import androidx.webkit.ProxyConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.Stack;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class FilenameUtils {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final char f13317Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f13319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Character.toString('.');

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final char f13318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = File.separatorChar;

    static {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            f13317Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = '/';
        } else {
            f13317Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = AbstractJsonLexerKt.STRING_ESC;
        }
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, IOCase iOCase) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        if (iOCase == null) {
            iOCase = IOCase.SENSITIVE;
        }
        String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
        Stack stack = new Stack();
        boolean z = false;
        int i = 0;
        int i2 = 0;
        do {
            if (stack.size() > 0) {
                int[] iArr = (int[]) stack.pop();
                i2 = iArr[0];
                i = iArr[1];
                z = true;
            }
            while (i2 < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i2].equals("?")) {
                    i++;
                    if (i > str.length()) {
                        break;
                    }
                    z = false;
                    i2++;
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i2].equals(ProxyConfig.MATCH_ALL_SCHEMES)) {
                    if (i2 == Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length - 1) {
                        i = str.length();
                    }
                    z = true;
                    i2++;
                } else {
                    if (z) {
                        i = iOCase.checkIndexOf(str, i, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i2]);
                        if (i == -1) {
                            break;
                        }
                        int checkIndexOf = iOCase.checkIndexOf(str, i + 1, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i2]);
                        if (checkIndexOf >= 0) {
                            stack.push(new int[]{i2, checkIndexOf});
                        }
                        i += Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i2].length();
                        z = false;
                    } else {
                        if (!iOCase.checkRegionMatches(str, i, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i2])) {
                            break;
                        }
                        i += Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i2].length();
                        z = false;
                    }
                    i2++;
                }
            }
            if (i2 == Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length && i == str.length()) {
                return true;
            }
        } while (stack.size() > 0);
        return false;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2, IOCase.SENSITIVE);
    }

    public static String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (str.indexOf(63) == -1 && str.indexOf(42) == -1) {
            return new String[]{str};
        }
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        int length = charArray.length;
        int i = 0;
        char c = 0;
        while (i < length) {
            char c2 = charArray[i];
            if (c2 != '?' && c2 != '*') {
                sb.append(c2);
            } else {
                if (sb.length() != 0) {
                    arrayList.add(sb.toString());
                    sb.setLength(0);
                }
                if (c2 == '?') {
                    arrayList.add("?");
                } else if (c != '*') {
                    arrayList.add(ProxyConfig.MATCH_ALL_SCHEMES);
                }
            }
            i++;
            c = c2;
        }
        if (sb.length() != 0) {
            arrayList.add(sb.toString());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (f13318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == '\\') {
            return true;
        }
        return false;
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (str == null) {
            return -1;
        }
        return Math.max(str.lastIndexOf(47), str.lastIndexOf(92));
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        int lastIndexOf;
        if (str == null || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str) > (lastIndexOf = str.lastIndexOf(46))) {
            return -1;
        }
        return lastIndexOf;
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (str == null) {
            return null;
        }
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == -1) {
            return "";
        }
        return str.substring(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + 1);
    }
}
