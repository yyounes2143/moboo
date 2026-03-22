package com.google.protobuf;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.protobuf.Type;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/google/protobuf/TypeKt;", "", "()V", "Dsl", "java_kotlin-lite-well_known_protos_kotlin_lite"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class TypeKt {
    @NotNull
    public static final TypeKt INSTANCE = new TypeKt();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u001c\n\u0002\b\u0018\b\u0007\u0018\u0000 Q2\u00020\u0001:\u0004QRSTB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010.\u001a\u00020/H\u0001J\u0006\u00100\u001a\u000201J\u0006\u00102\u001a\u000201J\u0006\u00103\u001a\u000201J\u0006\u00104\u001a\u000201J\u0006\u00105\u001a\u000206J%\u00107\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010\u0005\u001a\u00020\u000eH\u0007¢\u0006\u0002\b8J%\u00107\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r2\u0006\u0010\u0005\u001a\u00020\u0019H\u0007¢\u0006\u0002\b9J%\u00107\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\b:J+\u0010;\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u000e0=H\u0007¢\u0006\u0002\b>J+\u0010;\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00190=H\u0007¢\u0006\u0002\b?J+\u0010;\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00060=H\u0007¢\u0006\u0002\b@J\u001d\u0010A\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0007¢\u0006\u0002\bBJ\u001d\u0010A\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\rH\u0007¢\u0006\u0002\bCJ\u001d\u0010A\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\rH\u0007¢\u0006\u0002\bDJ&\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010\u0005\u001a\u00020\u000eH\u0087\n¢\u0006\u0002\bFJ,\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u000e0=H\u0087\n¢\u0006\u0002\bGJ&\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r2\u0006\u0010\u0005\u001a\u00020\u0019H\u0087\n¢\u0006\u0002\bHJ,\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00190=H\u0087\n¢\u0006\u0002\bIJ&\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\n¢\u0006\u0002\bJJ,\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00060=H\u0087\n¢\u0006\u0002\bKJ.\u0010L\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010M\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020\u000eH\u0087\u0002¢\u0006\u0002\bNJ.\u0010L\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r2\u0006\u0010M\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020\u0019H\u0087\u0002¢\u0006\u0002\bOJ.\u0010L\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r2\u0006\u0010M\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\bPR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001d\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR\u001d\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0011R\u001d\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0011R$\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0005\u001a\u00020\u001c8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R$\u0010#\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\"8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R$\u0010)\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020(8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u0006U"}, d2 = {"Lcom/google/protobuf/TypeKt$Dsl;", "", "_builder", "Lcom/google/protobuf/Type$Builder;", "(Lcom/google/protobuf/Type$Builder;)V", "value", "", "edition", "getEdition", "()Ljava/lang/String;", "setEdition", "(Ljava/lang/String;)V", "fields", "Lcom/google/protobuf/kotlin/DslList;", "Lcom/google/protobuf/Field;", "Lcom/google/protobuf/TypeKt$Dsl$FieldsProxy;", "getFields", "()Lcom/google/protobuf/kotlin/DslList;", "name", "getName", "setName", "oneofs", "Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;", "getOneofs", "options", "Lcom/google/protobuf/Option;", "Lcom/google/protobuf/TypeKt$Dsl$OptionsProxy;", "getOptions", "Lcom/google/protobuf/SourceContext;", "sourceContext", "getSourceContext", "()Lcom/google/protobuf/SourceContext;", "setSourceContext", "(Lcom/google/protobuf/SourceContext;)V", "Lcom/google/protobuf/Syntax;", "syntax", "getSyntax", "()Lcom/google/protobuf/Syntax;", "setSyntax", "(Lcom/google/protobuf/Syntax;)V", "", "syntaxValue", "getSyntaxValue", "()I", "setSyntaxValue", "(I)V", "_build", "Lcom/google/protobuf/Type;", "clearEdition", "", "clearName", "clearSourceContext", "clearSyntax", "hasSourceContext", "", "add", "addFields", "addOptions", "addOneofs", "addAll", "values", "", "addAllFields", "addAllOptions", "addAllOneofs", "clear", "clearFields", "clearOptions", "clearOneofs", "plusAssign", "plusAssignFields", "plusAssignAllFields", "plusAssignOptions", "plusAssignAllOptions", "plusAssignOneofs", "plusAssignAllOneofs", "set", FirebaseAnalytics.Param.INDEX, "setFields", "setOptions", "setOneofs", "Companion", "FieldsProxy", "OneofsProxy", "OptionsProxy", "java_kotlin-lite-well_known_protos_kotlin_lite"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ProtoDslMarker
    /* loaded from: classes5.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final Type.Builder _builder;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lcom/google/protobuf/TypeKt$Dsl$Companion;", "", "()V", "_create", "Lcom/google/protobuf/TypeKt$Dsl;", "builder", "Lcom/google/protobuf/Type$Builder;", "java_kotlin-lite-well_known_protos_kotlin_lite"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes5.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @PublishedApi
            public final /* synthetic */ Dsl _create(Type.Builder builder) {
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/google/protobuf/TypeKt$Dsl$FieldsProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "()V", "java_kotlin-lite-well_known_protos_kotlin_lite"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes5.dex */
        public static final class FieldsProxy extends DslProxy {
            private FieldsProxy() {
            }
        }

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "()V", "java_kotlin-lite-well_known_protos_kotlin_lite"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes5.dex */
        public static final class OneofsProxy extends DslProxy {
            private OneofsProxy() {
            }
        }

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/google/protobuf/TypeKt$Dsl$OptionsProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "()V", "java_kotlin-lite-well_known_protos_kotlin_lite"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes5.dex */
        public static final class OptionsProxy extends DslProxy {
            private OptionsProxy() {
            }
        }

        public /* synthetic */ Dsl(Type.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        @PublishedApi
        public final /* synthetic */ Type _build() {
            return this._builder.build();
        }

        @JvmName(name = "addAllFields")
        /* renamed from: addAllFields */
        public final /* synthetic */ void plusAssignAllFields(DslList dslList, Iterable iterable) {
            this._builder.addAllFields(iterable);
        }

        @JvmName(name = "addAllOneofs")
        /* renamed from: addAllOneofs */
        public final /* synthetic */ void plusAssignAllOneofs(DslList dslList, Iterable iterable) {
            this._builder.addAllOneofs(iterable);
        }

        @JvmName(name = "addAllOptions")
        /* renamed from: addAllOptions */
        public final /* synthetic */ void plusAssignAllOptions(DslList dslList, Iterable iterable) {
            this._builder.addAllOptions(iterable);
        }

        @JvmName(name = "addFields")
        /* renamed from: addFields */
        public final /* synthetic */ void plusAssignFields(DslList dslList, Field field) {
            this._builder.addFields(field);
        }

        @JvmName(name = "addOneofs")
        /* renamed from: addOneofs */
        public final /* synthetic */ void plusAssignOneofs(DslList dslList, String str) {
            this._builder.addOneofs(str);
        }

        @JvmName(name = "addOptions")
        /* renamed from: addOptions */
        public final /* synthetic */ void plusAssignOptions(DslList dslList, Option option) {
            this._builder.addOptions(option);
        }

        public final void clearEdition() {
            this._builder.clearEdition();
        }

        @JvmName(name = "clearFields")
        public final /* synthetic */ void clearFields(DslList dslList) {
            this._builder.clearFields();
        }

        public final void clearName() {
            this._builder.clearName();
        }

        @JvmName(name = "clearOneofs")
        public final /* synthetic */ void clearOneofs(DslList dslList) {
            this._builder.clearOneofs();
        }

        @JvmName(name = "clearOptions")
        public final /* synthetic */ void clearOptions(DslList dslList) {
            this._builder.clearOptions();
        }

        public final void clearSourceContext() {
            this._builder.clearSourceContext();
        }

        public final void clearSyntax() {
            this._builder.clearSyntax();
        }

        @JvmName(name = "getEdition")
        @NotNull
        public final String getEdition() {
            return this._builder.getEdition();
        }

        public final /* synthetic */ DslList getFields() {
            return new DslList(this._builder.getFieldsList());
        }

        @JvmName(name = "getName")
        @NotNull
        public final String getName() {
            return this._builder.getName();
        }

        @NotNull
        public final DslList<String, OneofsProxy> getOneofs() {
            return new DslList<>(this._builder.getOneofsList());
        }

        public final /* synthetic */ DslList getOptions() {
            return new DslList(this._builder.getOptionsList());
        }

        @JvmName(name = "getSourceContext")
        @NotNull
        public final SourceContext getSourceContext() {
            return this._builder.getSourceContext();
        }

        @JvmName(name = "getSyntax")
        @NotNull
        public final Syntax getSyntax() {
            return this._builder.getSyntax();
        }

        @JvmName(name = "getSyntaxValue")
        public final int getSyntaxValue() {
            return this._builder.getSyntaxValue();
        }

        public final boolean hasSourceContext() {
            return this._builder.hasSourceContext();
        }

        @JvmName(name = "setEdition")
        public final void setEdition(@NotNull String str) {
            this._builder.setEdition(str);
        }

        @JvmName(name = "setFields")
        public final /* synthetic */ void setFields(DslList dslList, int i, Field field) {
            this._builder.setFields(i, field);
        }

        @JvmName(name = "setName")
        public final void setName(@NotNull String str) {
            this._builder.setName(str);
        }

        @JvmName(name = "setOneofs")
        public final /* synthetic */ void setOneofs(DslList dslList, int i, String str) {
            this._builder.setOneofs(i, str);
        }

        @JvmName(name = "setOptions")
        public final /* synthetic */ void setOptions(DslList dslList, int i, Option option) {
            this._builder.setOptions(i, option);
        }

        @JvmName(name = "setSourceContext")
        public final void setSourceContext(@NotNull SourceContext sourceContext) {
            this._builder.setSourceContext(sourceContext);
        }

        @JvmName(name = "setSyntax")
        public final void setSyntax(@NotNull Syntax syntax) {
            this._builder.setSyntax(syntax);
        }

        @JvmName(name = "setSyntaxValue")
        public final void setSyntaxValue(int i) {
            this._builder.setSyntaxValue(i);
        }

        private Dsl(Type.Builder builder) {
            this._builder = builder;
        }
    }

    private TypeKt() {
    }
}
