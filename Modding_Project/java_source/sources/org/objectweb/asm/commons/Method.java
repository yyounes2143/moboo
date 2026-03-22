package org.objectweb.asm.commons;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import java.util.HashMap;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class Method {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<String, String> f14123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f14124Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f14125Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("void", ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
        hashMap.put("byte", "B");
        hashMap.put("char", "C");
        hashMap.put("double", "D");
        hashMap.put(TypedValues.Custom.S_FLOAT, "F");
        hashMap.put("int", "I");
        hashMap.put("long", "J");
        hashMap.put("short", ExifInterface.LATITUDE_SOUTH);
        hashMap.put(TypedValues.Custom.S_BOOLEAN, "Z");
        f14123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = hashMap;
    }

    public Method(String str, String str2) {
        this.f14125Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f14124Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
    }

    public static Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, boolean z) {
        int indexOf;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        int indexOf2 = str.indexOf(32);
        int indexOf3 = str.indexOf(40, indexOf2);
        int i = indexOf3 + 1;
        int indexOf4 = str.indexOf(41, i);
        if (indexOf2 != -1 && i != 0 && indexOf4 != -1) {
            String substring = str.substring(0, indexOf2);
            String trim = str.substring(indexOf2 + 1, indexOf3).trim();
            StringBuilder sb = new StringBuilder();
            sb.append('(');
            do {
                indexOf = str.indexOf(44, i);
                if (indexOf == -1) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str.substring(i, indexOf4).trim(), z);
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str.substring(i, indexOf).trim(), z);
                    i = indexOf + 1;
                }
                sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } while (indexOf != -1);
            sb.append(')');
            sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(substring, z));
            return new Method(trim, sb.toString());
        }
        throw new IllegalArgumentException();
    }

    public static Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, false);
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, boolean z) {
        if ("".equals(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            i = str.indexOf("[]", i) + 1;
            if (i <= 0) {
                break;
            }
            sb.append(AbstractJsonLexerKt.BEGIN_LIST);
        }
        String substring = str.substring(0, str.length() - (sb.length() * 2));
        String str2 = f14123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(substring);
        if (str2 != null) {
            sb.append(str2);
        } else {
            sb.append('L');
            if (substring.indexOf(46) < 0) {
                if (!z) {
                    sb.append("java/lang/");
                }
                sb.append(substring);
            } else {
                sb.append(substring.replace('.', '/'));
            }
            sb.append(';');
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Method)) {
            return false;
        }
        Method method = (Method) obj;
        if (!this.f14125Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(method.f14125Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) || !this.f14124Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(method.f14124Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.f14125Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() ^ this.f14124Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    public String toString() {
        return this.f14125Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + this.f14124Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
