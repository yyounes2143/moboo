package com.didi.drouter.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Constructor;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class ReflectUtil {
    public static Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<?> cls) {
        if (cls == Byte.class) {
            return Byte.TYPE;
        }
        if (cls == Short.class) {
            return Short.TYPE;
        }
        if (cls == Integer.class) {
            return Integer.TYPE;
        }
        if (cls == Long.class) {
            return Long.TYPE;
        }
        if (cls == Float.class) {
            return Float.TYPE;
        }
        if (cls == Double.class) {
            return Double.TYPE;
        }
        if (cls == Character.class) {
            return Character.TYPE;
        }
        if (cls == Boolean.class) {
            return Boolean.TYPE;
        }
        return cls;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<?>[] clsArr, @NonNull Object[] objArr) {
        Class<?> cls;
        boolean z;
        if (clsArr.length != objArr.length) {
            return false;
        }
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= clsArr.length) {
                return true;
            }
            Class<?> cls2 = clsArr[i];
            Object obj = objArr[i];
            if (obj != null) {
                cls = obj.getClass();
            } else {
                cls = null;
            }
            if (cls == null) {
                z = !cls2.isPrimitive();
            } else {
                if (cls2 != cls && !cls2.isAssignableFrom(cls) && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls2) != Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls)) {
                    z2 = false;
                }
                z = z2;
            }
            if (!z) {
                return false;
            }
            i++;
        }
    }

    public static Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<?> cls, @Nullable Object... objArr) {
        Constructor<?>[] constructors;
        if (objArr == null) {
            try {
                objArr = new Object[]{null};
            } catch (Exception e) {
                RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Reflect \"%s\" getInstance Exception: %s", cls, e);
            }
        }
        RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww("Reflect to create object \"%s\" with %s constructor params", cls.getSimpleName(), Integer.valueOf(objArr.length));
        if (objArr.length == 0) {
            return cls.newInstance();
        }
        for (Constructor<?> constructor : cls.getConstructors()) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(constructor.getParameterTypes(), objArr)) {
                return constructor.newInstance(objArr);
            }
        }
        RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Reflect \"%s\" getInstance no match and return \"null\"", cls);
        return null;
    }
}
