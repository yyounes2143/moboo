package kotlinx.serialization.json.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.internal.JsonInternalDependenciesKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonNamingStrategy;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import kotlinx.serialization.json.JsonSchemaCacheKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0012\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ \u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0007H\u0002J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\tH\u0016J\u0018\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u000fH\u0002J\b\u0010\u0018\u001a\u00020\u0011H\u0016J\u0018\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u000fH\u0014J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u0007H\u0014J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0013\u001a\u00020\tH\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0013\u001a\u00020\tH\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lkotlinx/serialization/json/internal/JsonTreeDecoder;", "Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;", "json", "Lkotlinx/serialization/json/Json;", "value", "Lkotlinx/serialization/json/JsonObject;", "polymorphicDiscriminator", "", "polyDescriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "<init>", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V", "getValue", "()Lkotlinx/serialization/json/JsonObject;", "position", "", "forceNull", "", "coerceInputValue", "descriptor", FirebaseAnalytics.Param.INDEX, "tag", "decodeElementIndex", "absenceIsNull", "decodeNotNullMark", "elementName", "currentElement", "Lkotlinx/serialization/json/JsonElement;", "beginStructure", "Lkotlinx/serialization/encoding/CompositeDecoder;", "endStructure", "", "kotlinx-serialization-json"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTreeJsonDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonTreeDecoder\n+ 2 JsonNamesMap.kt\nkotlinx/serialization/json/internal/JsonNamesMapKt\n+ 3 JsonNamesMap.kt\nkotlinx/serialization/json/internal/JsonNamesMapKt$tryCoerceValue$1\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/AbstractJsonTreeDecoder\n+ 6 TreeJsonEncoder.kt\nkotlinx/serialization/json/internal/TreeJsonEncoderKt\n*L\n1#1,334:1\n125#2,22:335\n147#2,4:358\n131#3:357\n1#4:362\n74#5:363\n271#6,8:364\n*S KotlinDebug\n*F\n+ 1 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonTreeDecoder\n*L\n200#1:335,22\n200#1:358,4\n200#1:357\n262#1:363\n262#1:364,8\n*E\n"})
/* loaded from: classes7.dex */
public class JsonTreeDecoder extends AbstractJsonTreeDecoder {
    private boolean forceNull;
    @Nullable
    private final SerialDescriptor polyDescriptor;
    private int position;
    @NotNull
    private final JsonObject value;

    public /* synthetic */ JsonTreeDecoder(Json json, JsonObject jsonObject, String str, SerialDescriptor serialDescriptor, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(json, jsonObject, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : serialDescriptor);
    }

    private final boolean absenceIsNull(SerialDescriptor serialDescriptor, int i) {
        boolean z;
        if (!getJson().getConfiguration().getExplicitNulls() && !serialDescriptor.isElementOptional(i) && serialDescriptor.getElementDescriptor(i).isNullable()) {
            z = true;
        } else {
            z = false;
        }
        this.forceNull = z;
        return z;
    }

    private final boolean coerceInputValue(SerialDescriptor serialDescriptor, int i, String str) {
        JsonPrimitive jsonPrimitive;
        boolean z;
        Json json = getJson();
        boolean isElementOptional = serialDescriptor.isElementOptional(i);
        SerialDescriptor elementDescriptor = serialDescriptor.getElementDescriptor(i);
        if (isElementOptional && !elementDescriptor.isNullable() && (currentElement(str) instanceof JsonNull)) {
            return true;
        }
        if (!Intrinsics.areEqual(elementDescriptor.getKind(), SerialKind.ENUM.INSTANCE) || (elementDescriptor.isNullable() && (currentElement(str) instanceof JsonNull))) {
            return false;
        }
        JsonElement currentElement = currentElement(str);
        String str2 = null;
        if (currentElement instanceof JsonPrimitive) {
            jsonPrimitive = (JsonPrimitive) currentElement;
        } else {
            jsonPrimitive = null;
        }
        if (jsonPrimitive != null) {
            str2 = JsonElementKt.getContentOrNull(jsonPrimitive);
        }
        if (str2 == null) {
            return false;
        }
        int jsonNameIndex = JsonNamesMapKt.getJsonNameIndex(elementDescriptor, json, str2);
        if (!json.getConfiguration().getExplicitNulls() && elementDescriptor.isNullable()) {
            z = true;
        } else {
            z = false;
        }
        if (jsonNameIndex == -3 && (isElementOptional || z)) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder, kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.Decoder
    @NotNull
    public CompositeDecoder beginStructure(@NotNull SerialDescriptor serialDescriptor) {
        if (serialDescriptor == this.polyDescriptor) {
            Json json = getJson();
            JsonElement currentObject = currentObject();
            String serialName = this.polyDescriptor.getSerialName();
            if (currentObject instanceof JsonObject) {
                return new JsonTreeDecoder(json, (JsonObject) currentObject, getPolymorphicDiscriminator(), this.polyDescriptor);
            }
            throw JsonExceptionsKt.JsonDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonObject.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentObject.getClass()).getSimpleName() + " as the serialized body of " + serialName + " at element: " + renderTagStack(), currentObject.toString());
        }
        return super.beginStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    @NotNull
    public JsonElement currentElement(@NotNull String str) {
        return (JsonElement) MapsKt.getValue(getValue(), str);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public int decodeElementIndex(@NotNull SerialDescriptor serialDescriptor) {
        while (this.position < serialDescriptor.getElementsCount()) {
            int i = this.position;
            this.position = i + 1;
            String tag = getTag(serialDescriptor, i);
            int i2 = this.position - 1;
            this.forceNull = false;
            if (getValue().containsKey((Object) tag) || absenceIsNull(serialDescriptor, i2)) {
                if (!this.configuration.getCoerceInputValues() || !coerceInputValue(serialDescriptor, i2, tag)) {
                    return i2;
                }
            }
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder, kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.Decoder
    public boolean decodeNotNullMark() {
        if (!this.forceNull && super.decodeNotNullMark()) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.serialization.internal.NamedValueDecoder
    @NotNull
    public String elementName(@NotNull SerialDescriptor serialDescriptor, int i) {
        String str;
        Object obj;
        JsonNamingStrategy namingStrategy = JsonNamesMapKt.namingStrategy(serialDescriptor, getJson());
        String elementName = serialDescriptor.getElementName(i);
        if (namingStrategy != null || (this.configuration.getUseAlternativeNames() && !getValue().keySet().contains(elementName))) {
            Map<String, Integer> deserializationNamesMap = JsonNamesMapKt.deserializationNamesMap(getJson(), serialDescriptor);
            Iterator<T> it = getValue().keySet().iterator();
            while (true) {
                str = null;
                if (it.hasNext()) {
                    obj = it.next();
                    Integer num = deserializationNamesMap.get((String) obj);
                    if (num != null && num.intValue() == i) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            String str2 = (String) obj;
            if (str2 != null) {
                return str2;
            }
            if (namingStrategy != null) {
                str = namingStrategy.serialNameForJson(serialDescriptor, i, elementName);
            }
            if (str != null) {
                return str;
            }
        }
        return elementName;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder, kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.CompositeDecoder
    public void endStructure(@NotNull SerialDescriptor serialDescriptor) {
        Set set;
        Set<String> plus;
        if (!this.configuration.getIgnoreUnknownKeys() && !(serialDescriptor.getKind() instanceof PolymorphicKind)) {
            JsonNamingStrategy namingStrategy = JsonNamesMapKt.namingStrategy(serialDescriptor, getJson());
            if (namingStrategy == null && !this.configuration.getUseAlternativeNames()) {
                plus = JsonInternalDependenciesKt.jsonCachedSerialNames(serialDescriptor);
            } else if (namingStrategy != null) {
                plus = JsonNamesMapKt.deserializationNamesMap(getJson(), serialDescriptor).keySet();
            } else {
                Set<String> jsonCachedSerialNames = JsonInternalDependenciesKt.jsonCachedSerialNames(serialDescriptor);
                Map map = (Map) JsonSchemaCacheKt.getSchemaCache(getJson()).get(serialDescriptor, JsonNamesMapKt.getJsonDeserializationNamesKey());
                if (map != null) {
                    set = map.keySet();
                } else {
                    set = null;
                }
                if (set == null) {
                    set = SetsKt.emptySet();
                }
                plus = SetsKt.plus((Set) jsonCachedSerialNames, (Iterable) set);
            }
            for (String str : getValue().keySet()) {
                if (!plus.contains(str) && !Intrinsics.areEqual(str, getPolymorphicDiscriminator())) {
                    throw JsonExceptionsKt.UnknownKeyException(str, getValue().toString());
                }
            }
        }
    }

    public JsonTreeDecoder(@NotNull Json json, @NotNull JsonObject jsonObject, @Nullable String str, @Nullable SerialDescriptor serialDescriptor) {
        super(json, jsonObject, str, null);
        this.value = jsonObject;
        this.polyDescriptor = serialDescriptor;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    @NotNull
    public JsonObject getValue() {
        return this.value;
    }
}
