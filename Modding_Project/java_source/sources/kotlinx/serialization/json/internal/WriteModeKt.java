package kotlinx.serialization.json.internal;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.ContextAwareKt;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.modules.SerializersModule;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001aS\u0010\u0005\u001a\u0002H\u0006\"\u0004\b\u0000\u0010\u0006\"\b\b\u0001\u0010\u0007*\u0002H\u0006\"\b\b\u0002\u0010\b*\u0002H\u0006*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00070\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\b0\u000bH\u0080\bø\u0001\u0000¢\u0006\u0002\u0010\r\u001a\u0014\u0010\u000e\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0011"}, d2 = {"switchMode", "Lkotlinx/serialization/json/internal/WriteMode;", "Lkotlinx/serialization/json/Json;", CampaignEx.JSON_KEY_DESC, "Lkotlinx/serialization/descriptors/SerialDescriptor;", "selectMapMode", "T", "R1", "R2", "mapDescriptor", "ifMap", "Lkotlin/Function0;", "ifList", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "carrierDescriptor", "module", "Lkotlinx/serialization/modules/SerializersModule;", "kotlinx-serialization-json"}, k = 2, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWriteMode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WriteMode.kt\nkotlinx/serialization/json/internal/WriteModeKt\n*L\n1#1,53:1\n36#1,9:54\n*S KotlinDebug\n*F\n+ 1 WriteMode.kt\nkotlinx/serialization/json/internal/WriteModeKt\n*L\n26#1:54,9\n*E\n"})
/* loaded from: classes7.dex */
public final class WriteModeKt {
    @NotNull
    public static final SerialDescriptor carrierDescriptor(@NotNull SerialDescriptor serialDescriptor, @NotNull SerializersModule serializersModule) {
        SerialDescriptor carrierDescriptor;
        if (Intrinsics.areEqual(serialDescriptor.getKind(), SerialKind.CONTEXTUAL.INSTANCE)) {
            SerialDescriptor contextualDescriptor = ContextAwareKt.getContextualDescriptor(serializersModule, serialDescriptor);
            if (contextualDescriptor != null && (carrierDescriptor = carrierDescriptor(contextualDescriptor, serializersModule)) != null) {
                return carrierDescriptor;
            }
            return serialDescriptor;
        } else if (serialDescriptor.isInline()) {
            return carrierDescriptor(serialDescriptor.getElementDescriptor(0), serializersModule);
        } else {
            return serialDescriptor;
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v5, types: [T, java.lang.Object] */
    public static final <T, R1 extends T, R2 extends T> T selectMapMode(@NotNull Json json, @NotNull SerialDescriptor serialDescriptor, @NotNull Function0<? extends R1> function0, @NotNull Function0<? extends R2> function02) {
        SerialDescriptor carrierDescriptor = carrierDescriptor(serialDescriptor.getElementDescriptor(0), json.getSerializersModule());
        SerialKind kind = carrierDescriptor.getKind();
        if (!(kind instanceof PrimitiveKind) && !Intrinsics.areEqual(kind, SerialKind.ENUM.INSTANCE)) {
            if (json.getConfiguration().getAllowStructuredMapKeys()) {
                return function02.invoke();
            }
            throw JsonExceptionsKt.InvalidKeyKindException(carrierDescriptor);
        }
        return function0.invoke();
    }

    @NotNull
    public static final WriteMode switchMode(@NotNull Json json, @NotNull SerialDescriptor serialDescriptor) {
        SerialKind kind = serialDescriptor.getKind();
        if (kind instanceof PolymorphicKind) {
            return WriteMode.POLY_OBJ;
        }
        if (Intrinsics.areEqual(kind, StructureKind.LIST.INSTANCE)) {
            return WriteMode.LIST;
        }
        if (Intrinsics.areEqual(kind, StructureKind.MAP.INSTANCE)) {
            SerialDescriptor carrierDescriptor = carrierDescriptor(serialDescriptor.getElementDescriptor(0), json.getSerializersModule());
            SerialKind kind2 = carrierDescriptor.getKind();
            if (!(kind2 instanceof PrimitiveKind) && !Intrinsics.areEqual(kind2, SerialKind.ENUM.INSTANCE)) {
                if (json.getConfiguration().getAllowStructuredMapKeys()) {
                    return WriteMode.LIST;
                }
                throw JsonExceptionsKt.InvalidKeyKindException(carrierDescriptor);
            }
            return WriteMode.MAP;
        }
        return WriteMode.OBJ;
    }
}
