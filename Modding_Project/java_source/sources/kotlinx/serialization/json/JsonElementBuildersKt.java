package kotlinx.serialization.json;

import java.util.ArrayList;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.ExperimentalSerializationApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0004\n\u0002\u0010\u0001\n\u0002\b\u0006\n\u0002\u0010\u001e\n\u0002\b\u0004\u001a2\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u001a2\u0010\u0007\u001a\u00020\b2\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u001a-\u0010\n\u001a\u0004\u0018\u00010\u000b*\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a-\u0010\u000e\u001a\u0004\u0018\u00010\u000b*\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a#\u0010\u000f\u001a\u0004\u0018\u00010\u000b*\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0012\u001a\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u000b*\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0013\u001a\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u000b*\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\r\u001a \u0010\u000f\u001a\u0004\u0018\u00010\u000b*\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0014H\u0007\u001a\u0019\u0010\u0015\u001a\u00020\u0011*\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0016\u001a\u0014\u0010\u0015\u001a\u00020\u0011*\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0013\u001a\u0014\u0010\u0015\u001a\u00020\u0011*\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\r\u001a\u0016\u0010\u0015\u001a\u00020\u0011*\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0014H\u0007\u001a#\u0010\u0017\u001a\u00020\u0011*\u00020\t2\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a#\u0010\u0018\u001a\u00020\u0011*\u00020\t2\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a!\u0010\u0019\u001a\u00020\u0011*\u00020\t2\u000e\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u001bH\u0007¢\u0006\u0002\b\u001c\u001a!\u0010\u0019\u001a\u00020\u0011*\u00020\t2\u000e\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u001bH\u0007¢\u0006\u0002\b\u001d\u001a!\u0010\u0019\u001a\u00020\u0011*\u00020\t2\u000e\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u001bH\u0007¢\u0006\u0002\b\u001e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001f"}, d2 = {"buildJsonObject", "Lkotlinx/serialization/json/JsonObject;", "builderAction", "Lkotlin/Function1;", "Lkotlinx/serialization/json/JsonObjectBuilder;", "", "Lkotlin/ExtensionFunctionType;", "buildJsonArray", "Lkotlinx/serialization/json/JsonArray;", "Lkotlinx/serialization/json/JsonArrayBuilder;", "putJsonObject", "Lkotlinx/serialization/json/JsonElement;", "key", "", "putJsonArray", "put", "value", "", "(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonElement;", "", "", "add", "(Lkotlinx/serialization/json/JsonArrayBuilder;Ljava/lang/Boolean;)Z", "addJsonObject", "addJsonArray", "addAll", "values", "", "addAllStrings", "addAllBooleans", "addAllNumbers", "kotlinx-serialization-json"}, k = 2, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nJsonElementBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,231:1\n29#1,3:232\n52#1,3:235\n29#1,3:238\n52#1,3:241\n1557#2:244\n1628#2,3:245\n1557#2:248\n1628#2,3:249\n1557#2:252\n1628#2,3:253\n*S KotlinDebug\n*F\n+ 1 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n*L\n82#1:232,3\n90#1:235,3\n189#1:238,3\n197#1:241,3\n207#1:244\n207#1:245,3\n217#1:248\n217#1:249,3\n227#1:252\n227#1:253,3\n*E\n"})
/* loaded from: classes7.dex */
public final class JsonElementBuildersKt {
    public static final boolean add(@NotNull JsonArrayBuilder jsonArrayBuilder, @Nullable Boolean bool) {
        return jsonArrayBuilder.add(JsonElementKt.JsonPrimitive(bool));
    }

    @ExperimentalSerializationApi
    @JvmName(name = "addAllBooleans")
    public static final boolean addAllBooleans(@NotNull JsonArrayBuilder jsonArrayBuilder, @NotNull Collection<Boolean> collection) {
        Collection<Boolean> collection2 = collection;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection2, 10));
        for (Boolean bool : collection2) {
            arrayList.add(JsonElementKt.JsonPrimitive(bool));
        }
        return jsonArrayBuilder.addAll(arrayList);
    }

    @ExperimentalSerializationApi
    @JvmName(name = "addAllNumbers")
    public static final boolean addAllNumbers(@NotNull JsonArrayBuilder jsonArrayBuilder, @NotNull Collection<? extends Number> collection) {
        Collection<? extends Number> collection2 = collection;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection2, 10));
        for (Number number : collection2) {
            arrayList.add(JsonElementKt.JsonPrimitive(number));
        }
        return jsonArrayBuilder.addAll(arrayList);
    }

    @ExperimentalSerializationApi
    @JvmName(name = "addAllStrings")
    public static final boolean addAllStrings(@NotNull JsonArrayBuilder jsonArrayBuilder, @NotNull Collection<String> collection) {
        Collection<String> collection2 = collection;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection2, 10));
        for (String str : collection2) {
            arrayList.add(JsonElementKt.JsonPrimitive(str));
        }
        return jsonArrayBuilder.addAll(arrayList);
    }

    public static final boolean addJsonArray(@NotNull JsonArrayBuilder jsonArrayBuilder, @NotNull Function1<? super JsonArrayBuilder, Unit> function1) {
        JsonArrayBuilder jsonArrayBuilder2 = new JsonArrayBuilder();
        function1.invoke(jsonArrayBuilder2);
        return jsonArrayBuilder.add(jsonArrayBuilder2.build());
    }

    public static final boolean addJsonObject(@NotNull JsonArrayBuilder jsonArrayBuilder, @NotNull Function1<? super JsonObjectBuilder, Unit> function1) {
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        function1.invoke(jsonObjectBuilder);
        return jsonArrayBuilder.add(jsonObjectBuilder.build());
    }

    @NotNull
    public static final JsonArray buildJsonArray(@NotNull Function1<? super JsonArrayBuilder, Unit> function1) {
        JsonArrayBuilder jsonArrayBuilder = new JsonArrayBuilder();
        function1.invoke(jsonArrayBuilder);
        return jsonArrayBuilder.build();
    }

    @NotNull
    public static final JsonObject buildJsonObject(@NotNull Function1<? super JsonObjectBuilder, Unit> function1) {
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        function1.invoke(jsonObjectBuilder);
        return jsonObjectBuilder.build();
    }

    @Nullable
    public static final JsonElement put(@NotNull JsonObjectBuilder jsonObjectBuilder, @NotNull String str, @Nullable Boolean bool) {
        return jsonObjectBuilder.put(str, JsonElementKt.JsonPrimitive(bool));
    }

    @Nullable
    public static final JsonElement putJsonArray(@NotNull JsonObjectBuilder jsonObjectBuilder, @NotNull String str, @NotNull Function1<? super JsonArrayBuilder, Unit> function1) {
        JsonArrayBuilder jsonArrayBuilder = new JsonArrayBuilder();
        function1.invoke(jsonArrayBuilder);
        return jsonObjectBuilder.put(str, jsonArrayBuilder.build());
    }

    @Nullable
    public static final JsonElement putJsonObject(@NotNull JsonObjectBuilder jsonObjectBuilder, @NotNull String str, @NotNull Function1<? super JsonObjectBuilder, Unit> function1) {
        JsonObjectBuilder jsonObjectBuilder2 = new JsonObjectBuilder();
        function1.invoke(jsonObjectBuilder2);
        return jsonObjectBuilder.put(str, jsonObjectBuilder2.build());
    }

    public static final boolean add(@NotNull JsonArrayBuilder jsonArrayBuilder, @Nullable Number number) {
        return jsonArrayBuilder.add(JsonElementKt.JsonPrimitive(number));
    }

    @Nullable
    public static final JsonElement put(@NotNull JsonObjectBuilder jsonObjectBuilder, @NotNull String str, @Nullable Number number) {
        return jsonObjectBuilder.put(str, JsonElementKt.JsonPrimitive(number));
    }

    public static final boolean add(@NotNull JsonArrayBuilder jsonArrayBuilder, @Nullable String str) {
        return jsonArrayBuilder.add(JsonElementKt.JsonPrimitive(str));
    }

    @Nullable
    public static final JsonElement put(@NotNull JsonObjectBuilder jsonObjectBuilder, @NotNull String str, @Nullable String str2) {
        return jsonObjectBuilder.put(str, JsonElementKt.JsonPrimitive(str2));
    }

    @ExperimentalSerializationApi
    public static final boolean add(@NotNull JsonArrayBuilder jsonArrayBuilder, @Nullable Void r1) {
        return jsonArrayBuilder.add(JsonNull.INSTANCE);
    }

    @ExperimentalSerializationApi
    @Nullable
    public static final JsonElement put(@NotNull JsonObjectBuilder jsonObjectBuilder, @NotNull String str, @Nullable Void r2) {
        return jsonObjectBuilder.put(str, JsonNull.INSTANCE);
    }
}
