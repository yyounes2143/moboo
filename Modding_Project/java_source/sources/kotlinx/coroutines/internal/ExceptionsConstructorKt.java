package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CopyableThrowable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a!\u0010\u0007\u001a\u0004\u0018\u0001H\b\"\b\b\u0000\u0010\b*\u00020\u00042\u0006\u0010\t\u001a\u0002H\bH\u0000¢\u0006\u0002\u0010\n\u001a2\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003j\u0002`\f\"\b\b\u0000\u0010\b*\u00020\u00042\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\b0\u000eH\u0002\u001a.\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003j\u0002`\f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003H\u0002\u001a\u0018\u0010\u0011\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u000e2\u0006\u0010\u0012\u001a\u00020\u0001H\u0002\u001a\u001b\u0010\u0013\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u000e2\b\b\u0002\u0010\u0014\u001a\u00020\u0001H\u0082\u0010\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000*(\b\u0002\u0010\u0002\"\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¨\u0006\u0015"}, d2 = {"throwableFields", "", "Ctor", "Lkotlin/Function1;", "", "ctorCache", "Lkotlinx/coroutines/internal/CtorCache;", "tryCopyException", ExifInterface.LONGITUDE_EAST, "exception", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "createConstructor", "Lkotlinx/coroutines/internal/Ctor;", "clz", "Ljava/lang/Class;", "safeCtor", "block", "fieldsCountOrDefault", "defaultValue", "fieldsCount", "accumulator", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nExceptionsConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1#2:113\n11158#3:114\n11493#3,3:115\n12727#3,3:132\n1971#4,14:118\n*S KotlinDebug\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n*L\n41#1:114\n41#1:115,3\n78#1:132,3\n59#1:118,14\n*E\n"})
/* loaded from: classes7.dex */
public final class ExceptionsConstructorKt {
    @NotNull
    private static final CtorCache ctorCache;
    private static final int throwableFields = fieldsCountOrDefault(Throwable.class, -1);

    static {
        CtorCache ctorCache2;
        try {
            if (FastServiceLoaderKt.getANDROID_DETECTED()) {
                ctorCache2 = WeakMapCtorCache.INSTANCE;
            } else {
                ctorCache2 = ClassValueCtorCache.INSTANCE;
            }
        } catch (Throwable unused) {
            ctorCache2 = WeakMapCtorCache.INSTANCE;
        }
        ctorCache = ctorCache2;
    }

    public static final /* synthetic */ Function1 access$createConstructor(Class cls) {
        return createConstructor(cls);
    }

    public static final <E extends Throwable> Function1<Throwable, Throwable> createConstructor(Class<E> cls) {
        Object obj;
        Function1<Throwable, Throwable> function1;
        Pair pair;
        ExceptionsConstructorKt$createConstructor$nullResult$1 exceptionsConstructorKt$createConstructor$nullResult$1 = new Function1() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createConstructor$nullResult$1
            @Override // kotlin.jvm.functions.Function1
            public final Void invoke(Throwable th) {
                return null;
            }
        };
        if (throwableFields == fieldsCountOrDefault(cls, 0)) {
            Constructor<?>[] constructors = cls.getConstructors();
            ArrayList arrayList = new ArrayList(constructors.length);
            int length = constructors.length;
            int i = 0;
            while (true) {
                obj = null;
                if (i >= length) {
                    break;
                }
                final Constructor<?> constructor = constructors[i];
                Class<?>[] parameterTypes = constructor.getParameterTypes();
                int length2 = parameterTypes.length;
                if (length2 != 0) {
                    if (length2 != 1) {
                        if (length2 != 2) {
                            pair = TuplesKt.to(null, -1);
                        } else if (Intrinsics.areEqual(parameterTypes[0], String.class) && Intrinsics.areEqual(parameterTypes[1], Throwable.class)) {
                            pair = TuplesKt.to(safeCtor(new Function1() { // from class: kotlinx.coroutines.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    Throwable createConstructor$lambda$7$lambda$1;
                                    createConstructor$lambda$7$lambda$1 = ExceptionsConstructorKt.createConstructor$lambda$7$lambda$1(constructor, (Throwable) obj2);
                                    return createConstructor$lambda$7$lambda$1;
                                }
                            }), 3);
                        } else {
                            pair = TuplesKt.to(null, -1);
                        }
                    } else {
                        Class<?> cls2 = parameterTypes[0];
                        if (Intrinsics.areEqual(cls2, String.class)) {
                            pair = TuplesKt.to(safeCtor(new Function1() { // from class: kotlinx.coroutines.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    Throwable createConstructor$lambda$7$lambda$3;
                                    createConstructor$lambda$7$lambda$3 = ExceptionsConstructorKt.createConstructor$lambda$7$lambda$3(constructor, (Throwable) obj2);
                                    return createConstructor$lambda$7$lambda$3;
                                }
                            }), 2);
                        } else if (Intrinsics.areEqual(cls2, Throwable.class)) {
                            pair = TuplesKt.to(safeCtor(new Function1() { // from class: kotlinx.coroutines.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    Throwable createConstructor$lambda$7$lambda$4;
                                    createConstructor$lambda$7$lambda$4 = ExceptionsConstructorKt.createConstructor$lambda$7$lambda$4(constructor, (Throwable) obj2);
                                    return createConstructor$lambda$7$lambda$4;
                                }
                            }), 1);
                        } else {
                            pair = TuplesKt.to(null, -1);
                        }
                    }
                } else {
                    pair = TuplesKt.to(safeCtor(new Function1() { // from class: kotlinx.coroutines.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            Throwable createConstructor$lambda$7$lambda$6;
                            createConstructor$lambda$7$lambda$6 = ExceptionsConstructorKt.createConstructor$lambda$7$lambda$6(constructor, (Throwable) obj2);
                            return createConstructor$lambda$7$lambda$6;
                        }
                    }), 0);
                }
                arrayList.add(pair);
                i++;
            }
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                obj = it.next();
                if (it.hasNext()) {
                    int intValue = ((Number) ((Pair) obj).getSecond()).intValue();
                    do {
                        Object next = it.next();
                        int intValue2 = ((Number) ((Pair) next).getSecond()).intValue();
                        if (intValue < intValue2) {
                            obj = next;
                            intValue = intValue2;
                        }
                    } while (it.hasNext());
                }
            }
            Pair pair2 = (Pair) obj;
            if (pair2 != null && (function1 = (Function1) pair2.getFirst()) != null) {
                return function1;
            }
        }
        return exceptionsConstructorKt$createConstructor$nullResult$1;
    }

    public static final Throwable createConstructor$lambda$7$lambda$1(Constructor constructor, Throwable th) {
        return (Throwable) constructor.newInstance(th.getMessage(), th);
    }

    public static final Throwable createConstructor$lambda$7$lambda$3(Constructor constructor, Throwable th) {
        Throwable th2 = (Throwable) constructor.newInstance(th.getMessage());
        th2.initCause(th);
        return th2;
    }

    public static final Throwable createConstructor$lambda$7$lambda$4(Constructor constructor, Throwable th) {
        return (Throwable) constructor.newInstance(th);
    }

    public static final Throwable createConstructor$lambda$7$lambda$6(Constructor constructor, Throwable th) {
        Throwable th2 = (Throwable) constructor.newInstance(null);
        th2.initCause(th);
        return th2;
    }

    private static final int fieldsCount(Class<?> cls, int i) {
        do {
            int i2 = 0;
            for (Field field : cls.getDeclaredFields()) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    i2++;
                }
            }
            i += i2;
            cls = cls.getSuperclass();
        } while (cls != null);
        return i;
    }

    public static /* synthetic */ int fieldsCount$default(Class cls, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return fieldsCount(cls, i);
    }

    private static final int fieldsCountOrDefault(Class<?> cls, int i) {
        Integer m438constructorimpl;
        JvmClassMappingKt.getKotlinClass(cls);
        try {
            Result.Companion companion = Result.Companion;
            m438constructorimpl = Result.m438constructorimpl(Integer.valueOf(fieldsCount$default(cls, 0, 1, null)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
        }
        Integer valueOf = Integer.valueOf(i);
        if (Result.m444isFailureimpl(m438constructorimpl)) {
            m438constructorimpl = valueOf;
        }
        return ((Number) m438constructorimpl).intValue();
    }

    private static final Function1<Throwable, Throwable> safeCtor(final Function1<? super Throwable, ? extends Throwable> function1) {
        return new Function1() { // from class: kotlinx.coroutines.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable safeCtor$lambda$9;
                safeCtor$lambda$9 = ExceptionsConstructorKt.safeCtor$lambda$9(Function1.this, (Throwable) obj);
                return safeCtor$lambda$9;
            }
        };
    }

    public static final Throwable safeCtor$lambda$9(Function1 function1, Throwable th) {
        Object m438constructorimpl;
        Throwable th2 = null;
        try {
            Result.Companion companion = Result.Companion;
            Throwable th3 = (Throwable) function1.invoke(th);
            if (!Intrinsics.areEqual(th.getMessage(), th3.getMessage()) && !Intrinsics.areEqual(th3.getMessage(), th.toString())) {
                th3 = null;
            }
            m438constructorimpl = Result.m438constructorimpl(th3);
        } catch (Throwable th4) {
            Result.Companion companion2 = Result.Companion;
            m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th4));
        }
        if (!Result.m444isFailureimpl(m438constructorimpl)) {
            th2 = m438constructorimpl;
        }
        return th2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final <E extends Throwable> E tryCopyException(@NotNull E e) {
        Object m438constructorimpl;
        if (e instanceof CopyableThrowable) {
            try {
                Result.Companion companion = Result.Companion;
                m438constructorimpl = Result.m438constructorimpl(((CopyableThrowable) e).createCopy());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m444isFailureimpl(m438constructorimpl)) {
                m438constructorimpl = null;
            }
            return (E) m438constructorimpl;
        }
        return (E) ctorCache.get(e.getClass()).invoke(e);
    }
}
