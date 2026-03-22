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
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/fpd/SessionContext.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/fpd/SessionContext;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
/* loaded from: classes6.dex */
public final class SessionContext$$serializer implements GeneratedSerializer<SessionContext> {
    @NotNull
    public static final SessionContext$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        SessionContext$$serializer sessionContext$$serializer = new SessionContext$$serializer();
        INSTANCE = sessionContext$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.fpd.SessionContext", sessionContext$$serializer, 12);
        pluginGeneratedSerialDescriptor.addElement("level_percentile", true);
        pluginGeneratedSerialDescriptor.addElement("page", true);
        pluginGeneratedSerialDescriptor.addElement("time_spent", true);
        pluginGeneratedSerialDescriptor.addElement("signup_date", true);
        pluginGeneratedSerialDescriptor.addElement("user_score_percentile", true);
        pluginGeneratedSerialDescriptor.addElement("user_id", true);
        pluginGeneratedSerialDescriptor.addElement("friends", true);
        pluginGeneratedSerialDescriptor.addElement("user_level_percentile", true);
        pluginGeneratedSerialDescriptor.addElement("health_percentile", true);
        pluginGeneratedSerialDescriptor.addElement("session_start_time", true);
        pluginGeneratedSerialDescriptor.addElement("session_duration", true);
        pluginGeneratedSerialDescriptor.addElement("in_game_purchases_usd", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private SessionContext$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    @NotNull
    public KSerializer<?>[] childSerializers() {
        FloatSerializer floatSerializer = FloatSerializer.INSTANCE;
        KSerializer<?> nullable = BuiltinSerializersKt.getNullable(floatSerializer);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        KSerializer<?> nullable2 = BuiltinSerializersKt.getNullable(stringSerializer);
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{nullable, nullable2, BuiltinSerializersKt.getNullable(intSerializer), BuiltinSerializersKt.getNullable(intSerializer), BuiltinSerializersKt.getNullable(floatSerializer), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(new ArrayListSerializer(stringSerializer)), BuiltinSerializersKt.getNullable(floatSerializer), BuiltinSerializersKt.getNullable(floatSerializer), BuiltinSerializersKt.getNullable(intSerializer), BuiltinSerializersKt.getNullable(intSerializer), BuiltinSerializersKt.getNullable(floatSerializer)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    @NotNull
    public SessionContext deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj9;
        Object obj10;
        Object obj11;
        Object obj12;
        int i;
        Object obj13;
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        Object obj14 = null;
        if (beginStructure.decodeSequentially()) {
            FloatSerializer floatSerializer = FloatSerializer.INSTANCE;
            obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, floatSerializer, null);
            StringSerializer stringSerializer = StringSerializer.INSTANCE;
            Object decodeNullableSerializableElement = beginStructure.decodeNullableSerializableElement(descriptor2, 1, stringSerializer, null);
            IntSerializer intSerializer = IntSerializer.INSTANCE;
            obj11 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, intSerializer, null);
            obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, intSerializer, null);
            Object decodeNullableSerializableElement2 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, floatSerializer, null);
            obj10 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, stringSerializer, null);
            obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 6, new ArrayListSerializer(stringSerializer), null);
            obj12 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, floatSerializer, null);
            obj9 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, floatSerializer, null);
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 9, intSerializer, null);
            obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, intSerializer, null);
            obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, 11, floatSerializer, null);
            i = 4095;
            obj7 = decodeNullableSerializableElement;
            obj2 = decodeNullableSerializableElement2;
        } else {
            boolean z = true;
            int i2 = 0;
            Object obj15 = null;
            Object obj16 = null;
            Object obj17 = null;
            obj = null;
            Object obj18 = null;
            Object obj19 = null;
            Object obj20 = null;
            Object obj21 = null;
            Object obj22 = null;
            obj2 = null;
            Object obj23 = null;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z = false;
                        obj14 = obj14;
                        i2 = i2;
                        continue;
                    case 0:
                        i2 |= 1;
                        obj14 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, FloatSerializer.INSTANCE, obj14);
                        break;
                    case 1:
                        obj13 = obj14;
                        obj15 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, StringSerializer.INSTANCE, obj15);
                        i2 |= 2;
                        obj14 = obj13;
                        break;
                    case 2:
                        obj13 = obj14;
                        obj16 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, IntSerializer.INSTANCE, obj16);
                        i2 |= 4;
                        obj14 = obj13;
                        break;
                    case 3:
                        obj13 = obj14;
                        obj23 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, IntSerializer.INSTANCE, obj23);
                        i2 |= 8;
                        obj14 = obj13;
                        break;
                    case 4:
                        obj13 = obj14;
                        obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, FloatSerializer.INSTANCE, obj2);
                        i2 |= 16;
                        obj14 = obj13;
                        break;
                    case 5:
                        obj13 = obj14;
                        obj22 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, StringSerializer.INSTANCE, obj22);
                        i2 |= 32;
                        obj14 = obj13;
                        break;
                    case 6:
                        obj13 = obj14;
                        obj19 = beginStructure.decodeNullableSerializableElement(descriptor2, 6, new ArrayListSerializer(StringSerializer.INSTANCE), obj19);
                        i2 |= 64;
                        obj14 = obj13;
                        break;
                    case 7:
                        obj13 = obj14;
                        obj21 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, FloatSerializer.INSTANCE, obj21);
                        i2 |= 128;
                        obj14 = obj13;
                        break;
                    case 8:
                        obj13 = obj14;
                        obj18 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, FloatSerializer.INSTANCE, obj18);
                        i2 |= 256;
                        obj14 = obj13;
                        break;
                    case 9:
                        obj13 = obj14;
                        obj = beginStructure.decodeNullableSerializableElement(descriptor2, 9, IntSerializer.INSTANCE, obj);
                        i2 |= 512;
                        obj14 = obj13;
                        break;
                    case 10:
                        obj13 = obj14;
                        obj17 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, IntSerializer.INSTANCE, obj17);
                        i2 |= 1024;
                        obj14 = obj13;
                        break;
                    case 11:
                        obj20 = beginStructure.decodeNullableSerializableElement(descriptor2, 11, FloatSerializer.INSTANCE, obj20);
                        i2 |= 2048;
                        obj14 = obj14;
                        continue;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            int i3 = i2;
            Object obj24 = obj23;
            obj3 = obj14;
            obj4 = obj19;
            obj5 = obj24;
            obj6 = obj20;
            obj7 = obj15;
            obj8 = obj17;
            obj9 = obj18;
            obj10 = obj22;
            obj11 = obj16;
            obj12 = obj21;
            i = i3;
        }
        beginStructure.endStructure(descriptor2);
        return new SessionContext(i, (Float) obj3, (String) obj7, (Integer) obj11, (Integer) obj5, (Float) obj2, (String) obj10, (List) obj4, (Float) obj12, (Float) obj9, (Integer) obj, (Integer) obj8, (Float) obj6, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(@NotNull Encoder encoder, @NotNull SessionContext sessionContext) {
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        SessionContext.write$Self(sessionContext, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
