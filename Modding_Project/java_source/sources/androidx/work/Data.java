package androidx.work;

import android.annotation.SuppressLint;
import androidx.activity.Wwwwwwwwwwwwwwwww;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.room.TypeConverter;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0018\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0013\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 B2\u00020\u0001:\u0002ABB\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0000¢\u0006\u0004\b\u0003\u0010\u0004B\u001b\b\u0010\u0012\u0010\u0010\u0005\u001a\f\u0012\u0004\u0012\u00020\u0007\u0012\u0002\b\u00030\u0006¢\u0006\u0004\b\u0003\u0010\bJ*\u0010\t\u001a\u0002H\n\"\n\b\u0000\u0010\n\u0018\u0001*\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u0002H\nH\u0082\b¢\u0006\u0002\u0010\rJ}\u0010\u000e\u001a\u0004\u0018\u0001H\u000f\"\n\b\u0000\u0010\n\u0018\u0001*\u00020\u0001\"\u0004\b\u0001\u0010\u000f2\u0006\u0010\u000b\u001a\u00020\u00072Q\u0010\u0010\u001aM\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015\u0012.\u0012,\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u0002H\n0\u0016¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u0002H\u000f0\u0011H\u0082\b¢\u0006\u0002\u0010\u0019J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u001bJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u000b\u001a\u00020\u0007J\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u001fJ\u0010\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\u000b\u001a\u00020\u0007J\u0016\u0010\"\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0012J\u0010\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010\u000b\u001a\u00020\u0007J\u0016\u0010%\u001a\u00020&2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020&J\u0010\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010\u000b\u001a\u00020\u0007J\u0016\u0010)\u001a\u00020*2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020*J\u0010\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010\u000b\u001a\u00020\u0007J\u0016\u0010-\u001a\u00020.2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020.J\u0010\u0010/\u001a\u0004\u0018\u0001002\u0006\u0010\u000b\u001a\u00020\u0007J\u0010\u00101\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\u0007J\u001b\u00102\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u0001032\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0002\u00104J\u0006\u00108\u001a\u00020!J\"\u00109\u001a\u00020\u001b\"\u0004\b\u0000\u0010\n2\u0006\u0010\u000b\u001a\u00020\u00072\f\u0010:\u001a\b\u0012\u0004\u0012\u0002H\n0;J\u001e\u0010<\u001a\u00020\u001b\"\u0006\b\u0000\u0010\n\u0018\u00012\u0006\u0010\u000b\u001a\u00020\u0007H\u0080\b¢\u0006\u0002\b=J\b\u0010\u0015\u001a\u00020\u0012H\u0007J\u0013\u0010>\u001a\u00020\u001b2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010?\u001a\u00020\u0012H\u0016J\b\u0010@\u001a\u00020\u0007H\u0016R\u001c\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001f\u00105\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00068F¢\u0006\u0006\u001a\u0004\b6\u00107¨\u0006C"}, d2 = {"Landroidx/work/Data;", "", "other", "<init>", "(Landroidx/work/Data;)V", "values", "", "", "(Ljava/util/Map;)V", "getOrDefault", "T", "key", "defaultValue", "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "getTypedArray", "TArray", "constructor", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "size", "Lkotlin/Function1;", FirebaseAnalytics.Param.INDEX, "init", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "getBoolean", "", "getBooleanArray", "", "getByte", "", "getByteArray", "", "getInt", "getIntArray", "", "getLong", "", "getLongArray", "", "getFloat", "", "getFloatArray", "", "getDouble", "", "getDoubleArray", "", "getString", "getStringArray", "", "(Ljava/lang/String;)[Ljava/lang/String;", "keyValueMap", "getKeyValueMap", "()Ljava/util/Map;", "toByteArray", "hasKeyWithValueOfType", "klass", "Ljava/lang/Class;", "hasKey", "hasKey$work_runtime_release", "equals", "hashCode", "toString", "Builder", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nData_.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Data_.kt\nandroidx/work/Data\n*L\n1#1,846:1\n55#1,2:847\n63#1,4:849\n55#1,2:853\n63#1,4:855\n55#1,2:859\n63#1,4:861\n55#1,2:865\n63#1,4:867\n55#1,2:871\n63#1,4:873\n55#1,2:877\n63#1,4:879\n63#1,4:883\n*S KotlinDebug\n*F\n+ 1 Data_.kt\nandroidx/work/Data\n*L\n77#1:847,2\n85#1:849,4\n94#1:853,2\n102#1:855,4\n111#1:859,2\n119#1:861,4\n128#1:865,2\n136#1:867,4\n145#1:871,2\n153#1:873,4\n163#1:877,2\n171#1:879,4\n187#1:883,4\n*E\n"})
/* loaded from: classes3.dex */
public final class Data {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Data EMPTY = new Builder().build();
    @SuppressLint({"MinMaxConstant"})
    public static final int MAX_DATA_BYTES = 10240;
    @NotNull
    private static final String NULL_STRING_V1 = "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d";
    private static final short STREAM_MAGIC = -21521;
    private static final short STREAM_VERSION = 1;
    private static final byte TYPE_BOOLEAN = 1;
    private static final byte TYPE_BOOLEAN_ARRAY = 8;
    private static final byte TYPE_BYTE = 2;
    private static final byte TYPE_BYTE_ARRAY = 9;
    private static final byte TYPE_DOUBLE = 6;
    private static final byte TYPE_DOUBLE_ARRAY = 13;
    private static final byte TYPE_FLOAT = 5;
    private static final byte TYPE_FLOAT_ARRAY = 12;
    private static final byte TYPE_INTEGER = 3;
    private static final byte TYPE_INTEGER_ARRAY = 10;
    private static final byte TYPE_LONG = 4;
    private static final byte TYPE_LONG_ARRAY = 11;
    private static final byte TYPE_NULL = 0;
    private static final byte TYPE_STRING = 7;
    private static final byte TYPE_STRING_ARRAY = 14;
    @NotNull
    private final Map<String, Object> values;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0018\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0013\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0007\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0002J\u0016\u0010\n\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\rJ\u0016\u0010\u000e\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0013J\u0016\u0010\u0014\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0015J\u0016\u0010\u0016\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0017J\u0016\u0010\u0018\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0019J\u0016\u0010\u001a\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u001bJ\u0016\u0010\u001c\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u001dJ\u0016\u0010\u001e\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u001fJ\u0016\u0010 \u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020!J\u0018\u0010\"\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0006J#\u0010#\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00062\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060$¢\u0006\u0002\u0010%J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010'\u001a\u00020(J\u001c\u0010&\u001a\u00020\u00002\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010)J\u001a\u0010*\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0007J\u0006\u0010+\u001a\u00020(R\u001c\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Landroidx/work/Data$Builder;", "", "<init>", "()V", "values", "", "", "putDirect", "key", "value", "putBoolean", "", "putBooleanArray", "", "putByte", "", "putByteArray", "", "putInt", "", "putIntArray", "", "putLong", "", "putLongArray", "", "putFloat", "", "putFloatArray", "", "putDouble", "", "putDoubleArray", "", "putString", "putStringArray", "", "(Ljava/lang/String;[Ljava/lang/String;)Landroidx/work/Data$Builder;", "putAll", "data", "Landroidx/work/Data;", "", "put", "build", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nData_.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Data_.kt\nandroidx/work/Data$Builder\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,846:1\n216#2,2:847\n*S KotlinDebug\n*F\n+ 1 Data_.kt\nandroidx/work/Data$Builder\n*L\n474#1:847,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Builder {
        @NotNull
        private final Map<String, Object> values = new LinkedHashMap();

        private final Builder putDirect(String str, Object obj) {
            this.values.put(str, obj);
            return this;
        }

        @NotNull
        public final Data build() {
            Data data = new Data(this.values);
            Data.Companion.toByteArrayInternalV1(data);
            return data;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @NotNull
        public final Builder put(@NotNull String str, @Nullable Object obj) {
            Map<String, Object> map = this.values;
            if (obj == null) {
                obj = null;
            } else {
                KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(obj.getClass());
                if (!Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean.TYPE)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Byte.TYPE)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer.TYPE)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Long.TYPE)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Float.TYPE)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Double.TYPE)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String.class)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean[].class)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Byte[].class)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer[].class)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Long[].class)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Float[].class)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Double[].class)) && !Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String[].class))) {
                    if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(boolean[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((boolean[]) obj);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(byte[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((byte[]) obj);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(int[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((int[]) obj);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(long[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((long[]) obj);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(float[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((float[]) obj);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(double[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((double[]) obj);
                    } else {
                        throw new IllegalArgumentException("Key " + str + " has invalid type " + orCreateKotlinClass);
                    }
                }
            }
            map.put(str, obj);
            return this;
        }

        @NotNull
        public final Builder putAll(@NotNull Data data) {
            putAll(data.values);
            return this;
        }

        @NotNull
        public final Builder putBoolean(@NotNull String str, boolean z) {
            return putDirect(str, Boolean.valueOf(z));
        }

        @NotNull
        public final Builder putBooleanArray(@NotNull String str, @NotNull boolean[] zArr) {
            Boolean[] convertPrimitiveArray;
            Map<String, Object> map = this.values;
            convertPrimitiveArray = Data_Kt.convertPrimitiveArray(zArr);
            map.put(str, convertPrimitiveArray);
            return this;
        }

        @NotNull
        public final Builder putByte(@NotNull String str, byte b) {
            return putDirect(str, Byte.valueOf(b));
        }

        @NotNull
        public final Builder putByteArray(@NotNull String str, @NotNull byte[] bArr) {
            Byte[] convertPrimitiveArray;
            Map<String, Object> map = this.values;
            convertPrimitiveArray = Data_Kt.convertPrimitiveArray(bArr);
            map.put(str, convertPrimitiveArray);
            return this;
        }

        @NotNull
        public final Builder putDouble(@NotNull String str, double d) {
            return putDirect(str, Double.valueOf(d));
        }

        @NotNull
        public final Builder putDoubleArray(@NotNull String str, @NotNull double[] dArr) {
            Double[] convertPrimitiveArray;
            Map<String, Object> map = this.values;
            convertPrimitiveArray = Data_Kt.convertPrimitiveArray(dArr);
            map.put(str, convertPrimitiveArray);
            return this;
        }

        @NotNull
        public final Builder putFloat(@NotNull String str, float f) {
            return putDirect(str, Float.valueOf(f));
        }

        @NotNull
        public final Builder putFloatArray(@NotNull String str, @NotNull float[] fArr) {
            Float[] convertPrimitiveArray;
            Map<String, Object> map = this.values;
            convertPrimitiveArray = Data_Kt.convertPrimitiveArray(fArr);
            map.put(str, convertPrimitiveArray);
            return this;
        }

        @NotNull
        public final Builder putInt(@NotNull String str, int i) {
            return putDirect(str, Integer.valueOf(i));
        }

        @NotNull
        public final Builder putIntArray(@NotNull String str, @NotNull int[] iArr) {
            Integer[] convertPrimitiveArray;
            Map<String, Object> map = this.values;
            convertPrimitiveArray = Data_Kt.convertPrimitiveArray(iArr);
            map.put(str, convertPrimitiveArray);
            return this;
        }

        @NotNull
        public final Builder putLong(@NotNull String str, long j) {
            return putDirect(str, Long.valueOf(j));
        }

        @NotNull
        public final Builder putLongArray(@NotNull String str, @NotNull long[] jArr) {
            Long[] convertPrimitiveArray;
            Map<String, Object> map = this.values;
            convertPrimitiveArray = Data_Kt.convertPrimitiveArray(jArr);
            map.put(str, convertPrimitiveArray);
            return this;
        }

        @NotNull
        public final Builder putString(@NotNull String str, @Nullable String str2) {
            return putDirect(str, str2);
        }

        @NotNull
        public final Builder putStringArray(@NotNull String str, @NotNull String[] strArr) {
            return putDirect(str, strArr);
        }

        @NotNull
        public final Builder putAll(@NotNull Map<String, ? extends Object> map) {
            for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
            return this;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0005H\u0007J\u0010\u0010 \u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0005H\u0007J\u0010\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u001eH\u0007R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001bX\u0082T¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Landroidx/work/Data$Companion;", "", "<init>", "()V", "EMPTY", "Landroidx/work/Data;", "MAX_DATA_BYTES", "", "TYPE_NULL", "", "TYPE_BOOLEAN", "TYPE_BYTE", "TYPE_INTEGER", "TYPE_LONG", "TYPE_FLOAT", "TYPE_DOUBLE", "TYPE_STRING", "TYPE_BOOLEAN_ARRAY", "TYPE_BYTE_ARRAY", "TYPE_INTEGER_ARRAY", "TYPE_LONG_ARRAY", "TYPE_FLOAT_ARRAY", "TYPE_DOUBLE_ARRAY", "TYPE_STRING_ARRAY", "NULL_STRING_V1", "", "STREAM_MAGIC", "", "STREAM_VERSION", "toByteArrayInternalV0", "", "data", "toByteArrayInternalV1", "fromByteArray", "bytes", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nData_.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Data_.kt\nandroidx/work/Data$Companion\n+ 2 LoggerExt.kt\nandroidx/work/LoggerExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,846:1\n32#2:847\n32#2:848\n32#2:850\n32#2:851\n1#3:849\n*S KotlinDebug\n*F\n+ 1 Data_.kt\nandroidx/work/Data$Companion\n*L\n604#1:847\n715#1:848\n819#1:850\n821#1:851\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static final boolean fromByteArray$isObjectStream(ByteArrayInputStream byteArrayInputStream) {
            byte[] bArr = new byte[2];
            byteArrayInputStream.read(bArr);
            byte b = (byte) (-21267);
            boolean z = false;
            if (bArr[0] == ((byte) 16777132) && bArr[1] == b) {
                z = true;
            }
            byteArrayInputStream.reset();
            return z;
        }

        private static final void fromByteArray$readHeader(DataInputStream dataInputStream) {
            short readShort = dataInputStream.readShort();
            if (readShort == -21521) {
                short readShort2 = dataInputStream.readShort();
                if (readShort2 == 1) {
                    return;
                }
                throw new IllegalStateException(("Unsupported version number: " + ((int) readShort2)).toString());
            }
            throw new IllegalStateException(("Magic number doesn't match: " + ((int) readShort)).toString());
        }

        private static final Object fromByteArray$readValue(DataInputStream dataInputStream, byte b) {
            if (b == 0) {
                return null;
            }
            if (b == 1) {
                return Boolean.valueOf(dataInputStream.readBoolean());
            }
            if (b == 2) {
                return Byte.valueOf(dataInputStream.readByte());
            }
            if (b == 3) {
                return Integer.valueOf(dataInputStream.readInt());
            }
            if (b == 4) {
                return Long.valueOf(dataInputStream.readLong());
            }
            if (b == 5) {
                return Float.valueOf(dataInputStream.readFloat());
            }
            if (b == 6) {
                return Double.valueOf(dataInputStream.readDouble());
            }
            if (b == 7) {
                return dataInputStream.readUTF();
            }
            int i = 0;
            if (b == 8) {
                int readInt = dataInputStream.readInt();
                Boolean[] boolArr = new Boolean[readInt];
                while (i < readInt) {
                    boolArr[i] = Boolean.valueOf(dataInputStream.readBoolean());
                    i++;
                }
                return boolArr;
            } else if (b == 9) {
                int readInt2 = dataInputStream.readInt();
                Byte[] bArr = new Byte[readInt2];
                while (i < readInt2) {
                    bArr[i] = Byte.valueOf(dataInputStream.readByte());
                    i++;
                }
                return bArr;
            } else if (b == 10) {
                int readInt3 = dataInputStream.readInt();
                Integer[] numArr = new Integer[readInt3];
                while (i < readInt3) {
                    numArr[i] = Integer.valueOf(dataInputStream.readInt());
                    i++;
                }
                return numArr;
            } else if (b == 11) {
                int readInt4 = dataInputStream.readInt();
                Long[] lArr = new Long[readInt4];
                while (i < readInt4) {
                    lArr[i] = Long.valueOf(dataInputStream.readLong());
                    i++;
                }
                return lArr;
            } else if (b == 12) {
                int readInt5 = dataInputStream.readInt();
                Float[] fArr = new Float[readInt5];
                while (i < readInt5) {
                    fArr[i] = Float.valueOf(dataInputStream.readFloat());
                    i++;
                }
                return fArr;
            } else if (b == 13) {
                int readInt6 = dataInputStream.readInt();
                Double[] dArr = new Double[readInt6];
                while (i < readInt6) {
                    dArr[i] = Double.valueOf(dataInputStream.readDouble());
                    i++;
                }
                return dArr;
            } else if (b == 14) {
                int readInt7 = dataInputStream.readInt();
                String[] strArr = new String[readInt7];
                while (i < readInt7) {
                    String readUTF = dataInputStream.readUTF();
                    if (Intrinsics.areEqual(readUTF, Data.NULL_STRING_V1)) {
                        readUTF = null;
                    }
                    strArr[i] = readUTF;
                    i++;
                }
                return strArr;
            } else {
                throw new IllegalStateException("Unsupported type " + ((int) b));
            }
        }

        private static final void toByteArrayInternalV1$writeArray(DataOutputStream dataOutputStream, Object[] objArr) {
            int i;
            double d;
            float f;
            long j;
            int i2;
            byte b;
            boolean z;
            KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(objArr.getClass());
            if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean[].class))) {
                i = 8;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Byte[].class))) {
                i = 9;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer[].class))) {
                i = 10;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Long[].class))) {
                i = 11;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Float[].class))) {
                i = 12;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Double[].class))) {
                i = 13;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String[].class))) {
                i = 14;
            } else {
                throw new IllegalArgumentException("Unsupported value type " + Reflection.getOrCreateKotlinClass(objArr.getClass()).getQualifiedName());
            }
            dataOutputStream.writeByte(i);
            dataOutputStream.writeInt(objArr.length);
            for (Object obj : objArr) {
                String str = null;
                Boolean bool = null;
                Byte b2 = null;
                Integer num = null;
                Long l = null;
                Float f2 = null;
                Double d2 = null;
                if (i == 8) {
                    if (obj instanceof Boolean) {
                        bool = (Boolean) obj;
                    }
                    if (bool != null) {
                        z = bool.booleanValue();
                    } else {
                        z = false;
                    }
                    dataOutputStream.writeBoolean(z);
                } else if (i == 9) {
                    if (obj instanceof Byte) {
                        b2 = (Byte) obj;
                    }
                    if (b2 != null) {
                        b = b2.byteValue();
                    } else {
                        b = 0;
                    }
                    dataOutputStream.writeByte(b);
                } else if (i == 10) {
                    if (obj instanceof Integer) {
                        num = (Integer) obj;
                    }
                    if (num != null) {
                        i2 = num.intValue();
                    } else {
                        i2 = 0;
                    }
                    dataOutputStream.writeInt(i2);
                } else if (i == 11) {
                    if (obj instanceof Long) {
                        l = (Long) obj;
                    }
                    if (l != null) {
                        j = l.longValue();
                    } else {
                        j = 0;
                    }
                    dataOutputStream.writeLong(j);
                } else if (i == 12) {
                    if (obj instanceof Float) {
                        f2 = (Float) obj;
                    }
                    if (f2 != null) {
                        f = f2.floatValue();
                    } else {
                        f = 0.0f;
                    }
                    dataOutputStream.writeFloat(f);
                } else if (i == 13) {
                    if (obj instanceof Double) {
                        d2 = (Double) obj;
                    }
                    if (d2 != null) {
                        d = d2.doubleValue();
                    } else {
                        d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    }
                    dataOutputStream.writeDouble(d);
                } else if (i == 14) {
                    if (obj instanceof String) {
                        str = (String) obj;
                    }
                    if (str == null) {
                        str = Data.NULL_STRING_V1;
                    }
                    dataOutputStream.writeUTF(str);
                }
            }
        }

        private static final void toByteArrayInternalV1$writeEntry(DataOutputStream dataOutputStream, String str, Object obj) {
            if (obj == null) {
                dataOutputStream.writeByte(0);
            } else if (obj instanceof Boolean) {
                dataOutputStream.writeByte(1);
                dataOutputStream.writeBoolean(((Boolean) obj).booleanValue());
            } else if (obj instanceof Byte) {
                dataOutputStream.writeByte(2);
                dataOutputStream.writeByte(((Number) obj).byteValue());
            } else if (obj instanceof Integer) {
                dataOutputStream.writeByte(3);
                dataOutputStream.writeInt(((Number) obj).intValue());
            } else if (obj instanceof Long) {
                dataOutputStream.writeByte(4);
                dataOutputStream.writeLong(((Number) obj).longValue());
            } else if (obj instanceof Float) {
                dataOutputStream.writeByte(5);
                dataOutputStream.writeFloat(((Number) obj).floatValue());
            } else if (obj instanceof Double) {
                dataOutputStream.writeByte(6);
                dataOutputStream.writeDouble(((Number) obj).doubleValue());
            } else if (obj instanceof String) {
                dataOutputStream.writeByte(7);
                dataOutputStream.writeUTF((String) obj);
            } else if (obj instanceof Object[]) {
                toByteArrayInternalV1$writeArray(dataOutputStream, (Object[]) obj);
            } else {
                throw new IllegalArgumentException("Unsupported value type " + Reflection.getOrCreateKotlinClass(obj.getClass()).getSimpleName());
            }
            dataOutputStream.writeUTF(str);
        }

        private static final void toByteArrayInternalV1$writeHeader(DataOutputStream dataOutputStream) {
            dataOutputStream.writeShort(-21521);
            dataOutputStream.writeShort(1);
        }

        @JvmStatic
        @TypeConverter
        @NotNull
        public final Data fromByteArray(@NotNull byte[] bArr) {
            String str;
            String str2;
            if (bArr.length <= 10240) {
                if (bArr.length == 0) {
                    return Data.EMPTY;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                try {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                    int i = 0;
                    if (fromByteArray$isObjectStream(byteArrayInputStream)) {
                        ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                        int readInt = objectInputStream.readInt();
                        while (i < readInt) {
                            linkedHashMap.put(objectInputStream.readUTF(), objectInputStream.readObject());
                            i++;
                        }
                        CloseableKt.closeFinally(objectInputStream, null);
                    } else {
                        DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
                        fromByteArray$readHeader(dataInputStream);
                        int readInt2 = dataInputStream.readInt();
                        while (i < readInt2) {
                            linkedHashMap.put(dataInputStream.readUTF(), fromByteArray$readValue(dataInputStream, dataInputStream.readByte()));
                            i++;
                        }
                        CloseableKt.closeFinally(dataInputStream, null);
                    }
                } catch (IOException e) {
                    str2 = Data_Kt.TAG;
                    Logger.get().error(str2, "Error in Data#fromByteArray: ", e);
                } catch (ClassNotFoundException e2) {
                    str = Data_Kt.TAG;
                    Logger.get().error(str, "Error in Data#fromByteArray: ", e2);
                }
                return new Data(linkedHashMap);
            }
            throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
        }

        @JvmStatic
        @NotNull
        @Deprecated(message = "This is kept for testing migration", replaceWith = @ReplaceWith(expression = "toByteArrayInternalV1", imports = {}))
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final byte[] toByteArrayInternalV0(@NotNull Data data) {
            String str;
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream.writeInt(data.size());
                    for (Map.Entry entry : data.values.entrySet()) {
                        Object value = entry.getValue();
                        objectOutputStream.writeUTF((String) entry.getKey());
                        objectOutputStream.writeObject(value);
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(objectOutputStream, null);
                    CloseableKt.closeFinally(byteArrayOutputStream, null);
                    if (byteArrayOutputStream.size() <= 10240) {
                        return byteArrayOutputStream.toByteArray();
                    }
                    throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                } finally {
                }
            } catch (IOException e) {
                str = Data_Kt.TAG;
                Logger.get().error(str, "Error in Data#toByteArray: ", e);
                return new byte[0];
            }
        }

        @JvmStatic
        @NotNull
        @TypeConverter
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final byte[] toByteArrayInternalV1(@NotNull Data data) {
            String str;
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                toByteArrayInternalV1$writeHeader(dataOutputStream);
                dataOutputStream.writeInt(data.size());
                for (Map.Entry entry : data.values.entrySet()) {
                    toByteArrayInternalV1$writeEntry(dataOutputStream, (String) entry.getKey(), entry.getValue());
                }
                dataOutputStream.flush();
                if (dataOutputStream.size() <= 10240) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    CloseableKt.closeFinally(dataOutputStream, null);
                    return byteArray;
                }
                throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
            } catch (IOException e) {
                str = Data_Kt.TAG;
                Logger.get().error(str, "Error in Data#toByteArray: ", e);
                return new byte[0];
            }
        }

        private Companion() {
        }
    }

    public Data(@NotNull Data data) {
        this.values = new HashMap(data.values);
    }

    @JvmStatic
    @TypeConverter
    @NotNull
    public static final Data fromByteArray(@NotNull byte[] bArr) {
        return Companion.fromByteArray(bArr);
    }

    private final /* synthetic */ <T> T getOrDefault(String str, T t) {
        T t2 = (T) this.values.get(str);
        Intrinsics.reifiedOperationMarker(3, "T");
        if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(t2)) {
            return t2;
        }
        return t;
    }

    private final /* synthetic */ <T, TArray> TArray getTypedArray(String str, Function2<? super Integer, ? super Function1<? super Integer, ? extends T>, ? extends TArray> function2) {
        final Object obj = this.values.get(str);
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr)) {
                Integer valueOf = Integer.valueOf(objArr.length);
                Intrinsics.needClassReification();
                return function2.invoke(valueOf, new Function1<Integer, T>() { // from class: androidx.work.Data$getTypedArray$1
                    public final T invoke(int i) {
                        T t = (T) ((Object[]) obj)[i];
                        Intrinsics.reifiedOperationMarker(1, "T");
                        return t;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                        return invoke(num.intValue());
                    }
                });
            }
            return null;
        }
        return null;
    }

    @JvmStatic
    @NotNull
    @Deprecated(message = "This is kept for testing migration", replaceWith = @ReplaceWith(expression = "toByteArrayInternalV1", imports = {}))
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final byte[] toByteArrayInternalV0(@NotNull Data data) {
        return Companion.toByteArrayInternalV0(data);
    }

    @JvmStatic
    @NotNull
    @TypeConverter
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final byte[] toByteArrayInternalV1(@NotNull Data data) {
        return Companion.toByteArrayInternalV1(data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence toString$lambda$7$lambda$6(Map.Entry entry) {
        Object value = entry.getValue();
        StringBuilder sb = new StringBuilder();
        sb.append((String) entry.getKey());
        sb.append(" : ");
        if (value instanceof Object[]) {
            value = Arrays.toString((Object[]) value);
        }
        sb.append(value);
        return sb.toString();
    }

    public boolean equals(@Nullable Object obj) {
        boolean z;
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(Data.class, obj.getClass())) {
            return false;
        }
        Data data = (Data) obj;
        Set<String> keySet = this.values.keySet();
        if (!Intrinsics.areEqual(keySet, data.values.keySet())) {
            return false;
        }
        for (String str : keySet) {
            Object obj2 = this.values.get(str);
            Object obj3 = data.values.get(str);
            if (obj2 != null && obj3 != null) {
                if (obj2 instanceof Object[]) {
                    Object[] objArr = (Object[]) obj2;
                    if (obj3 instanceof Object[]) {
                        z = ArraysKt.contentDeepEquals(objArr, (Object[]) obj3);
                        continue;
                    }
                }
                z = Intrinsics.areEqual(obj2, obj3);
                continue;
            } else if (obj2 == obj3) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    public final boolean getBoolean(@NotNull String str, boolean z) {
        Boolean valueOf = Boolean.valueOf(z);
        Object obj = this.values.get(str);
        if (obj instanceof Boolean) {
            valueOf = obj;
        }
        return valueOf.booleanValue();
    }

    @Nullable
    public final boolean[] getBooleanArray(@NotNull String str) {
        final Object obj = this.values.get(str);
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr)) {
                int length = objArr.length;
                Function1<Integer, Boolean> function1 = new Function1<Integer, Boolean>() { // from class: androidx.work.Data$getBooleanArray$$inlined$getTypedArray$1
                    public final Boolean invoke(int i) {
                        Object obj2 = ((Object[]) obj)[i];
                        if (obj2 != null) {
                            return (Boolean) obj2;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
                    }

                    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Boolean, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(Integer num) {
                        return invoke(num.intValue());
                    }
                };
                boolean[] zArr = new boolean[length];
                for (int i = 0; i < length; i++) {
                    zArr[i] = function1.invoke(Integer.valueOf(i)).booleanValue();
                }
                return zArr;
            }
            return null;
        }
        return null;
    }

    public final byte getByte(@NotNull String str, byte b) {
        Byte valueOf = Byte.valueOf(b);
        Object obj = this.values.get(str);
        if (obj instanceof Byte) {
            valueOf = obj;
        }
        return valueOf.byteValue();
    }

    @Nullable
    public final byte[] getByteArray(@NotNull String str) {
        final Object obj = this.values.get(str);
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr)) {
                int length = objArr.length;
                Function1<Integer, Byte> function1 = new Function1<Integer, Byte>() { // from class: androidx.work.Data$getByteArray$$inlined$getTypedArray$1
                    public final Byte invoke(int i) {
                        Object obj2 = ((Object[]) obj)[i];
                        if (obj2 != null) {
                            return (Byte) obj2;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Byte");
                    }

                    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, java.lang.Byte] */
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Byte invoke(Integer num) {
                        return invoke(num.intValue());
                    }
                };
                byte[] bArr = new byte[length];
                for (int i = 0; i < length; i++) {
                    bArr[i] = function1.invoke(Integer.valueOf(i)).byteValue();
                }
                return bArr;
            }
            return null;
        }
        return null;
    }

    public final double getDouble(@NotNull String str, double d) {
        Double valueOf = Double.valueOf(d);
        Object obj = this.values.get(str);
        if (obj instanceof Double) {
            valueOf = obj;
        }
        return valueOf.doubleValue();
    }

    @Nullable
    public final double[] getDoubleArray(@NotNull String str) {
        final Object obj = this.values.get(str);
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr)) {
                int length = objArr.length;
                Function1<Integer, Double> function1 = new Function1<Integer, Double>() { // from class: androidx.work.Data$getDoubleArray$$inlined$getTypedArray$1
                    public final Double invoke(int i) {
                        Object obj2 = ((Object[]) obj)[i];
                        if (obj2 != null) {
                            return (Double) obj2;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Double");
                    }

                    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Double, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Double invoke(Integer num) {
                        return invoke(num.intValue());
                    }
                };
                double[] dArr = new double[length];
                for (int i = 0; i < length; i++) {
                    dArr[i] = function1.invoke(Integer.valueOf(i)).doubleValue();
                }
                return dArr;
            }
            return null;
        }
        return null;
    }

    public final float getFloat(@NotNull String str, float f) {
        Float valueOf = Float.valueOf(f);
        Object obj = this.values.get(str);
        if (obj instanceof Float) {
            valueOf = obj;
        }
        return valueOf.floatValue();
    }

    @Nullable
    public final float[] getFloatArray(@NotNull String str) {
        final Object obj = this.values.get(str);
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr)) {
                int length = objArr.length;
                Function1<Integer, Float> function1 = new Function1<Integer, Float>() { // from class: androidx.work.Data$getFloatArray$$inlined$getTypedArray$1
                    public final Float invoke(int i) {
                        Object obj2 = ((Object[]) obj)[i];
                        if (obj2 != null) {
                            return (Float) obj2;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Float");
                    }

                    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Float, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Float invoke(Integer num) {
                        return invoke(num.intValue());
                    }
                };
                float[] fArr = new float[length];
                for (int i = 0; i < length; i++) {
                    fArr[i] = function1.invoke(Integer.valueOf(i)).floatValue();
                }
                return fArr;
            }
            return null;
        }
        return null;
    }

    public final int getInt(@NotNull String str, int i) {
        Integer valueOf = Integer.valueOf(i);
        Object obj = this.values.get(str);
        if (obj instanceof Integer) {
            valueOf = obj;
        }
        return valueOf.intValue();
    }

    @Nullable
    public final int[] getIntArray(@NotNull String str) {
        final Object obj = this.values.get(str);
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr)) {
                int length = objArr.length;
                Function1<Integer, Integer> function1 = new Function1<Integer, Integer>() { // from class: androidx.work.Data$getIntArray$$inlined$getTypedArray$1
                    public final Integer invoke(int i) {
                        Object obj2 = ((Object[]) obj)[i];
                        if (obj2 != null) {
                            return (Integer) obj2;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                    }

                    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, java.lang.Integer] */
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                        return invoke(num.intValue());
                    }
                };
                int[] iArr = new int[length];
                for (int i = 0; i < length; i++) {
                    iArr[i] = function1.invoke(Integer.valueOf(i)).intValue();
                }
                return iArr;
            }
            return null;
        }
        return null;
    }

    @NotNull
    public final Map<String, Object> getKeyValueMap() {
        return Collections.unmodifiableMap(this.values);
    }

    public final long getLong(@NotNull String str, long j) {
        Long valueOf = Long.valueOf(j);
        Object obj = this.values.get(str);
        if (obj instanceof Long) {
            valueOf = obj;
        }
        return valueOf.longValue();
    }

    @Nullable
    public final long[] getLongArray(@NotNull String str) {
        final Object obj = this.values.get(str);
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr)) {
                int length = objArr.length;
                Function1<Integer, Long> function1 = new Function1<Integer, Long>() { // from class: androidx.work.Data$getLongArray$$inlined$getTypedArray$1
                    public final Long invoke(int i) {
                        Object obj2 = ((Object[]) obj)[i];
                        if (obj2 != null) {
                            return (Long) obj2;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Long");
                    }

                    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Long, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Long invoke(Integer num) {
                        return invoke(num.intValue());
                    }
                };
                long[] jArr = new long[length];
                for (int i = 0; i < length; i++) {
                    jArr[i] = function1.invoke(Integer.valueOf(i)).longValue();
                }
                return jArr;
            }
            return null;
        }
        return null;
    }

    @Nullable
    public final String getString(@NotNull String str) {
        Object obj = this.values.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    @Nullable
    public final String[] getStringArray(@NotNull String str) {
        final Object obj = this.values.get(str);
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr)) {
                int length = objArr.length;
                Function1<Integer, String> function1 = new Function1<Integer, String>() { // from class: androidx.work.Data$getStringArray$$inlined$getTypedArray$1
                    public final String invoke(int i) {
                        Object obj2 = ((Object[]) obj)[i];
                        if (obj2 != null) {
                            return (String) obj2;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                    }

                    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, java.lang.String] */
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ String invoke(Integer num) {
                        return invoke(num.intValue());
                    }
                };
                String[] strArr = new String[length];
                for (int i = 0; i < length; i++) {
                    strArr[i] = function1.invoke(Integer.valueOf(i));
                }
                return strArr;
            }
            return null;
        }
        return null;
    }

    public final /* synthetic */ <T> boolean hasKey$work_runtime_release(String str) {
        Intrinsics.reifiedOperationMarker(4, "T");
        return hasKeyWithValueOfType(str, Object.class);
    }

    public final <T> boolean hasKeyWithValueOfType(@NotNull String str, @NotNull Class<T> cls) {
        Object obj = this.values.get(str);
        if (obj != null && cls.isAssignableFrom(obj.getClass())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        for (Map.Entry<String, Object> entry : this.values.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Object[]) {
                hashCode = Objects.hashCode(entry.getKey()) ^ ArraysKt.contentDeepHashCode((Object[]) value);
            } else {
                hashCode = entry.hashCode();
            }
            i += hashCode;
        }
        return i * 31;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public final int size() {
        return this.values.size();
    }

    @NotNull
    public final byte[] toByteArray() {
        return Companion.toByteArrayInternalV1(this);
    }

    @NotNull
    public String toString() {
        return "Data {" + CollectionsKt.joinToString$default(this.values.entrySet(), null, null, null, 0, null, new Function1() { // from class: androidx.work.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CharSequence string$lambda$7$lambda$6;
                string$lambda$7$lambda$6 = Data.toString$lambda$7$lambda$6((Map.Entry) obj);
                return string$lambda$7$lambda$6;
            }
        }, 31, null) + "}";
    }

    public Data(@NotNull Map<String, ?> map) {
        this.values = new HashMap(map);
    }
}
