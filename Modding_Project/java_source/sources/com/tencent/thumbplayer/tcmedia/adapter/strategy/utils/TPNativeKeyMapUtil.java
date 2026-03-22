package com.tencent.thumbplayer.tcmedia.adapter.strategy.utils;

import android.text.TextUtils;
import android.util.SparseArray;
import com.tencent.thumbplayer.tcmedia.adapter.a.b.c;
import com.tencent.thumbplayer.tcmedia.adapter.strategy.utils.TPNativeKeyMap;
import com.tencent.thumbplayer.tcmedia.api.TPCommonEnum;
import com.tencent.thumbplayer.tcmedia.api.TPOptionalID;
import com.tencent.thumbplayer.tcmedia.tplayer.TPOptionalIDInternal;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes6.dex */
public class TPNativeKeyMapUtil {
    private static final String REVERSE_MAP_NAME_SUFFIX = ".reverseMap";
    private static final String TAG = "TPNativeKeyMapUtil";
    private static final Map<String, Map<Number, Number>> sNameToMap = new ConcurrentHashMap();
    private static final Map<Class<?>, AtomicBoolean> sHasThisAnnotationInitMap = new ConcurrentHashMap();
    private static final SparseArray<c.a> sToNativeOptionalIdMap = new SparseArray<>();
    private static final SparseArray<String> sOptionalIdKeyToNameMap = new SparseArray<>();
    private static final AtomicBoolean sHasOptionalIdMapInit = new AtomicBoolean(false);

    private static <T extends Annotation> void buildBiDirectionMapForAnnotation(Class<T> cls) {
        AtomicBoolean atomicBoolean;
        TPLogUtil.i(TAG, "buildBiDirectionMapForAnnotation, clazz=".concat(String.valueOf(cls)));
        Map<Class<?>, AtomicBoolean> map = sHasThisAnnotationInitMap;
        synchronized (map) {
            try {
                atomicBoolean = map.get(cls);
                if (atomicBoolean == null) {
                    atomicBoolean = new AtomicBoolean(false);
                    map.put(cls, atomicBoolean);
                }
            } finally {
            }
        }
        synchronized (atomicBoolean) {
            try {
                if (atomicBoolean.get()) {
                    TPLogUtil.i(TAG, "className=" + cls.getSimpleName() + " already init");
                } else {
                    searchClassToFillMap(cls);
                    atomicBoolean.set(true);
                }
            } finally {
            }
        }
    }

    private static void buildNativeInitConfigMap() {
        Field[] declaredFields;
        TPNativeKeyMap.MapInitConfig mapInitConfig;
        try {
            Class<?> cls = Class.forName(TPOptionalID.class.getName());
            for (Field field : cls.getDeclaredFields()) {
                if (field.getType().toString().equals("int") && (mapInitConfig = (TPNativeKeyMap.MapInitConfig) field.getAnnotation(TPNativeKeyMap.MapInitConfig.class)) != null) {
                    int i = field.getInt(cls);
                    sOptionalIdKeyToNameMap.put(i, mapInitConfig.keyName());
                    if (mapInitConfig.value() == -1) {
                        sToNativeOptionalIdMap.put(i, new c.a());
                    } else {
                        field.setAccessible(true);
                        sToNativeOptionalIdMap.put(i, new c.a(mapInitConfig.type(), mapInitConfig.value()));
                    }
                }
            }
        } catch (ClassNotFoundException e) {
            TPLogUtil.e(TAG, e);
        } catch (IllegalAccessException e2) {
            TPLogUtil.e(TAG, e2);
        }
    }

    private static void buildNativeOptionalIdToMapInternal(Class<?> cls) {
        Field[] declaredFields;
        TPNativeKeyMap.MapOptionalId mapOptionalId;
        try {
            for (Field field : cls.getDeclaredFields()) {
                if (field.getType().toString().equals("int") && (mapOptionalId = (TPNativeKeyMap.MapOptionalId) field.getAnnotation(TPNativeKeyMap.MapOptionalId.class)) != null) {
                    int i = field.getInt(cls);
                    sOptionalIdKeyToNameMap.put(i, mapOptionalId.keyName());
                    if (mapOptionalId.value() == -1) {
                        sToNativeOptionalIdMap.put(i, new c.a());
                    } else {
                        field.setAccessible(true);
                        sToNativeOptionalIdMap.put(i, new c.a(mapOptionalId.type(), mapOptionalId.value()));
                    }
                }
            }
        } catch (IllegalAccessException e) {
            TPLogUtil.e(TAG, e);
        }
    }

    private static void buildOptionalIdMap() {
        AtomicBoolean atomicBoolean = sHasOptionalIdMapInit;
        synchronized (atomicBoolean) {
            try {
                if (sToNativeOptionalIdMap.size() == 0) {
                    if (!atomicBoolean.get()) {
                        buildNativeInitConfigMap();
                        buildPublicToNativeOptionalIdMap();
                        buildPrivateToNativeOptionalIdMap();
                        atomicBoolean.set(true);
                    } else {
                        throw new IllegalStateException("构建Map错误，请查看【--keep class com.tencent.thumbplayer.tcmedia.api.** { *; }】是否加入反混淆");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void buildPrivateToNativeOptionalIdMap() {
        try {
            buildNativeOptionalIdToMapInternal(Class.forName(TPOptionalIDInternal.class.getName()));
        } catch (ClassNotFoundException e) {
            TPLogUtil.e(TAG, e);
        }
    }

    private static void buildPublicToNativeOptionalIdMap() {
        try {
            buildNativeOptionalIdToMapInternal(Class.forName(TPOptionalID.class.getName()));
        } catch (ClassNotFoundException e) {
            TPLogUtil.e(TAG, e);
        }
    }

    private static <T extends Annotation> void checkFillMapValidity(Class<T> cls, Map<Number, Number> map, Map<Number, Number> map2, Class<?> cls2, Number number, Number number2) {
        if (!map.containsKey(number2)) {
            if (!map2.containsKey(number)) {
                return;
            }
            throw new IllegalStateException(cls2.getName() + " 配置了重复的注解值，注解=" + cls.getName() + " 成员变量值=" + number2 + " 请查找一下@" + cls.getName() + "(这个值)在哪里重复了");
        }
        throw new IllegalStateException(cls2.getName() + " 配置了重复的成员变量，注解=" + cls.getName() + " 成员变量值=" + number2 + " 请查找一下使用这个注解@" + cls.getName() + "的哪两个成员变量值相等");
    }

    public static c.a convertToNativeOptionalId(@TPCommonEnum.TPOptionalId int i) {
        SparseArray<c.a> sparseArray = sToNativeOptionalIdMap;
        if (sparseArray.size() == 0) {
            buildOptionalIdMap();
        }
        return sparseArray.get(i, new c.a());
    }

    public static <T extends Annotation> Set<Map.Entry<Number, Number>> getEntrySetOfToNativeMap(Class<T> cls) {
        return new HashSet(getMapForAnnotation(cls, true).entrySet());
    }

    public static <T extends Annotation> Set<Map.Entry<Number, Number>> getEntrySetOfToTPMap(Class<T> cls) {
        return new HashSet(getMapForAnnotation(cls, false).entrySet());
    }

    private static <T extends Annotation> Map<Number, Number> getMapForAnnotation(Class<T> cls, boolean z) {
        String mapKey = getMapKey(cls, z);
        Map<String, Map<Number, Number>> map = sNameToMap;
        Map<Number, Number> map2 = map.get(mapKey);
        if (map2 == null || map2.size() == 0) {
            buildBiDirectionMapForAnnotation(cls);
            map2 = map.get(mapKey);
        }
        if (((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)) != null) {
            if (map2 != null && map2.size() != 0) {
                return map2;
            }
            throw new IllegalStateException(cls.getSimpleName() + " is null after buildBiDirectionMap");
        }
        throw new IllegalArgumentException(cls.getSimpleName() + "has not SearchConfig annotation");
    }

    private static <T extends Annotation> String getMapKey(Class<T> cls, boolean z) {
        String canonicalName = cls.getCanonicalName();
        if (z) {
            return canonicalName;
        }
        return canonicalName + REVERSE_MAP_NAME_SUFFIX;
    }

    public static String getOptionalIdName(int i) {
        if (!sHasOptionalIdMapInit.get()) {
            buildOptionalIdMap();
        }
        return sOptionalIdKeyToNameMap.get(i, "");
    }

    public static void init() {
        long currentTimeMillis = System.currentTimeMillis();
        Class<?>[] declaredClasses = TPNativeKeyMap.class.getDeclaredClasses();
        TPLogUtil.i(TAG, "init BiDirectionMap for tp&native value");
        for (Class<?> cls : declaredClasses) {
            if (cls.isAnnotation() && Modifier.isPublic(cls.getModifiers()) && ((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)) != null) {
                buildBiDirectionMapForAnnotation(cls);
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        TPLogUtil.i(TAG, "init cost time=" + (currentTimeMillis2 - currentTimeMillis));
    }

    private static <T extends Annotation> void searchClassToFillMap(Class<T> cls) {
        boolean z;
        Annotation annotation;
        Number number;
        Number valueOf;
        Class<T> cls2 = cls;
        String mapKey = getMapKey(cls2, true);
        Map<String, Map<Number, Number>> map = sNameToMap;
        Map<Number, Number> map2 = map.get(mapKey);
        String mapKey2 = getMapKey(cls2, false);
        Map<Number, Number> map3 = map.get(mapKey2);
        if (map2 == null || map3 == null) {
            map2 = new HashMap<>();
            map.put(mapKey, map2);
            map3 = new HashMap<>();
            map.put(mapKey2, map3);
        }
        Map<Number, Number> map4 = map2;
        Map<Number, Number> map5 = map3;
        try {
            TPNativeKeyMap.SearchConfig searchConfig = (TPNativeKeyMap.SearchConfig) cls2.getAnnotation(TPNativeKeyMap.SearchConfig.class);
            if (searchConfig != null) {
                Class<?> searchClass = searchConfig.searchClass();
                Field[] declaredFields = searchClass.getDeclaredFields();
                int length = declaredFields.length;
                int i = 0;
                while (i < length) {
                    Field field = declaredFields[i];
                    String str = "";
                    Class<? extends Number> valueClass = searchConfig.valueClass();
                    Class<? extends Number> cls3 = Integer.TYPE;
                    Class<? extends Number> cls4 = Long.TYPE;
                    if (valueClass == cls3) {
                        str = "int";
                    } else if (searchConfig.valueClass() == cls4) {
                        str = "long";
                    }
                    if (!TextUtils.isEmpty(str)) {
                        if (field.getType().toString().equals(str) && (annotation = field.getAnnotation(cls2)) != null) {
                            field.setAccessible(true);
                            Map<Number, Number> map6 = map4;
                            Method declaredMethod = cls2.getDeclaredMethod("value", null);
                            declaredMethod.setAccessible(true);
                            if (searchConfig.valueClass() == cls3) {
                                number = (Integer) declaredMethod.invoke(annotation, null);
                                valueOf = Integer.valueOf(field.getInt(searchClass));
                            } else if (searchConfig.valueClass() == cls4) {
                                number = (Long) declaredMethod.invoke(annotation, null);
                                valueOf = Long.valueOf(field.getLong(searchClass));
                            } else {
                                throw new IllegalArgumentException("代码还没实现对" + searchConfig.valueClass().getName() + "的支持");
                            }
                            Number number2 = valueOf;
                            z = true;
                            Number number3 = number;
                            map4 = map6;
                            checkFillMapValidity(cls2, map4, map5, searchClass, number3, number2);
                            map4.put(number2, number3);
                            map5.put(number3, number2);
                        } else {
                            z = true;
                        }
                        i++;
                        cls2 = cls;
                    } else {
                        throw new IllegalArgumentException("代码还没实现对" + searchConfig.valueClass().getName() + "的支持");
                    }
                }
                return;
            }
            throw new IllegalArgumentException(cls.getCanonicalName() + "has not SearchConfig annotation");
        } catch (IllegalAccessException e) {
            TPLogUtil.e(TAG, e);
        } catch (NoSuchMethodException e2) {
            TPLogUtil.e(TAG, e2);
            throw new IllegalStateException("com.tencent.thumbplayer.tcmedia.adapter.strategy.utils.TPNativeKeyMap下所有元素需要加到混淆中, 并且每个MapXXX注解需要有value方法");
        } catch (InvocationTargetException e3) {
            TPLogUtil.e(TAG, e3);
        }
    }

    public static <T extends Annotation> int toNativeIntValue(Class<T> cls, int i) {
        Map<Number, Number> mapForAnnotation = getMapForAnnotation(cls, true);
        if (!mapForAnnotation.containsKey(Integer.valueOf(i))) {
            TPLogUtil.e(TAG, "toNativeValue, tpValue=" + i + "return default value, clazz" + cls);
            return (int) ((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)).nativeDefValue();
        }
        return mapForAnnotation.get(Integer.valueOf(i)).intValue();
    }

    public static <T extends Annotation> long toNativeLongValue(Class<T> cls, long j) {
        Map<Number, Number> mapForAnnotation = getMapForAnnotation(cls, true);
        if (!mapForAnnotation.containsKey(Long.valueOf(j))) {
            TPLogUtil.e(TAG, "toNativeValue, tpValue=" + j + "return default value, clazz" + cls);
            return ((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)).nativeDefValue();
        }
        return mapForAnnotation.get(Long.valueOf(j)).longValue();
    }

    public static <T extends Annotation> int toTPIntValue(Class<T> cls, int i) {
        Map<Number, Number> mapForAnnotation = getMapForAnnotation(cls, false);
        if (!mapForAnnotation.containsKey(Integer.valueOf(i))) {
            TPLogUtil.i(TAG, "toTPValue, nativeValue=" + i + "return default value, clazz" + cls);
            return (int) ((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)).tpDefValue();
        }
        return mapForAnnotation.get(Integer.valueOf(i)).intValue();
    }

    public static <T extends Annotation> long toTPLongValue(Class<T> cls, long j) {
        Map<Number, Number> mapForAnnotation = getMapForAnnotation(cls, false);
        if (!mapForAnnotation.containsKey(Long.valueOf(j))) {
            TPLogUtil.i(TAG, "toTPValue, nativeValue=" + j + "return default value, clazz" + cls);
            return ((TPNativeKeyMap.SearchConfig) cls.getAnnotation(TPNativeKeyMap.SearchConfig.class)).tpDefValue();
        }
        return mapForAnnotation.get(Long.valueOf(j)).longValue();
    }
}
