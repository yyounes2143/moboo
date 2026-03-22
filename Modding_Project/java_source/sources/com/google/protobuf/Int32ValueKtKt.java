package com.google.protobuf;

import com.google.protobuf.Int32ValueKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\b\u0007\u001a)\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\t"}, d2 = {"int32Value", "Lcom/google/protobuf/Int32Value;", "block", "Lkotlin/Function1;", "Lcom/google/protobuf/Int32ValueKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializeint32Value", "copy", "java_kotlin-lite-well_known_protos_kotlin_lite"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInt32ValueKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Int32ValueKt.kt\ncom/google/protobuf/Int32ValueKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"})
/* loaded from: classes5.dex */
public final class Int32ValueKtKt {
    @JvmName(name = "-initializeint32Value")
    @NotNull
    /* renamed from: -initializeint32Value  reason: not valid java name */
    public static final Int32Value m204initializeint32Value(@NotNull Function1<? super Int32ValueKt.Dsl, Unit> function1) {
        Int32ValueKt.Dsl _create = Int32ValueKt.Dsl.Companion._create(Int32Value.newBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final Int32Value copy(@NotNull Int32Value int32Value, @NotNull Function1<? super Int32ValueKt.Dsl, Unit> function1) {
        Int32ValueKt.Dsl _create = Int32ValueKt.Dsl.Companion._create(int32Value.toBuilder());
        function1.invoke(_create);
        return _create._build();
    }
}
