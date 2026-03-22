package com.vungle.ads.fpd;

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
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/fpd/Revenue.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/fpd/Revenue;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
/* loaded from: classes6.dex */
public final class Revenue$$serializer implements GeneratedSerializer<Revenue> {
    @NotNull
    public static final Revenue$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        Revenue$$serializer revenue$$serializer = new Revenue$$serializer();
        INSTANCE = revenue$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.fpd.Revenue", revenue$$serializer, 17);
        pluginGeneratedSerialDescriptor.addElement("total_earnings_usd", true);
        pluginGeneratedSerialDescriptor.addElement("earnings_by_placement_usd", true);
        pluginGeneratedSerialDescriptor.addElement("top_n_adomain", true);
        pluginGeneratedSerialDescriptor.addElement("is_user_a_purchaser", true);
        pluginGeneratedSerialDescriptor.addElement("is_user_a_subscriber", true);
        pluginGeneratedSerialDescriptor.addElement("last_7_days_total_spend_usd", true);
        pluginGeneratedSerialDescriptor.addElement("last_7_days_median_spend_usd", true);
        pluginGeneratedSerialDescriptor.addElement("last_7_days_mean_spend_usd", true);
        pluginGeneratedSerialDescriptor.addElement("last_30_days_total_spend_usd", true);
        pluginGeneratedSerialDescriptor.addElement("last_30_days_median_spend_usd", true);
        pluginGeneratedSerialDescriptor.addElement("last_30_days_mean_spend_usd", true);
        pluginGeneratedSerialDescriptor.addElement("last_7_days_user_pltv_usd", true);
        pluginGeneratedSerialDescriptor.addElement("last_7_days_user_ltv_usd", true);
        pluginGeneratedSerialDescriptor.addElement("last_30_days_user_pltv_usd", true);
        pluginGeneratedSerialDescriptor.addElement("last_30_days_user_ltv_usd", true);
        pluginGeneratedSerialDescriptor.addElement("last_7_days_placement_fill_rate", true);
        pluginGeneratedSerialDescriptor.addElement("last_30_days_placement_fill_rate", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private Revenue$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    @NotNull
    public KSerializer<?>[] childSerializers() {
        FloatSerializer floatSerializer = FloatSerializer.INSTANCE;
        KSerializer<?> nullable = BuiltinSerializersKt.getNullable(floatSerializer);
        KSerializer<?> nullable2 = BuiltinSerializersKt.getNullable(floatSerializer);
        KSerializer<?> nullable3 = BuiltinSerializersKt.getNullable(new ArrayListSerializer(StringSerializer.INSTANCE));
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{nullable, nullable2, nullable3, BuiltinSerializersKt.getNullable(booleanSerializer), BuiltinSerializersKt.getNullable(booleanSerializer), BuiltinSerializersKt.getNullable(floatSerializer), BuiltinSerializersKt.getNullable(floatSerializer), BuiltinSerializersKt.getNullable(floatSerializer), BuiltinSerializersKt.getNullable(floatSerializer), BuiltinSerializersKt.getNullable(floatSerializer), BuiltinSerializersKt.getNullable(floatSerializer), BuiltinSerializersKt.getNullable(floatSerializer), BuiltinSerializersKt.getNullable(floatSerializer), BuiltinSerializersKt.getNullable(floatSerializer), BuiltinSerializersKt.getNullable(floatSerializer), BuiltinSerializersKt.getNullable(floatSerializer), BuiltinSerializersKt.getNullable(floatSerializer)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    @NotNull
    public Revenue deserialize(@NotNull Decoder decoder) {
        Float f;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Float f2;
        Object obj8;
        int i;
        Object obj9;
        Object obj10;
        Object obj11;
        Object obj12;
        Object obj13;
        Object obj14;
        Object obj15;
        Object obj16;
        Object obj17;
        Object obj18;
        Float f3;
        Object obj19;
        Float f4;
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            FloatSerializer floatSerializer = FloatSerializer.INSTANCE;
            Object decodeNullableSerializableElement = beginStructure.decodeNullableSerializableElement(descriptor2, 0, floatSerializer, null);
            Object decodeNullableSerializableElement2 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, floatSerializer, null);
            Object decodeNullableSerializableElement3 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, new ArrayListSerializer(StringSerializer.INSTANCE), null);
            BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
            obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, booleanSerializer, null);
            obj14 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, booleanSerializer, null);
            obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, floatSerializer, null);
            obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, 6, floatSerializer, null);
            obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, floatSerializer, null);
            obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, floatSerializer, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 9, floatSerializer, null);
            obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, floatSerializer, null);
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 11, floatSerializer, null);
            obj13 = beginStructure.decodeNullableSerializableElement(descriptor2, 12, floatSerializer, null);
            obj12 = beginStructure.decodeNullableSerializableElement(descriptor2, 13, floatSerializer, null);
            obj11 = beginStructure.decodeNullableSerializableElement(descriptor2, 14, floatSerializer, null);
            Object decodeNullableSerializableElement4 = beginStructure.decodeNullableSerializableElement(descriptor2, 15, floatSerializer, null);
            obj9 = beginStructure.decodeNullableSerializableElement(descriptor2, 16, floatSerializer, null);
            f = decodeNullableSerializableElement2;
            i = 131071;
            f2 = decodeNullableSerializableElement;
            obj10 = decodeNullableSerializableElement4;
            obj15 = decodeNullableSerializableElement3;
        } else {
            boolean z = true;
            Object obj20 = null;
            Object obj21 = null;
            Object obj22 = null;
            Float f5 = null;
            Object obj23 = null;
            Object obj24 = null;
            Object obj25 = null;
            Object obj26 = null;
            Object obj27 = null;
            Object obj28 = null;
            Object obj29 = null;
            Object obj30 = null;
            Object obj31 = null;
            Object obj32 = null;
            Object obj33 = null;
            Float f6 = null;
            int i2 = 0;
            Object obj34 = null;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        obj16 = obj34;
                        obj17 = obj22;
                        obj18 = f6;
                        f3 = f5;
                        z = false;
                        obj22 = obj17;
                        f5 = f3;
                        f6 = obj18;
                        obj34 = obj16;
                        break;
                    case 0:
                        obj16 = obj34;
                        obj17 = obj22;
                        Float f7 = f5;
                        Float f8 = f6;
                        f3 = f7;
                        obj18 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, FloatSerializer.INSTANCE, f8);
                        i2 |= 1;
                        obj22 = obj17;
                        f5 = f3;
                        f6 = obj18;
                        obj34 = obj16;
                        break;
                    case 1:
                        i2 |= 2;
                        f5 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, FloatSerializer.INSTANCE, f5);
                        obj22 = obj22;
                        obj34 = obj34;
                        break;
                    case 2:
                        obj19 = obj22;
                        f4 = f5;
                        obj34 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, new ArrayListSerializer(StringSerializer.INSTANCE), obj34);
                        i2 |= 4;
                        obj22 = obj19;
                        f5 = f4;
                        break;
                    case 3:
                        obj19 = obj22;
                        f4 = f5;
                        obj21 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, BooleanSerializer.INSTANCE, obj21);
                        i2 |= 8;
                        obj22 = obj19;
                        f5 = f4;
                        break;
                    case 4:
                        obj19 = obj22;
                        f4 = f5;
                        obj20 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, BooleanSerializer.INSTANCE, obj20);
                        i2 |= 16;
                        obj22 = obj19;
                        f5 = f4;
                        break;
                    case 5:
                        obj19 = obj22;
                        f4 = f5;
                        obj27 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, FloatSerializer.INSTANCE, obj27);
                        i2 |= 32;
                        obj22 = obj19;
                        f5 = f4;
                        break;
                    case 6:
                        obj19 = obj22;
                        f4 = f5;
                        obj28 = beginStructure.decodeNullableSerializableElement(descriptor2, 6, FloatSerializer.INSTANCE, obj28);
                        i2 |= 64;
                        obj22 = obj19;
                        f5 = f4;
                        break;
                    case 7:
                        obj19 = obj22;
                        f4 = f5;
                        obj26 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, FloatSerializer.INSTANCE, obj26);
                        i2 |= 128;
                        obj22 = obj19;
                        f5 = f4;
                        break;
                    case 8:
                        obj19 = obj22;
                        f4 = f5;
                        obj25 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, FloatSerializer.INSTANCE, obj25);
                        i2 |= 256;
                        obj22 = obj19;
                        f5 = f4;
                        break;
                    case 9:
                        obj19 = obj22;
                        f4 = f5;
                        obj24 = beginStructure.decodeNullableSerializableElement(descriptor2, 9, FloatSerializer.INSTANCE, obj24);
                        i2 |= 512;
                        obj22 = obj19;
                        f5 = f4;
                        break;
                    case 10:
                        obj19 = obj22;
                        f4 = f5;
                        obj29 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, FloatSerializer.INSTANCE, obj29);
                        i2 |= 1024;
                        obj22 = obj19;
                        f5 = f4;
                        break;
                    case 11:
                        obj19 = obj22;
                        f4 = f5;
                        obj23 = beginStructure.decodeNullableSerializableElement(descriptor2, 11, FloatSerializer.INSTANCE, obj23);
                        i2 |= 2048;
                        obj22 = obj19;
                        f5 = f4;
                        break;
                    case 12:
                        f4 = f5;
                        obj30 = beginStructure.decodeNullableSerializableElement(descriptor2, 12, FloatSerializer.INSTANCE, obj30);
                        i2 |= 4096;
                        obj22 = obj22;
                        obj31 = obj31;
                        f5 = f4;
                        break;
                    case 13:
                        f4 = f5;
                        obj31 = beginStructure.decodeNullableSerializableElement(descriptor2, 13, FloatSerializer.INSTANCE, obj31);
                        i2 |= 8192;
                        obj22 = obj22;
                        obj32 = obj32;
                        f5 = f4;
                        break;
                    case 14:
                        f4 = f5;
                        obj32 = beginStructure.decodeNullableSerializableElement(descriptor2, 14, FloatSerializer.INSTANCE, obj32);
                        i2 |= 16384;
                        obj22 = obj22;
                        obj33 = obj33;
                        f5 = f4;
                        break;
                    case 15:
                        f4 = f5;
                        obj19 = obj22;
                        obj33 = beginStructure.decodeNullableSerializableElement(descriptor2, 15, FloatSerializer.INSTANCE, obj33);
                        i2 |= 32768;
                        obj22 = obj19;
                        f5 = f4;
                        break;
                    case 16:
                        obj22 = beginStructure.decodeNullableSerializableElement(descriptor2, 16, FloatSerializer.INSTANCE, obj22);
                        i2 |= 65536;
                        f5 = f5;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            Object obj35 = obj34;
            Float f9 = f6;
            f = f5;
            Object obj36 = obj29;
            obj = obj23;
            obj2 = obj24;
            obj3 = obj26;
            obj4 = obj27;
            obj5 = obj25;
            obj6 = obj28;
            obj7 = obj36;
            f2 = f9;
            obj8 = obj21;
            i = i2;
            obj9 = obj22;
            obj10 = obj33;
            obj11 = obj32;
            obj12 = obj31;
            obj13 = obj30;
            obj14 = obj20;
            obj15 = obj35;
        }
        beginStructure.endStructure(descriptor2);
        return new Revenue(i, f2, f, (List) obj15, (Boolean) obj8, (Boolean) obj14, (Float) obj4, (Float) obj6, (Float) obj3, (Float) obj5, (Float) obj2, (Float) obj7, (Float) obj, (Float) obj13, (Float) obj12, (Float) obj11, (Float) obj10, (Float) obj9, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(@NotNull Encoder encoder, @NotNull Revenue revenue) {
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        Revenue.write$Self(revenue, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
