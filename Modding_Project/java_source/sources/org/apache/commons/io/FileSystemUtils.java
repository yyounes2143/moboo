package org.apache.commons.io;

import java.io.IOException;
import java.util.Locale;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes7.dex */
public class FileSystemUtils {
    private static final FileSystemUtils INSTANCE = new FileSystemUtils();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f13306Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final int f13307Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    static {
        int i;
        String property;
        String str = "df";
        try {
            property = System.getProperty("os.name");
        } catch (Exception unused) {
            i = -1;
        }
        if (property != null) {
            String lowerCase = property.toLowerCase(Locale.ENGLISH);
            if (lowerCase.contains("windows")) {
                i = 1;
            } else {
                if (!lowerCase.contains("linux") && !lowerCase.contains("mpe/ix") && !lowerCase.contains("freebsd") && !lowerCase.contains("openbsd") && !lowerCase.contains("irix") && !lowerCase.contains("digital unix") && !lowerCase.contains("unix") && !lowerCase.contains("mac os x")) {
                    if (!lowerCase.contains("sun os") && !lowerCase.contains("sunos") && !lowerCase.contains("solaris")) {
                        if (!lowerCase.contains("hp-ux") && !lowerCase.contains("aix")) {
                            i = 0;
                        }
                        i = 3;
                    }
                    str = "/usr/xpg4/bin/df";
                    i = 3;
                }
                i = 2;
            }
            f13307Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            f13306Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            return;
        }
        throw new IOException("os.name not found");
    }
}
