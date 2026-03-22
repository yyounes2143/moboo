package com.vungle.ads.internal.model;

import com.vungle.ads.internal.model.DeviceNode;
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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/DeviceNode.VungleExt.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
/* loaded from: classes6.dex */
public final class DeviceNode$VungleExt$$serializer implements GeneratedSerializer<DeviceNode.VungleExt> {
    @NotNull
    public static final DeviceNode$VungleExt$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        DeviceNode$VungleExt$$serializer deviceNode$VungleExt$$serializer = new DeviceNode$VungleExt$$serializer();
        INSTANCE = deviceNode$VungleExt$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.DeviceNode.VungleExt", deviceNode$VungleExt$$serializer, 21);
        pluginGeneratedSerialDescriptor.addElement("is_google_play_services_available", true);
        pluginGeneratedSerialDescriptor.addElement("app_set_id", true);
        pluginGeneratedSerialDescriptor.addElement("app_set_id_scope", true);
        pluginGeneratedSerialDescriptor.addElement("battery_level", true);
        pluginGeneratedSerialDescriptor.addElement("battery_state", true);
        pluginGeneratedSerialDescriptor.addElement("battery_saver_enabled", true);
        pluginGeneratedSerialDescriptor.addElement("connection_type", true);
        pluginGeneratedSerialDescriptor.addElement("connection_type_detail", true);
        pluginGeneratedSerialDescriptor.addElement("locale", true);
        pluginGeneratedSerialDescriptor.addElement("language", true);
        pluginGeneratedSerialDescriptor.addElement("time_zone", true);
        pluginGeneratedSerialDescriptor.addElement("volume_level", true);
        pluginGeneratedSerialDescriptor.addElement("sound_enabled", true);
        pluginGeneratedSerialDescriptor.addElement("is_tv", true);
        pluginGeneratedSerialDescriptor.addElement("sd_card_available", true);
        pluginGeneratedSerialDescriptor.addElement("is_sideload_enabled", true);
        pluginGeneratedSerialDescriptor.addElement("gaid", true);
        pluginGeneratedSerialDescriptor.addElement("amazon_advertising_id", true);
        pluginGeneratedSerialDescriptor.addElement("oit", true);
        pluginGeneratedSerialDescriptor.addElement("ort", true);
        pluginGeneratedSerialDescriptor.addElement("obt", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private DeviceNode$VungleExt$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    @NotNull
    public KSerializer<?>[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        KSerializer<?> nullable = BuiltinSerializersKt.getNullable(stringSerializer);
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        KSerializer<?> nullable2 = BuiltinSerializersKt.getNullable(intSerializer);
        KSerializer<?> nullable3 = BuiltinSerializersKt.getNullable(stringSerializer);
        KSerializer<?> nullable4 = BuiltinSerializersKt.getNullable(stringSerializer);
        KSerializer<?> nullable5 = BuiltinSerializersKt.getNullable(stringSerializer);
        KSerializer<?> nullable6 = BuiltinSerializersKt.getNullable(stringSerializer);
        KSerializer<?> nullable7 = BuiltinSerializersKt.getNullable(stringSerializer);
        KSerializer<?> nullable8 = BuiltinSerializersKt.getNullable(stringSerializer);
        KSerializer<?> nullable9 = BuiltinSerializersKt.getNullable(stringSerializer);
        KSerializer<?> nullable10 = BuiltinSerializersKt.getNullable(stringSerializer);
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        KSerializer<?> nullable11 = BuiltinSerializersKt.getNullable(longSerializer);
        KSerializer<?> nullable12 = BuiltinSerializersKt.getNullable(longSerializer);
        KSerializer<?> nullable13 = BuiltinSerializersKt.getNullable(longSerializer);
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        FloatSerializer floatSerializer = FloatSerializer.INSTANCE;
        return new KSerializer[]{booleanSerializer, nullable, nullable2, floatSerializer, nullable3, intSerializer, nullable4, nullable5, nullable6, nullable7, nullable8, floatSerializer, intSerializer, booleanSerializer, intSerializer, booleanSerializer, nullable9, nullable10, nullable11, nullable12, nullable13};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    @NotNull
    public DeviceNode.VungleExt deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        int i;
        String str;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        boolean z;
        float f;
        Object obj9;
        int i2;
        boolean z2;
        boolean z3;
        int i3;
        float f2;
        int i4;
        Object obj10;
        Object obj11;
        Object obj12;
        Object obj13;
        int i5;
        Object obj14;
        Object obj15;
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        int i6 = 0;
        if (beginStructure.decodeSequentially()) {
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 0);
            StringSerializer stringSerializer = StringSerializer.INSTANCE;
            Object decodeNullableSerializableElement = beginStructure.decodeNullableSerializableElement(descriptor2, 1, stringSerializer, null);
            obj12 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, IntSerializer.INSTANCE, null);
            float decodeFloatElement = beginStructure.decodeFloatElement(descriptor2, 3);
            obj11 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, stringSerializer, null);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 5);
            obj9 = beginStructure.decodeNullableSerializableElement(descriptor2, 6, stringSerializer, null);
            obj10 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, stringSerializer, null);
            obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, stringSerializer, null);
            obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 9, stringSerializer, null);
            obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, stringSerializer, null);
            float decodeFloatElement2 = beginStructure.decodeFloatElement(descriptor2, 11);
            int decodeIntElement2 = beginStructure.decodeIntElement(descriptor2, 12);
            boolean decodeBooleanElement2 = beginStructure.decodeBooleanElement(descriptor2, 13);
            int decodeIntElement3 = beginStructure.decodeIntElement(descriptor2, 14);
            boolean decodeBooleanElement3 = beginStructure.decodeBooleanElement(descriptor2, 15);
            str = decodeNullableSerializableElement;
            Object decodeNullableSerializableElement2 = beginStructure.decodeNullableSerializableElement(descriptor2, 16, stringSerializer, null);
            Object decodeNullableSerializableElement3 = beginStructure.decodeNullableSerializableElement(descriptor2, 17, stringSerializer, null);
            LongSerializer longSerializer = LongSerializer.INSTANCE;
            obj5 = decodeNullableSerializableElement3;
            obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 18, longSerializer, null);
            f = decodeFloatElement;
            i = 2097151;
            i2 = decodeIntElement2;
            i3 = decodeIntElement;
            f2 = decodeFloatElement2;
            z = decodeBooleanElement3;
            i4 = decodeIntElement3;
            z3 = decodeBooleanElement2;
            z2 = decodeBooleanElement;
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 19, longSerializer, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 20, longSerializer, null);
            obj3 = decodeNullableSerializableElement2;
        } else {
            obj = null;
            boolean z4 = true;
            Object obj16 = null;
            Object obj17 = null;
            Object obj18 = null;
            Object obj19 = null;
            Object obj20 = null;
            Object obj21 = null;
            Object obj22 = null;
            Object obj23 = null;
            Object obj24 = null;
            Object obj25 = null;
            String str2 = null;
            int i7 = 0;
            boolean z5 = false;
            int i8 = 0;
            boolean z6 = false;
            boolean z7 = false;
            int i9 = 0;
            float f3 = 0.0f;
            float f4 = 0.0f;
            obj2 = null;
            while (z4) {
                int i10 = i7;
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        obj14 = str2;
                        z4 = false;
                        obj16 = obj16;
                        str2 = obj14;
                        i7 = i10;
                    case 0:
                        obj14 = str2;
                        z6 = beginStructure.decodeBooleanElement(descriptor2, 0);
                        i6 |= 1;
                        obj16 = obj16;
                        obj17 = obj17;
                        str2 = obj14;
                        i7 = i10;
                    case 1:
                        obj15 = obj17;
                        i6 |= 2;
                        str2 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, StringSerializer.INSTANCE, str2);
                        obj16 = obj16;
                        obj17 = obj15;
                        i7 = i10;
                    case 2:
                        obj15 = obj17;
                        obj16 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, IntSerializer.INSTANCE, obj16);
                        i6 |= 4;
                        obj17 = obj15;
                        i7 = i10;
                    case 3:
                        obj13 = obj16;
                        f3 = beginStructure.decodeFloatElement(descriptor2, 3);
                        i6 |= 8;
                        i7 = i10;
                        break;
                    case 4:
                        obj13 = obj16;
                        obj20 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, StringSerializer.INSTANCE, obj20);
                        i6 |= 16;
                        i7 = i10;
                        break;
                    case 5:
                        obj13 = obj16;
                        i9 = beginStructure.decodeIntElement(descriptor2, 5);
                        i6 |= 32;
                        i7 = i10;
                        break;
                    case 6:
                        obj13 = obj16;
                        obj17 = beginStructure.decodeNullableSerializableElement(descriptor2, 6, StringSerializer.INSTANCE, obj17);
                        i6 |= 64;
                        i7 = i10;
                        break;
                    case 7:
                        obj13 = obj16;
                        obj18 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, StringSerializer.INSTANCE, obj18);
                        i6 |= 128;
                        i7 = i10;
                        break;
                    case 8:
                        obj13 = obj16;
                        obj25 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, StringSerializer.INSTANCE, obj25);
                        i6 |= 256;
                        i7 = i10;
                        break;
                    case 9:
                        obj13 = obj16;
                        obj24 = beginStructure.decodeNullableSerializableElement(descriptor2, 9, StringSerializer.INSTANCE, obj24);
                        i6 |= 512;
                        i7 = i10;
                        break;
                    case 10:
                        obj13 = obj16;
                        obj23 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, StringSerializer.INSTANCE, obj23);
                        i6 |= 1024;
                        i7 = i10;
                        break;
                    case 11:
                        obj13 = obj16;
                        f4 = beginStructure.decodeFloatElement(descriptor2, 11);
                        i6 |= 2048;
                        i7 = i10;
                        break;
                    case 12:
                        obj13 = obj16;
                        i8 = beginStructure.decodeIntElement(descriptor2, 12);
                        i6 |= 4096;
                        i7 = i10;
                        break;
                    case 13:
                        obj13 = obj16;
                        z7 = beginStructure.decodeBooleanElement(descriptor2, 13);
                        i6 |= 8192;
                        i7 = i10;
                        break;
                    case 14:
                        obj13 = obj16;
                        i6 |= 16384;
                        i7 = beginStructure.decodeIntElement(descriptor2, 14);
                        break;
                    case 15:
                        obj13 = obj16;
                        z5 = beginStructure.decodeBooleanElement(descriptor2, 15);
                        i6 |= 32768;
                        i7 = i10;
                        break;
                    case 16:
                        obj13 = obj16;
                        obj19 = beginStructure.decodeNullableSerializableElement(descriptor2, 16, StringSerializer.INSTANCE, obj19);
                        i5 = 65536;
                        i6 |= i5;
                        i7 = i10;
                        break;
                    case 17:
                        obj13 = obj16;
                        obj22 = beginStructure.decodeNullableSerializableElement(descriptor2, 17, StringSerializer.INSTANCE, obj22);
                        i5 = 131072;
                        i6 |= i5;
                        i7 = i10;
                        break;
                    case 18:
                        obj13 = obj16;
                        obj21 = beginStructure.decodeNullableSerializableElement(descriptor2, 18, LongSerializer.INSTANCE, obj21);
                        i5 = 262144;
                        i6 |= i5;
                        i7 = i10;
                        break;
                    case 19:
                        obj13 = obj16;
                        obj = beginStructure.decodeNullableSerializableElement(descriptor2, 19, LongSerializer.INSTANCE, obj);
                        i5 = 524288;
                        i6 |= i5;
                        i7 = i10;
                        break;
                    case 20:
                        obj13 = obj16;
                        obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 20, LongSerializer.INSTANCE, obj2);
                        i5 = 1048576;
                        i6 |= i5;
                        i7 = i10;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
                obj16 = obj13;
            }
            int i11 = i7;
            String str3 = str2;
            Object obj26 = obj16;
            obj3 = obj19;
            i = i6;
            str = str3;
            obj4 = obj21;
            obj5 = obj22;
            obj6 = obj23;
            obj7 = obj24;
            obj8 = obj25;
            z = z5;
            f = f3;
            obj9 = obj17;
            i2 = i8;
            z2 = z6;
            z3 = z7;
            i3 = i9;
            f2 = f4;
            i4 = i11;
            obj10 = obj18;
            obj11 = obj20;
            obj12 = obj26;
        }
        beginStructure.endStructure(descriptor2);
        return new DeviceNode.VungleExt(i, z2, str, (Integer) obj12, f, (String) obj11, i3, (String) obj9, (String) obj10, (String) obj8, (String) obj7, (String) obj6, f2, i2, z3, i4, z, (String) obj3, (String) obj5, (Long) obj4, (Long) obj, (Long) obj2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(@NotNull Encoder encoder, @NotNull DeviceNode.VungleExt vungleExt) {
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        DeviceNode.VungleExt.write$Self(vungleExt, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
