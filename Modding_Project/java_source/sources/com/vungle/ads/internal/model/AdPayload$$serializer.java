package com.vungle.ads.internal.model;

import com.mbridge.msdk.foundation.entity.b;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.ContextualSerializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/AdPayload.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/AdPayload;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
/* loaded from: classes6.dex */
public final class AdPayload$$serializer implements GeneratedSerializer<AdPayload> {
    @NotNull
    public static final AdPayload$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        AdPayload$$serializer adPayload$$serializer = new AdPayload$$serializer();
        INSTANCE = adPayload$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.AdPayload", adPayload$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement(b.JSON_KEY_ADS, true);
        pluginGeneratedSerialDescriptor.addElement("config", true);
        pluginGeneratedSerialDescriptor.addElement("mraidFiles", true);
        pluginGeneratedSerialDescriptor.addElement("incentivizedTextSettings", true);
        pluginGeneratedSerialDescriptor.addElement("assetsFullyDownloaded", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private AdPayload$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    @NotNull
    public KSerializer<?>[] childSerializers() {
        KSerializer<?> nullable = BuiltinSerializersKt.getNullable(new ArrayListSerializer(AdPayload$PlacementAdUnit$$serializer.INSTANCE));
        KSerializer<?> nullable2 = BuiltinSerializersKt.getNullable(ConfigPayload$$serializer.INSTANCE);
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConcurrentHashMap.class);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{nullable, nullable2, new ContextualSerializer(orCreateKotlinClass, null, new KSerializer[]{stringSerializer, stringSerializer}), new LinkedHashMapSerializer(stringSerializer, stringSerializer), BooleanSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    @NotNull
    public AdPayload deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        boolean z;
        int i;
        Object obj4;
        int i2;
        Object obj5;
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        int i3 = 3;
        int i4 = 4;
        int i5 = 0;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 0, new ArrayListSerializer(AdPayload$PlacementAdUnit$$serializer.INSTANCE), null);
            obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, ConfigPayload$$serializer.INSTANCE, null);
            KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConcurrentHashMap.class);
            StringSerializer stringSerializer = StringSerializer.INSTANCE;
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 2, new ContextualSerializer(orCreateKotlinClass, null, new KSerializer[]{stringSerializer, stringSerializer}), null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 3, new LinkedHashMapSerializer(stringSerializer, stringSerializer), null);
            i = 31;
            z = beginStructure.decodeBooleanElement(descriptor2, 4);
        } else {
            int i6 = 1;
            boolean z2 = false;
            int i7 = 0;
            obj = null;
            Object obj6 = null;
            Object obj7 = null;
            Object obj8 = null;
            while (i6 != 0) {
                int i8 = i5;
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex != -1) {
                    if (decodeElementIndex != 0) {
                        if (decodeElementIndex == 1) {
                            i2 = i4;
                            obj5 = null;
                            obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, ConfigPayload$$serializer.INSTANCE, obj8);
                            i7 |= 2;
                        } else if (decodeElementIndex != 2) {
                            if (decodeElementIndex == i3) {
                                StringSerializer stringSerializer2 = StringSerializer.INSTANCE;
                                obj7 = beginStructure.decodeSerializableElement(descriptor2, i3, new LinkedHashMapSerializer(stringSerializer2, stringSerializer2), obj7);
                                i7 |= 8;
                            } else if (decodeElementIndex != i4) {
                                throw new UnknownFieldException(decodeElementIndex);
                            } else {
                                z2 = beginStructure.decodeBooleanElement(descriptor2, i4);
                                i7 |= 16;
                            }
                            i5 = i8;
                        } else {
                            KClass orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(ConcurrentHashMap.class);
                            KSerializer[] kSerializerArr = new KSerializer[2];
                            StringSerializer stringSerializer3 = StringSerializer.INSTANCE;
                            kSerializerArr[i8] = stringSerializer3;
                            kSerializerArr[1] = stringSerializer3;
                            i2 = i4;
                            obj5 = null;
                            obj6 = beginStructure.decodeSerializableElement(descriptor2, 2, new ContextualSerializer(orCreateKotlinClass2, null, kSerializerArr), obj6);
                            i7 |= 4;
                        }
                        i5 = i8;
                    } else {
                        i2 = i4;
                        obj5 = null;
                        i5 = i8;
                        obj = beginStructure.decodeNullableSerializableElement(descriptor2, i5, new ArrayListSerializer(AdPayload$PlacementAdUnit$$serializer.INSTANCE), obj);
                        i7 |= 1;
                    }
                    i4 = i2;
                    i3 = 3;
                } else {
                    i5 = i8;
                    i6 = i5;
                }
            }
            obj2 = obj6;
            obj3 = obj7;
            z = z2;
            i = i7;
            obj4 = obj8;
        }
        beginStructure.endStructure(descriptor2);
        return new AdPayload(i, (List) obj, (ConfigPayload) obj4, (ConcurrentHashMap) obj2, (Map) obj3, z, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(@NotNull Encoder encoder, @NotNull AdPayload adPayload) {
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        AdPayload.write$Self(adPayload, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
