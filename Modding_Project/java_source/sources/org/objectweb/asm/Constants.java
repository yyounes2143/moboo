package org.objectweb.asm;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
final class Constants {
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (!str.startsWith("org/objectweb/asm/")) {
            return false;
        }
        if (!str.contains("Test$")) {
            if (!Pattern.matches("org/objectweb/asm/util/Trace(Annotation|Class|Field|Method|Module|RecordComponent|Signature)Visitor(\\$.*)?", str)) {
                if (!Pattern.matches("org/objectweb/asm/util/Check(Annotation|Class|Field|Method|Module|RecordComponent|Signature)Adapter(\\$.*)?", str)) {
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) {
        if (inputStream != null) {
            try {
                DataInputStream dataInputStream = new DataInputStream(inputStream);
                dataInputStream.readInt();
                int readUnsignedShort = dataInputStream.readUnsignedShort();
                dataInputStream.close();
                if (readUnsignedShort == 65535) {
                    return;
                }
                throw new IllegalStateException("ASM9_EXPERIMENTAL can only be used by classes compiled with --enable-preview");
            } catch (IOException e) {
                throw new IllegalStateException("I/O error, can't check class version", e);
            }
        }
        throw new IllegalStateException("Bytecode not available, can't check class version");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        Class<?> cls = obj.getClass();
        String replace = cls.getName().replace('.', '/');
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(replace)) {
            ClassLoader classLoader = cls.getClassLoader();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(classLoader.getResourceAsStream(replace + ".class"));
        }
    }
}
