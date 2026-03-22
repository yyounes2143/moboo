package com.sensorsdata.analytics.android.sdk.util;

import android.annotation.SuppressLint;
import android.util.LruCache;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ReflectUtil {
    @SuppressLint({"NewApi"})
    private static final LruCache<String, Class<?>> mObjectLruCache = new LruCache<>(64);
    private static final Set<String> mObjectSet = new HashSet();

    public static <T> T callMethod(Object obj, String str, Object... objArr) {
        Class[] clsArr = new Class[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            clsArr[i] = objArr[i].getClass();
        }
        Method method = getMethod(obj.getClass(), str, clsArr);
        if (method != null) {
            try {
                return (T) method.invoke(obj, objArr);
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static <T> T callStaticMethod(Class<?> cls, String str, Object... objArr) {
        if (cls == null) {
            return null;
        }
        Class[] clsArr = new Class[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            clsArr[i] = objArr[i].getClass();
        }
        Method method = getMethod(cls, str, clsArr);
        if (method != null) {
            try {
                return (T) method.invoke(null, objArr);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static <T> T findField(Class<?> cls, Object obj, String... strArr) {
        Field findFieldObj = findFieldObj(cls, strArr);
        if (findFieldObj != null) {
            try {
                return (T) findFieldObj.get(obj);
            } catch (IllegalAccessException | Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static Field findFieldObj(Class<?> cls, String... strArr) {
        if (strArr != null) {
            try {
                if (strArr.length != 0) {
                    Field field = null;
                    for (String str : strArr) {
                        try {
                            field = cls.getDeclaredField(str);
                        } catch (NoSuchFieldException unused) {
                            field = null;
                        }
                        if (field != null) {
                            break;
                        }
                    }
                    if (field == null) {
                        return null;
                    }
                    field.setAccessible(true);
                    return field;
                }
            } catch (Exception unused2) {
            }
        }
        return null;
    }

    public static Field findFieldObjRecur(Class<?> cls, String str) {
        while (cls != Object.class) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField;
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    public static <T> T findFieldRecur(Object obj, String str) {
        Field findFieldObjRecur = findFieldObjRecur(obj.getClass(), str);
        if (findFieldObjRecur != null) {
            try {
                return (T) findFieldObjRecur.get(obj);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }
        return null;
    }

    public static Class<?> getClassByName(String str) {
        try {
            LruCache<String, Class<?>> lruCache = mObjectLruCache;
            Class<?> cls = lruCache.get(str);
            if (cls == null && !mObjectSet.contains(str)) {
                Class<?> cls2 = Class.forName(str);
                lruCache.put(str, cls2);
                return cls2;
            }
            return cls;
        } catch (ClassNotFoundException unused) {
            mObjectSet.add(str);
            return null;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static Class<?> getCurrentClass(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        Class<?> cls = null;
        for (int i = 0; i < strArr.length; i++) {
            try {
                LruCache<String, Class<?>> lruCache = mObjectLruCache;
                Class<?> cls2 = lruCache.get(strArr[i]);
                if (cls2 == null && !mObjectSet.contains(strArr[i])) {
                    cls2 = Class.forName(strArr[i]);
                    lruCache.put(strArr[i], cls2);
                }
                cls = cls2;
            } catch (Throwable unused) {
                mObjectSet.add(strArr[i]);
                cls = null;
            }
            if (cls != null) {
                break;
            }
        }
        return cls;
    }

    public static Method getDeclaredRecur(Class<?> cls, String str, Class<?>... clsArr) {
        Method declaredMethod;
        while (cls != Object.class) {
            try {
                declaredMethod = cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException unused) {
                cls = cls.getSuperclass();
            }
            if (declaredMethod != null) {
                return declaredMethod;
            }
        }
        return null;
    }

    public static Method getMethod(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public static boolean isInstance(Object obj, String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return false;
        }
        boolean z = false;
        for (String str : strArr) {
            try {
                LruCache<String, Class<?>> lruCache = mObjectLruCache;
                Class<?> cls = lruCache.get(str);
                if (cls == null && !mObjectSet.contains(str)) {
                    cls = Class.forName(str);
                    lruCache.put(str, cls);
                }
                if (cls != null) {
                    z = cls.isInstance(obj);
                }
            } catch (Throwable unused) {
                mObjectSet.add(str);
            }
            if (z) {
                break;
            }
        }
        return z;
    }

    public static <T> T findField(String[] strArr, Object obj, String... strArr2) {
        Class<?> currentClass = getCurrentClass(strArr);
        if (currentClass != null) {
            return (T) findField(currentClass, obj, strArr2);
        }
        return null;
    }
}
