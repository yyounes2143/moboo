package org.checkerframework.checker.formatter.qual;

import j$.util.StringJoiner;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import org.checkerframework.dataflow.qual.Pure;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public enum ConversionCategory {
    GENERAL("bBhHsS", null),
    CHAR("cC", Character.class, Byte.class, Short.class, Integer.class),
    INT("doxX", Byte.class, Short.class, Integer.class, Long.class, BigInteger.class),
    FLOAT("eEfgGaA", Float.class, Double.class, BigDecimal.class),
    TIME("tT", Long.class, Calendar.class, Date.class),
    CHAR_AND_INT(null, Byte.class, Short.class, Integer.class),
    INT_AND_TIME(null, Long.class),
    NULL(null, new Class[0]),
    UNUSED(null, null);
    

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ConversionCategory[] f13467Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ConversionCategory[] f13468Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ConversionCategory[] f13469Wwwwwwwwwwwwwwwwwwwwwwwww;
    public final String chars;
    public final Class<?>[] types;

    static {
        ConversionCategory conversionCategory;
        ConversionCategory conversionCategory2 = CHAR;
        ConversionCategory conversionCategory3 = INT;
        ConversionCategory conversionCategory4 = FLOAT;
        ConversionCategory conversionCategory5 = TIME;
        ConversionCategory conversionCategory6 = CHAR_AND_INT;
        ConversionCategory conversionCategory7 = INT_AND_TIME;
        ConversionCategory conversionCategory8 = NULL;
        f13469Wwwwwwwwwwwwwwwwwwwwwwwww = new ConversionCategory[]{conversionCategory, conversionCategory2, conversionCategory3, conversionCategory4, conversionCategory5};
        f13468Wwwwwwwwwwwwwwwwwwwwwwww = new ConversionCategory[]{conversionCategory2, conversionCategory3, conversionCategory4, conversionCategory5, conversionCategory6, conversionCategory7, conversionCategory8};
        f13467Wwwwwwwwwwwwwwwwwwwwwww = new ConversionCategory[]{conversionCategory8, conversionCategory6, conversionCategory7, conversionCategory2, conversionCategory3, conversionCategory4, conversionCategory5};
    }

    ConversionCategory(String str, Class... clsArr) {
        this.chars = str;
        if (clsArr == null) {
            this.types = clsArr;
            return;
        }
        ArrayList arrayList = new ArrayList(clsArr.length);
        for (Class cls : clsArr) {
            arrayList.add(cls);
            Class<? extends Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        }
        this.types = (Class[]) arrayList.toArray(new Class[arrayList.size()]);
    }

    public static Class<? extends Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<?> cls) {
        if (cls == Byte.class) {
            return Byte.TYPE;
        }
        if (cls == Character.class) {
            return Character.TYPE;
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
        if (cls == Boolean.class) {
            return Boolean.TYPE;
        }
        return null;
    }

    public static <E> Set<E> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(E[] eArr) {
        return new HashSet(Arrays.asList(eArr));
    }

    public static ConversionCategory fromConversionChar(char c) {
        ConversionCategory[] conversionCategoryArr;
        for (ConversionCategory conversionCategory : f13469Wwwwwwwwwwwwwwwwwwwwwwwww) {
            if (conversionCategory.chars.contains(String.valueOf(c))) {
                return conversionCategory;
            }
        }
        throw new IllegalArgumentException("Bad conversion character " + c);
    }

    public static ConversionCategory intersect(ConversionCategory conversionCategory, ConversionCategory conversionCategory2) {
        ConversionCategory[] conversionCategoryArr;
        ConversionCategory conversionCategory3 = UNUSED;
        if (conversionCategory != conversionCategory3) {
            if (conversionCategory2 != conversionCategory3) {
                ConversionCategory conversionCategory4 = GENERAL;
                if (conversionCategory != conversionCategory4) {
                    if (conversionCategory2 != conversionCategory4) {
                        Set Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(conversionCategory.types);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.retainAll(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(conversionCategory2.types));
                        for (ConversionCategory conversionCategory5 : f13468Wwwwwwwwwwwwwwwwwwwwwwww) {
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(conversionCategory5.types).equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                                return conversionCategory5;
                            }
                        }
                        throw new RuntimeException();
                    }
                }
            }
            return conversionCategory;
        }
        return conversionCategory2;
    }

    public static boolean isSubsetOf(ConversionCategory conversionCategory, ConversionCategory conversionCategory2) {
        if (intersect(conversionCategory, conversionCategory2) == conversionCategory) {
            return true;
        }
        return false;
    }

    public static ConversionCategory union(ConversionCategory conversionCategory, ConversionCategory conversionCategory2) {
        ConversionCategory[] conversionCategoryArr;
        ConversionCategory conversionCategory3 = UNUSED;
        if (conversionCategory != conversionCategory3 && conversionCategory2 != conversionCategory3 && conversionCategory != (conversionCategory3 = GENERAL) && conversionCategory2 != conversionCategory3) {
            ConversionCategory conversionCategory4 = CHAR_AND_INT;
            if ((conversionCategory == conversionCategory4 && conversionCategory2 == INT_AND_TIME) || (conversionCategory == INT_AND_TIME && conversionCategory2 == conversionCategory4)) {
                return INT;
            }
            Set Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(conversionCategory.types);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.addAll(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(conversionCategory2.types));
            for (ConversionCategory conversionCategory5 : f13467Wwwwwwwwwwwwwwwwwwwwwww) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(conversionCategory5.types).equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                    return conversionCategory5;
                }
            }
            return GENERAL;
        }
        return conversionCategory3;
    }

    public boolean isAssignableFrom(Class<?> cls) {
        Class<?>[] clsArr = this.types;
        if (clsArr == null || cls == Void.TYPE) {
            return true;
        }
        for (Class<?> cls2 : clsArr) {
            if (cls2.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.Enum
    @Pure
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(name());
        sb.append(" conversion category");
        Class<?>[] clsArr = this.types;
        if (clsArr != null && clsArr.length != 0) {
            StringJoiner stringJoiner = new StringJoiner(", ", "(one of: ", ")");
            for (Class<?> cls : this.types) {
                stringJoiner.add(cls.getSimpleName());
            }
            sb.append(" ");
            sb.append(stringJoiner);
            return sb.toString();
        }
        return sb.toString();
    }
}
