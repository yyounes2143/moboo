package com.google.protobuf;

import com.google.protobuf.EnumValueKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\b\u0007\u001a)\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\t"}, d2 = {"enumValue", "Lcom/google/protobuf/EnumValue;", "block", "Lkotlin/Function1;", "Lcom/google/protobuf/EnumValueKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializeenumValue", "copy", "java_kotlin-lite-well_known_protos_kotlin_lite"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEnumValueKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnumValueKt.kt\ncom/google/protobuf/EnumValueKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n1#2:140\n*E\n"})
/* loaded from: classes5.dex */
public final class EnumValueKtKt {
    @JvmName(name = "-initializeenumValue")
    @NotNull
    /* renamed from: -initializeenumValue  reason: not valid java name */
    public static final EnumValue m199initializeenumValue(@NotNull Function1<? super EnumValueKt.Dsl, Unit> function1) {
        EnumValueKt.Dsl _create = EnumValueKt.Dsl.Companion._create(EnumValue.newBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final EnumValue copy(@NotNull EnumValue enumValue, @NotNull Function1<? super EnumValueKt.Dsl, Unit> function1) {
        EnumValueKt.Dsl _create = EnumValueKt.Dsl.Companion._create(enumValue.toBuilder());
        function1.invoke(_create);
        return _create._build();
    }
}
