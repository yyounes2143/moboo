package com.tencent.thumbplayer.tcmedia.utils;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private static ArrayList<a> f10698a = new ArrayList<>();

    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        String f10699a;
        Map<Integer, Method> b;

        private a() {
        }
    }

    @Target({ElementType.METHOD, ElementType.TYPE})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface b {
        boolean a() default false;

        boolean b() default false;

        boolean c() default false;
    }

    public static Method a(Class<?> cls, String str, Object[] objArr) {
        Map<Integer, Method> b2 = b(cls);
        if (b2 == null) {
            return null;
        }
        for (Map.Entry<Integer, Method> entry : b2.entrySet()) {
            Method value = entry.getValue();
            if (value != null && str.equals(value.getName()) && a(value, objArr)) {
                return value;
            }
        }
        return null;
    }

    public static int b(Class<?> cls, String str, Object[] objArr) {
        Map<Integer, Method> b2 = b(cls);
        if (b2 == null) {
            return -1;
        }
        for (Map.Entry<Integer, Method> entry : b2.entrySet()) {
            Method value = entry.getValue();
            if (value != null && str.equals(value.getName()) && a(value, objArr)) {
                return entry.getKey().intValue();
            }
        }
        return -1;
    }

    public static boolean c(Class<?> cls, int i) {
        Method method;
        Map<Integer, Method> b2 = b(cls);
        if (b2 != null && (method = b2.get(Integer.valueOf(i))) != null) {
            Class<?>[] exceptionTypes = method.getExceptionTypes();
            if (exceptionTypes != null && exceptionTypes.length > 0) {
                return true;
            }
            b bVar = (b) method.getAnnotation(b.class);
            if (bVar != null) {
                return bVar.a();
            }
        }
        return false;
    }

    public static boolean d(Class<?> cls, int i) {
        Method method;
        b bVar;
        Map<Integer, Method> b2 = b(cls);
        if (b2 == null || (method = b2.get(Integer.valueOf(i))) == null || (bVar = (b) method.getAnnotation(b.class)) == null) {
            return false;
        }
        return bVar.b();
    }

    public static boolean e(Class<?> cls, int i) {
        Method method;
        b bVar;
        Map<Integer, Method> b2 = b(cls);
        if (b2 == null || (method = b2.get(Integer.valueOf(i))) == null || (bVar = (b) method.getAnnotation(b.class)) == null) {
            return false;
        }
        return bVar.c();
    }

    public static Method f(Class<?> cls, int i) {
        Map<Integer, Method> b2 = b(cls);
        if (b2 == null) {
            return null;
        }
        return b2.get(Integer.valueOf(i));
    }

    private static boolean a(Class<?> cls) {
        String str;
        ArrayList<a> arrayList = f10698a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            a aVar = arrayList.get(i);
            i++;
            a aVar2 = aVar;
            if (aVar2 != null && (str = aVar2.f10699a) != null && str.equals(cls.getName())) {
                return true;
            }
        }
        return false;
    }

    public static String b(Class<?> cls, int i) {
        Method method;
        Map<Integer, Method> b2 = b(cls);
        return (b2 == null || (method = b2.get(Integer.valueOf(i))) == null) ? "unknown" : method.getName();
    }

    public static synchronized boolean a(Class<?> cls, int i) {
        Method[] methods;
        synchronized (n.class) {
            if (a(cls)) {
                return true;
            }
            HashMap hashMap = new HashMap();
            try {
                for (Method method : cls.getMethods()) {
                    if (((b) method.getAnnotation(b.class)) != null) {
                        hashMap.put(Integer.valueOf(i), method);
                        i++;
                    }
                }
                a aVar = new a();
                aVar.f10699a = cls.getName();
                aVar.b = hashMap;
                f10698a.add(aVar);
                return true;
            } catch (Exception unused) {
                hashMap.clear();
                return false;
            }
        }
    }

    private static Map<Integer, Method> b(Class<?> cls) {
        String str;
        ArrayList<a> arrayList = f10698a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            a aVar = arrayList.get(i);
            i++;
            a aVar2 = aVar;
            if (aVar2 != null && (str = aVar2.f10699a) != null && str.equals(cls.getName())) {
                return aVar2.b;
            }
        }
        return null;
    }

    private static boolean a(Class<?> cls, Object obj) {
        if (cls.isPrimitive()) {
            try {
                return obj.getClass().getField("TYPE").get(null).equals(cls);
            } catch (Exception unused) {
                return false;
            }
        }
        return false;
    }

    private static boolean a(Method method, Object[] objArr) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (objArr == null || objArr.length == 0) {
            return parameterTypes.length == 0;
        } else if (parameterTypes.length != objArr.length) {
            return false;
        } else {
            for (int i = 0; i < parameterTypes.length; i++) {
                Class<?> cls = parameterTypes[i];
                Object obj = objArr[i];
                if (obj == null) {
                    if (cls.isPrimitive()) {
                        return false;
                    }
                } else if (!cls.isAssignableFrom(obj.getClass()) && !a(cls, objArr[i])) {
                    return false;
                }
            }
            return true;
        }
    }
}
