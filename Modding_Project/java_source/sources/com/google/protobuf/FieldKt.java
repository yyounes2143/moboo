package com.google.protobuf;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.protobuf.Field;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/google/protobuf/FieldKt;", "", "()V", "Dsl", "java_kotlin-lite-well_known_protos_kotlin_lite"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class FieldKt {
    @NotNull
    public static final FieldKt INSTANCE = new FieldKt();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010\u001c\n\u0002\b\f\b\u0007\u0018\u0000 V2\u00020\u0001:\u0002VWB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010<\u001a\u00020=H\u0001J\u0006\u0010>\u001a\u00020?J\u0006\u0010@\u001a\u00020?J\u0006\u0010A\u001a\u00020?J\u0006\u0010B\u001a\u00020?J\u0006\u0010C\u001a\u00020?J\u0006\u0010D\u001a\u00020?J\u0006\u0010E\u001a\u00020?J\u0006\u0010F\u001a\u00020?J\u0006\u0010G\u001a\u00020?J%\u0010H\u001a\u00020?*\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u0002000.2\u0006\u0010\u0005\u001a\u00020/H\u0007¢\u0006\u0002\bIJ+\u0010J\u001a\u00020?*\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u0002000.2\f\u0010K\u001a\b\u0012\u0004\u0012\u00020/0LH\u0007¢\u0006\u0002\bMJ\u001d\u0010N\u001a\u00020?*\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u0002000.H\u0007¢\u0006\u0002\bOJ&\u0010P\u001a\u00020?*\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u0002000.2\u0006\u0010\u0005\u001a\u00020/H\u0087\n¢\u0006\u0002\bQJ,\u0010P\u001a\u00020?*\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u0002000.2\f\u0010K\u001a\b\u0012\u0004\u0012\u00020/0LH\u0087\n¢\u0006\u0002\bRJ.\u0010S\u001a\u00020?*\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u0002000.2\u0006\u0010T\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020/H\u0087\u0002¢\u0006\u0002\bUR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010!\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\u000f\"\u0004\b#\u0010\u0011R$\u0010$\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\u0015\"\u0004\b&\u0010\u0017R$\u0010'\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b(\u0010\u000f\"\u0004\b)\u0010\u0011R$\u0010*\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010\u000f\"\u0004\b,\u0010\u0011R\u001d\u0010-\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u0002000.8F¢\u0006\u0006\u001a\u0004\b1\u00102R$\u00104\u001a\u0002032\u0006\u0010\u0005\u001a\u0002038G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b5\u00106\"\u0004\b7\u00108R$\u00109\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b:\u0010\u0015\"\u0004\b;\u0010\u0017¨\u0006X"}, d2 = {"Lcom/google/protobuf/FieldKt$Dsl;", "", "_builder", "Lcom/google/protobuf/Field$Builder;", "(Lcom/google/protobuf/Field$Builder;)V", "value", "Lcom/google/protobuf/Field$Cardinality;", "cardinality", "getCardinality", "()Lcom/google/protobuf/Field$Cardinality;", "setCardinality", "(Lcom/google/protobuf/Field$Cardinality;)V", "", "cardinalityValue", "getCardinalityValue", "()I", "setCardinalityValue", "(I)V", "", "defaultValue", "getDefaultValue", "()Ljava/lang/String;", "setDefaultValue", "(Ljava/lang/String;)V", "jsonName", "getJsonName", "setJsonName", "Lcom/google/protobuf/Field$Kind;", "kind", "getKind", "()Lcom/google/protobuf/Field$Kind;", "setKind", "(Lcom/google/protobuf/Field$Kind;)V", "kindValue", "getKindValue", "setKindValue", "name", "getName", "setName", "number", "getNumber", "setNumber", "oneofIndex", "getOneofIndex", "setOneofIndex", "options", "Lcom/google/protobuf/kotlin/DslList;", "Lcom/google/protobuf/Option;", "Lcom/google/protobuf/FieldKt$Dsl$OptionsProxy;", "getOptions", "()Lcom/google/protobuf/kotlin/DslList;", "", "packed", "getPacked", "()Z", "setPacked", "(Z)V", "typeUrl", "getTypeUrl", "setTypeUrl", "_build", "Lcom/google/protobuf/Field;", "clearCardinality", "", "clearDefaultValue", "clearJsonName", "clearKind", "clearName", "clearNumber", "clearOneofIndex", "clearPacked", "clearTypeUrl", "add", "addOptions", "addAll", "values", "", "addAllOptions", "clear", "clearOptions", "plusAssign", "plusAssignOptions", "plusAssignAllOptions", "set", FirebaseAnalytics.Param.INDEX, "setOptions", "Companion", "OptionsProxy", "java_kotlin-lite-well_known_protos_kotlin_lite"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ProtoDslMarker
    /* loaded from: classes5.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final Field.Builder _builder;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lcom/google/protobuf/FieldKt$Dsl$Companion;", "", "()V", "_create", "Lcom/google/protobuf/FieldKt$Dsl;", "builder", "Lcom/google/protobuf/Field$Builder;", "java_kotlin-lite-well_known_protos_kotlin_lite"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes5.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @PublishedApi
            public final /* synthetic */ Dsl _create(Field.Builder builder) {
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/google/protobuf/FieldKt$Dsl$OptionsProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "()V", "java_kotlin-lite-well_known_protos_kotlin_lite"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes5.dex */
        public static final class OptionsProxy extends DslProxy {
            private OptionsProxy() {
            }
        }

        public /* synthetic */ Dsl(Field.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        @PublishedApi
        public final /* synthetic */ Field _build() {
            return this._builder.build();
        }

        @JvmName(name = "addAllOptions")
        /* renamed from: addAllOptions */
        public final /* synthetic */ void plusAssignAllOptions(DslList dslList, Iterable iterable) {
            this._builder.addAllOptions(iterable);
        }

        @JvmName(name = "addOptions")
        /* renamed from: addOptions */
        public final /* synthetic */ void plusAssignOptions(DslList dslList, Option option) {
            this._builder.addOptions(option);
        }

        public final void clearCardinality() {
            this._builder.clearCardinality();
        }

        public final void clearDefaultValue() {
            this._builder.clearDefaultValue();
        }

        public final void clearJsonName() {
            this._builder.clearJsonName();
        }

        public final void clearKind() {
            this._builder.clearKind();
        }

        public final void clearName() {
            this._builder.clearName();
        }

        public final void clearNumber() {
            this._builder.clearNumber();
        }

        public final void clearOneofIndex() {
            this._builder.clearOneofIndex();
        }

        @JvmName(name = "clearOptions")
        public final /* synthetic */ void clearOptions(DslList dslList) {
            this._builder.clearOptions();
        }

        public final void clearPacked() {
            this._builder.clearPacked();
        }

        public final void clearTypeUrl() {
            this._builder.clearTypeUrl();
        }

        @JvmName(name = "getCardinality")
        @NotNull
        public final Field.Cardinality getCardinality() {
            return this._builder.getCardinality();
        }

        @JvmName(name = "getCardinalityValue")
        public final int getCardinalityValue() {
            return this._builder.getCardinalityValue();
        }

        @JvmName(name = "getDefaultValue")
        @NotNull
        public final String getDefaultValue() {
            return this._builder.getDefaultValue();
        }

        @JvmName(name = "getJsonName")
        @NotNull
        public final String getJsonName() {
            return this._builder.getJsonName();
        }

        @JvmName(name = "getKind")
        @NotNull
        public final Field.Kind getKind() {
            return this._builder.getKind();
        }

        @JvmName(name = "getKindValue")
        public final int getKindValue() {
            return this._builder.getKindValue();
        }

        @JvmName(name = "getName")
        @NotNull
        public final String getName() {
            return this._builder.getName();
        }

        @JvmName(name = "getNumber")
        public final int getNumber() {
            return this._builder.getNumber();
        }

        @JvmName(name = "getOneofIndex")
        public final int getOneofIndex() {
            return this._builder.getOneofIndex();
        }

        public final /* synthetic */ DslList getOptions() {
            return new DslList(this._builder.getOptionsList());
        }

        @JvmName(name = "getPacked")
        public final boolean getPacked() {
            return this._builder.getPacked();
        }

        @JvmName(name = "getTypeUrl")
        @NotNull
        public final String getTypeUrl() {
            return this._builder.getTypeUrl();
        }

        @JvmName(name = "setCardinality")
        public final void setCardinality(@NotNull Field.Cardinality cardinality) {
            this._builder.setCardinality(cardinality);
        }

        @JvmName(name = "setCardinalityValue")
        public final void setCardinalityValue(int i) {
            this._builder.setCardinalityValue(i);
        }

        @JvmName(name = "setDefaultValue")
        public final void setDefaultValue(@NotNull String str) {
            this._builder.setDefaultValue(str);
        }

        @JvmName(name = "setJsonName")
        public final void setJsonName(@NotNull String str) {
            this._builder.setJsonName(str);
        }

        @JvmName(name = "setKind")
        public final void setKind(@NotNull Field.Kind kind) {
            this._builder.setKind(kind);
        }

        @JvmName(name = "setKindValue")
        public final void setKindValue(int i) {
            this._builder.setKindValue(i);
        }

        @JvmName(name = "setName")
        public final void setName(@NotNull String str) {
            this._builder.setName(str);
        }

        @JvmName(name = "setNumber")
        public final void setNumber(int i) {
            this._builder.setNumber(i);
        }

        @JvmName(name = "setOneofIndex")
        public final void setOneofIndex(int i) {
            this._builder.setOneofIndex(i);
        }

        @JvmName(name = "setOptions")
        public final /* synthetic */ void setOptions(DslList dslList, int i, Option option) {
            this._builder.setOptions(i, option);
        }

        @JvmName(name = "setPacked")
        public final void setPacked(boolean z) {
            this._builder.setPacked(z);
        }

        @JvmName(name = "setTypeUrl")
        public final void setTypeUrl(@NotNull String str) {
            this._builder.setTypeUrl(str);
        }

        private Dsl(Field.Builder builder) {
            this._builder = builder;
        }
    }

    private FieldKt() {
    }
}
