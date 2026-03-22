package com.vungle.ads.internal.model;

import com.vungle.ads.internal.model.ConfigPayload;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/ConfigPayload.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
/* loaded from: classes6.dex */
public final class ConfigPayload$$serializer implements GeneratedSerializer<ConfigPayload> {
    @NotNull
    public static final ConfigPayload$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        ConfigPayload$$serializer configPayload$$serializer = new ConfigPayload$$serializer();
        INSTANCE = configPayload$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.ConfigPayload", configPayload$$serializer, 19);
        pluginGeneratedSerialDescriptor.addElement("reuse_assets", true);
        pluginGeneratedSerialDescriptor.addElement("config", true);
        pluginGeneratedSerialDescriptor.addElement("endpoints", true);
        pluginGeneratedSerialDescriptor.addElement("log_metrics", true);
        pluginGeneratedSerialDescriptor.addElement("placements", true);
        pluginGeneratedSerialDescriptor.addElement("user", true);
        pluginGeneratedSerialDescriptor.addElement(Cookie.CONFIG_EXTENSION, true);
        pluginGeneratedSerialDescriptor.addElement(Cookie.COPPA_DISABLE_AD_ID, true);
        pluginGeneratedSerialDescriptor.addElement("ri_enabled", true);
        pluginGeneratedSerialDescriptor.addElement("session_timeout", true);
        pluginGeneratedSerialDescriptor.addElement("wait_for_connectivity_for_tpat", true);
        pluginGeneratedSerialDescriptor.addElement("sdk_session_timeout", true);
        pluginGeneratedSerialDescriptor.addElement("signals_disabled", true);
        pluginGeneratedSerialDescriptor.addElement("fpd_enabled", true);
        pluginGeneratedSerialDescriptor.addElement("rta_debugging", true);
        pluginGeneratedSerialDescriptor.addElement("config_last_validated_ts", true);
        pluginGeneratedSerialDescriptor.addElement("auto_redirect", true);
        pluginGeneratedSerialDescriptor.addElement("retry_prioritized_tpat", true);
        pluginGeneratedSerialDescriptor.addElement("enable_ot", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private ConfigPayload$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    @NotNull
    public KSerializer<?>[] childSerializers() {
        KSerializer<?> nullable = BuiltinSerializersKt.getNullable(ConfigPayload$CleverCache$$serializer.INSTANCE);
        KSerializer<?> nullable2 = BuiltinSerializersKt.getNullable(ConfigPayload$ConfigSettings$$serializer.INSTANCE);
        KSerializer<?> nullable3 = BuiltinSerializersKt.getNullable(ConfigPayload$Endpoints$$serializer.INSTANCE);
        KSerializer<?> nullable4 = BuiltinSerializersKt.getNullable(ConfigPayload$LogMetricsSettings$$serializer.INSTANCE);
        KSerializer<?> nullable5 = BuiltinSerializersKt.getNullable(new ArrayListSerializer(Placement$$serializer.INSTANCE));
        KSerializer<?> nullable6 = BuiltinSerializersKt.getNullable(ConfigPayload$UserPrivacy$$serializer.INSTANCE);
        KSerializer<?> nullable7 = BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE);
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        KSerializer<?> nullable8 = BuiltinSerializersKt.getNullable(booleanSerializer);
        KSerializer<?> nullable9 = BuiltinSerializersKt.getNullable(booleanSerializer);
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{nullable, nullable2, nullable3, nullable4, nullable5, nullable6, nullable7, nullable8, nullable9, BuiltinSerializersKt.getNullable(intSerializer), BuiltinSerializersKt.getNullable(booleanSerializer), BuiltinSerializersKt.getNullable(intSerializer), BuiltinSerializersKt.getNullable(booleanSerializer), BuiltinSerializersKt.getNullable(booleanSerializer), BuiltinSerializersKt.getNullable(booleanSerializer), BuiltinSerializersKt.getNullable(LongSerializer.INSTANCE), BuiltinSerializersKt.getNullable(ConfigPayload$AutoRedirect$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(booleanSerializer), BuiltinSerializersKt.getNullable(booleanSerializer)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    @NotNull
    public ConfigPayload deserialize(@NotNull Decoder decoder) {
        Object obj;
        Boolean bool;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj9;
        Object obj10;
        int i;
        Object obj11;
        Object obj12;
        Object obj13;
        Object obj14;
        Object obj15;
        Object obj16;
        Object obj17;
        Object obj18;
        Object obj19;
        Object obj20;
        Boolean bool2;
        Object obj21;
        Boolean bool3;
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            Object decodeNullableSerializableElement = beginStructure.decodeNullableSerializableElement(descriptor2, 0, ConfigPayload$CleverCache$$serializer.INSTANCE, null);
            obj10 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, ConfigPayload$ConfigSettings$$serializer.INSTANCE, null);
            obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, ConfigPayload$Endpoints$$serializer.INSTANCE, null);
            Object decodeNullableSerializableElement2 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, ConfigPayload$LogMetricsSettings$$serializer.INSTANCE, null);
            Object decodeNullableSerializableElement3 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, new ArrayListSerializer(Placement$$serializer.INSTANCE), null);
            obj14 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, ConfigPayload$UserPrivacy$$serializer.INSTANCE, null);
            obj18 = beginStructure.decodeNullableSerializableElement(descriptor2, 6, StringSerializer.INSTANCE, null);
            BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
            obj17 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, booleanSerializer, null);
            obj16 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, booleanSerializer, null);
            IntSerializer intSerializer = IntSerializer.INSTANCE;
            obj15 = beginStructure.decodeNullableSerializableElement(descriptor2, 9, intSerializer, null);
            obj13 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, booleanSerializer, null);
            Object decodeNullableSerializableElement4 = beginStructure.decodeNullableSerializableElement(descriptor2, 11, intSerializer, null);
            Object decodeNullableSerializableElement5 = beginStructure.decodeNullableSerializableElement(descriptor2, 12, booleanSerializer, null);
            obj12 = decodeNullableSerializableElement4;
            obj9 = beginStructure.decodeNullableSerializableElement(descriptor2, 13, booleanSerializer, null);
            obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, 14, booleanSerializer, null);
            obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 15, LongSerializer.INSTANCE, null);
            Object decodeNullableSerializableElement6 = beginStructure.decodeNullableSerializableElement(descriptor2, 16, ConfigPayload$AutoRedirect$$serializer.INSTANCE, null);
            Object decodeNullableSerializableElement7 = beginStructure.decodeNullableSerializableElement(descriptor2, 17, booleanSerializer, null);
            bool = beginStructure.decodeNullableSerializableElement(descriptor2, 18, booleanSerializer, null);
            obj4 = decodeNullableSerializableElement2;
            obj2 = decodeNullableSerializableElement7;
            obj6 = decodeNullableSerializableElement6;
            obj3 = decodeNullableSerializableElement;
            i = 524287;
            obj11 = decodeNullableSerializableElement5;
            obj = decodeNullableSerializableElement3;
        } else {
            boolean z = true;
            Object obj22 = null;
            Object obj23 = null;
            Object obj24 = null;
            Object obj25 = null;
            Boolean bool4 = null;
            Object obj26 = null;
            Object obj27 = null;
            Object obj28 = null;
            Object obj29 = null;
            Object obj30 = null;
            obj = null;
            Object obj31 = null;
            Object obj32 = null;
            Object obj33 = null;
            Object obj34 = null;
            Object obj35 = null;
            Object obj36 = null;
            Object obj37 = null;
            int i2 = 0;
            Object obj38 = null;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        obj19 = obj38;
                        obj20 = obj22;
                        bool2 = bool4;
                        z = false;
                        bool4 = bool2;
                        obj38 = obj19;
                        obj22 = obj20;
                        break;
                    case 0:
                        obj20 = obj22;
                        bool2 = bool4;
                        obj19 = obj38;
                        obj37 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, ConfigPayload$CleverCache$$serializer.INSTANCE, obj37);
                        i2 |= 1;
                        bool4 = bool2;
                        obj38 = obj19;
                        obj22 = obj20;
                        break;
                    case 1:
                        obj20 = obj22;
                        i2 |= 2;
                        obj38 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, ConfigPayload$ConfigSettings$$serializer.INSTANCE, obj38);
                        bool4 = bool4;
                        obj22 = obj20;
                        break;
                    case 2:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj25 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, ConfigPayload$Endpoints$$serializer.INSTANCE, obj25);
                        i2 |= 4;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 3:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj24 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, ConfigPayload$LogMetricsSettings$$serializer.INSTANCE, obj24);
                        i2 |= 8;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 4:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj = beginStructure.decodeNullableSerializableElement(descriptor2, 4, new ArrayListSerializer(Placement$$serializer.INSTANCE), obj);
                        i2 |= 16;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 5:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj22 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, ConfigPayload$UserPrivacy$$serializer.INSTANCE, obj22);
                        i2 |= 32;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 6:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj30 = beginStructure.decodeNullableSerializableElement(descriptor2, 6, StringSerializer.INSTANCE, obj30);
                        i2 |= 64;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 7:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj29 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, BooleanSerializer.INSTANCE, obj29);
                        i2 |= 128;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 8:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj28 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, BooleanSerializer.INSTANCE, obj28);
                        i2 |= 256;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 9:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj23 = beginStructure.decodeNullableSerializableElement(descriptor2, 9, IntSerializer.INSTANCE, obj23);
                        i2 |= 512;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 10:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj27 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, BooleanSerializer.INSTANCE, obj27);
                        i2 |= 1024;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 11:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj26 = beginStructure.decodeNullableSerializableElement(descriptor2, 11, IntSerializer.INSTANCE, obj26);
                        i2 |= 2048;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 12:
                        obj21 = obj38;
                        obj31 = beginStructure.decodeNullableSerializableElement(descriptor2, 12, BooleanSerializer.INSTANCE, obj31);
                        i2 |= 4096;
                        bool4 = bool4;
                        obj32 = obj32;
                        obj38 = obj21;
                        break;
                    case 13:
                        obj21 = obj38;
                        obj32 = beginStructure.decodeNullableSerializableElement(descriptor2, 13, BooleanSerializer.INSTANCE, obj32);
                        i2 |= 8192;
                        bool4 = bool4;
                        obj33 = obj33;
                        obj38 = obj21;
                        break;
                    case 14:
                        obj21 = obj38;
                        obj33 = beginStructure.decodeNullableSerializableElement(descriptor2, 14, BooleanSerializer.INSTANCE, obj33);
                        i2 |= 16384;
                        bool4 = bool4;
                        obj34 = obj34;
                        obj38 = obj21;
                        break;
                    case 15:
                        obj21 = obj38;
                        obj34 = beginStructure.decodeNullableSerializableElement(descriptor2, 15, LongSerializer.INSTANCE, obj34);
                        i2 |= 32768;
                        bool4 = bool4;
                        obj35 = obj35;
                        obj38 = obj21;
                        break;
                    case 16:
                        obj21 = obj38;
                        obj35 = beginStructure.decodeNullableSerializableElement(descriptor2, 16, ConfigPayload$AutoRedirect$$serializer.INSTANCE, obj35);
                        i2 |= 65536;
                        bool4 = bool4;
                        obj36 = obj36;
                        obj38 = obj21;
                        break;
                    case 17:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj36 = beginStructure.decodeNullableSerializableElement(descriptor2, 17, BooleanSerializer.INSTANCE, obj36);
                        i2 |= 131072;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 18:
                        bool4 = beginStructure.decodeNullableSerializableElement(descriptor2, 18, BooleanSerializer.INSTANCE, bool4);
                        i2 |= 262144;
                        obj38 = obj38;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            Object obj39 = obj38;
            Object obj40 = obj22;
            bool = bool4;
            obj2 = obj36;
            obj3 = obj37;
            obj4 = obj24;
            obj5 = obj25;
            obj6 = obj35;
            obj7 = obj34;
            obj8 = obj33;
            obj9 = obj32;
            obj10 = obj39;
            i = i2;
            obj11 = obj31;
            obj12 = obj26;
            obj13 = obj27;
            obj14 = obj40;
            obj15 = obj23;
            obj16 = obj28;
            obj17 = obj29;
            obj18 = obj30;
        }
        beginStructure.endStructure(descriptor2);
        return new ConfigPayload(i, (ConfigPayload.CleverCache) obj3, (ConfigPayload.ConfigSettings) obj10, (ConfigPayload.Endpoints) obj5, (ConfigPayload.LogMetricsSettings) obj4, (List) obj, (ConfigPayload.UserPrivacy) obj14, (String) obj18, (Boolean) obj17, (Boolean) obj16, (Integer) obj15, (Boolean) obj13, (Integer) obj12, (Boolean) obj11, (Boolean) obj9, (Boolean) obj8, (Long) obj7, (ConfigPayload.AutoRedirect) obj6, (Boolean) obj2, bool, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(@NotNull Encoder encoder, @NotNull ConfigPayload configPayload) {
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        ConfigPayload.write$Self(configPayload, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
