package kotlinx.serialization;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.CachingKt;
import kotlinx.serialization.internal.ParametrizedSerializerCache;
import kotlinx.serialization.internal.PlatformKt;
import kotlinx.serialization.internal.SerializerCache;
import kotlinx.serialization.modules.SerializersModuleBuildersKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a(\u0010\u000e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u001aA\u0010\u0014\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u000f0\u00152\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u00112\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0012\u001a\u00020\u0013H\u0000¢\u0006\u0002\u0010\u0019\u001a\u001b\u0010\u001a\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0002\u0018\u00010\u001b*\u0006\u0012\u0002\b\u00030\u0011H\u0080\b\"$\u0010\u0000\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u001e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\u0004\"\u001e\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\n8\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000b\u0010\u0004\"\u001e\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\n8\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\r\u0010\u0004¨\u0006\u001c"}, d2 = {"SERIALIZERS_CACHE", "Lkotlinx/serialization/internal/SerializerCache;", "", "getSERIALIZERS_CACHE$annotations", "()V", "getSERIALIZERS_CACHE", "()Lkotlinx/serialization/internal/SerializerCache;", "SERIALIZERS_CACHE_NULLABLE", "getSERIALIZERS_CACHE_NULLABLE$annotations", "PARAMETRIZED_SERIALIZERS_CACHE", "Lkotlinx/serialization/internal/ParametrizedSerializerCache;", "getPARAMETRIZED_SERIALIZERS_CACHE$annotations", "PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE", "getPARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$annotations", "findCachedSerializer", "Lkotlinx/serialization/KSerializer;", "clazz", "Lkotlin/reflect/KClass;", "isNullable", "", "findParametrizedCachedSerializer", "Lkotlin/Result;", "types", "", "Lkotlin/reflect/KType;", "(Lkotlin/reflect/KClass;Ljava/util/List;Z)Ljava/lang/Object;", "polymorphicIfInterface", "Lkotlinx/serialization/PolymorphicSerializer;", "kotlinx-serialization-core"}, k = 2, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSerializersCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SerializersCache.kt\nkotlinx/serialization/SerializersCacheKt\n+ 2 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,79:1\n78#1:81\n78#1:82\n78#2:80\n78#2:83\n78#2:84\n*S KotlinDebug\n*F\n+ 1 SerializersCache.kt\nkotlinx/serialization/SerializersCacheKt\n*L\n22#1:81\n28#1:82\n54#1:80\n28#1:83\n45#1:84\n*E\n"})
/* loaded from: classes7.dex */
public final class SerializersCacheKt {
    @NotNull
    private static final SerializerCache<? extends Object> SERIALIZERS_CACHE = CachingKt.createCache(new Function1() { // from class: kotlinx.serialization.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            KSerializer SERIALIZERS_CACHE$lambda$0;
            SERIALIZERS_CACHE$lambda$0 = SerializersCacheKt.SERIALIZERS_CACHE$lambda$0((KClass) obj);
            return SERIALIZERS_CACHE$lambda$0;
        }
    });
    @NotNull
    private static final SerializerCache<Object> SERIALIZERS_CACHE_NULLABLE = CachingKt.createCache(new Function1() { // from class: kotlinx.serialization.Wwwwwwwwwwwwwwwwwwwwwwwwwww
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            KSerializer SERIALIZERS_CACHE_NULLABLE$lambda$1;
            SERIALIZERS_CACHE_NULLABLE$lambda$1 = SerializersCacheKt.SERIALIZERS_CACHE_NULLABLE$lambda$1((KClass) obj);
            return SERIALIZERS_CACHE_NULLABLE$lambda$1;
        }
    });
    @NotNull
    private static final ParametrizedSerializerCache<? extends Object> PARAMETRIZED_SERIALIZERS_CACHE = CachingKt.createParametrizedCache(new Function2() { // from class: kotlinx.serialization.Wwwwwwwwwwwwwwwwwwwwwwwwww
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            KSerializer PARAMETRIZED_SERIALIZERS_CACHE$lambda$3;
            PARAMETRIZED_SERIALIZERS_CACHE$lambda$3 = SerializersCacheKt.PARAMETRIZED_SERIALIZERS_CACHE$lambda$3((KClass) obj, (List) obj2);
            return PARAMETRIZED_SERIALIZERS_CACHE$lambda$3;
        }
    });
    @NotNull
    private static final ParametrizedSerializerCache<Object> PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE = CachingKt.createParametrizedCache(new Function2() { // from class: kotlinx.serialization.Wwwwwwwwwwwwwwwwwwwwwwwww
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            KSerializer PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5;
            PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5 = SerializersCacheKt.PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5((KClass) obj, (List) obj2);
            return PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5;
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final KSerializer PARAMETRIZED_SERIALIZERS_CACHE$lambda$3(KClass kClass, final List list) {
        return SerializersKt.parametrizedSerializerOrNull(kClass, SerializersKt.serializersForParameters(SerializersModuleBuildersKt.EmptySerializersModule(), list, true), new Function0() { // from class: kotlinx.serialization.Wwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KClassifier PARAMETRIZED_SERIALIZERS_CACHE$lambda$3$lambda$2;
                PARAMETRIZED_SERIALIZERS_CACHE$lambda$3$lambda$2 = SerializersCacheKt.PARAMETRIZED_SERIALIZERS_CACHE$lambda$3$lambda$2(list);
                return PARAMETRIZED_SERIALIZERS_CACHE$lambda$3$lambda$2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KClassifier PARAMETRIZED_SERIALIZERS_CACHE$lambda$3$lambda$2(List list) {
        return ((KType) list.get(0)).getClassifier();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KSerializer PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5(KClass kClass, final List list) {
        KSerializer nullable;
        KSerializer<? extends Object> parametrizedSerializerOrNull = SerializersKt.parametrizedSerializerOrNull(kClass, SerializersKt.serializersForParameters(SerializersModuleBuildersKt.EmptySerializersModule(), list, true), new Function0() { // from class: kotlinx.serialization.Wwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KClassifier PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5$lambda$4;
                PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5$lambda$4 = SerializersCacheKt.PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5$lambda$4(list);
                return PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5$lambda$4;
            }
        });
        if (parametrizedSerializerOrNull != null && (nullable = BuiltinSerializersKt.getNullable(parametrizedSerializerOrNull)) != null) {
            return nullable;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KClassifier PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5$lambda$4(List list) {
        return ((KType) list.get(0)).getClassifier();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KSerializer SERIALIZERS_CACHE$lambda$0(KClass kClass) {
        KSerializer serializerOrNull = SerializersKt.serializerOrNull(kClass);
        if (serializerOrNull == null) {
            if (PlatformKt.isInterface(kClass)) {
                return new PolymorphicSerializer(kClass);
            }
            return null;
        }
        return serializerOrNull;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KSerializer SERIALIZERS_CACHE_NULLABLE$lambda$1(KClass kClass) {
        KSerializer nullable;
        KSerializer serializerOrNull = SerializersKt.serializerOrNull(kClass);
        if (serializerOrNull == null) {
            if (PlatformKt.isInterface(kClass)) {
                serializerOrNull = new PolymorphicSerializer(kClass);
            } else {
                serializerOrNull = null;
            }
        }
        if (serializerOrNull == null || (nullable = BuiltinSerializersKt.getNullable(serializerOrNull)) == null) {
            return null;
        }
        return nullable;
    }

    @Nullable
    public static final KSerializer<Object> findCachedSerializer(@NotNull KClass<Object> kClass, boolean z) {
        if (!z) {
            KSerializer<? extends Object> kSerializer = SERIALIZERS_CACHE.get(kClass);
            if (kSerializer != null) {
                return kSerializer;
            }
            return null;
        }
        return SERIALIZERS_CACHE_NULLABLE.get(kClass);
    }

    @NotNull
    public static final Object findParametrizedCachedSerializer(@NotNull KClass<Object> kClass, @NotNull List<? extends KType> list, boolean z) {
        if (!z) {
            return PARAMETRIZED_SERIALIZERS_CACHE.mo1987getgIAlus(kClass, list);
        }
        return PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE.mo1987getgIAlus(kClass, list);
    }

    @NotNull
    public static final SerializerCache<? extends Object> getSERIALIZERS_CACHE() {
        return SERIALIZERS_CACHE;
    }

    @Nullable
    public static final PolymorphicSerializer<? extends Object> polymorphicIfInterface(@NotNull KClass<?> kClass) {
        if (PlatformKt.isInterface(kClass)) {
            return new PolymorphicSerializer<>(kClass);
        }
        return null;
    }

    private static /* synthetic */ void getPARAMETRIZED_SERIALIZERS_CACHE$annotations() {
    }

    private static /* synthetic */ void getPARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$annotations() {
    }

    public static /* synthetic */ void getSERIALIZERS_CACHE$annotations() {
    }

    private static /* synthetic */ void getSERIALIZERS_CACHE_NULLABLE$annotations() {
    }
}
