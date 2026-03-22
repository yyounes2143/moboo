.class public final Lcom/google/protobuf/TypeKt$Dsl;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TypeKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TypeKt$Dsl$Companion;,
        Lcom/google/protobuf/TypeKt$Dsl$FieldsProxy;,
        Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;,
        Lcom/google/protobuf/TypeKt$Dsl$OptionsProxy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u001c\n\u0002\u0008\u0018\u0008\u0007\u0018\u0000 Q2\u00020\u0001:\u0004QRSTB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010.\u001a\u00020/H\u0001J\u0006\u00100\u001a\u000201J\u0006\u00102\u001a\u000201J\u0006\u00103\u001a\u000201J\u0006\u00104\u001a\u000201J\u0006\u00105\u001a\u000206J%\u00107\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010\u0005\u001a\u00020\u000eH\u0007\u00a2\u0006\u0002\u00088J%\u00107\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r2\u0006\u0010\u0005\u001a\u00020\u0019H\u0007\u00a2\u0006\u0002\u00089J%\u00107\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0008:J+\u0010;\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u000e0=H\u0007\u00a2\u0006\u0002\u0008>J+\u0010;\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00190=H\u0007\u00a2\u0006\u0002\u0008?J+\u0010;\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00060=H\u0007\u00a2\u0006\u0002\u0008@J\u001d\u0010A\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0007\u00a2\u0006\u0002\u0008BJ\u001d\u0010A\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\rH\u0007\u00a2\u0006\u0002\u0008CJ\u001d\u0010A\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\rH\u0007\u00a2\u0006\u0002\u0008DJ&\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010\u0005\u001a\u00020\u000eH\u0087\n\u00a2\u0006\u0002\u0008FJ,\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u000e0=H\u0087\n\u00a2\u0006\u0002\u0008GJ&\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r2\u0006\u0010\u0005\u001a\u00020\u0019H\u0087\n\u00a2\u0006\u0002\u0008HJ,\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00190=H\u0087\n\u00a2\u0006\u0002\u0008IJ&\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\n\u00a2\u0006\u0002\u0008JJ,\u0010E\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00060=H\u0087\n\u00a2\u0006\u0002\u0008KJ.\u0010L\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010M\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020\u000eH\u0087\u0002\u00a2\u0006\u0002\u0008NJ.\u0010L\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r2\u0006\u0010M\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020\u0019H\u0087\u0002\u00a2\u0006\u0002\u0008OJ.\u0010L\u001a\u000201*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r2\u0006\u0010M\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\u0002\u00a2\u0006\u0002\u0008PR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001d\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\t\"\u0004\u0008\u0014\u0010\u000bR\u001d\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0011R\u001d\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0011R$\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0005\u001a\u00020\u001c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R$\u0010#\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\"8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R$\u0010)\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020(8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u0006U"
    }
    d2 = {
        "Lcom/google/protobuf/TypeKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/Type$Builder;",
        "(Lcom/google/protobuf/Type$Builder;)V",
        "value",
        "",
        "edition",
        "getEdition",
        "()Ljava/lang/String;",
        "setEdition",
        "(Ljava/lang/String;)V",
        "fields",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lcom/google/protobuf/Field;",
        "Lcom/google/protobuf/TypeKt$Dsl$FieldsProxy;",
        "getFields",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "name",
        "getName",
        "setName",
        "oneofs",
        "Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;",
        "getOneofs",
        "options",
        "Lcom/google/protobuf/Option;",
        "Lcom/google/protobuf/TypeKt$Dsl$OptionsProxy;",
        "getOptions",
        "Lcom/google/protobuf/SourceContext;",
        "sourceContext",
        "getSourceContext",
        "()Lcom/google/protobuf/SourceContext;",
        "setSourceContext",
        "(Lcom/google/protobuf/SourceContext;)V",
        "Lcom/google/protobuf/Syntax;",
        "syntax",
        "getSyntax",
        "()Lcom/google/protobuf/Syntax;",
        "setSyntax",
        "(Lcom/google/protobuf/Syntax;)V",
        "",
        "syntaxValue",
        "getSyntaxValue",
        "()I",
        "setSyntaxValue",
        "(I)V",
        "_build",
        "Lcom/google/protobuf/Type;",
        "clearEdition",
        "",
        "clearName",
        "clearSourceContext",
        "clearSyntax",
        "hasSourceContext",
        "",
        "add",
        "addFields",
        "addOptions",
        "addOneofs",
        "addAll",
        "values",
        "",
        "addAllFields",
        "addAllOptions",
        "addAllOneofs",
        "clear",
        "clearFields",
        "clearOptions",
        "clearOneofs",
        "plusAssign",
        "plusAssignFields",
        "plusAssignAllFields",
        "plusAssignOptions",
        "plusAssignAllOptions",
        "plusAssignOneofs",
        "plusAssignAllOneofs",
        "set",
        "index",
        "setFields",
        "setOptions",
        "setOneofs",
        "Companion",
        "FieldsProxy",
        "OneofsProxy",
        "OptionsProxy",
        "java_kotlin-lite-well_known_protos_kotlin_lite"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/TypeKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lcom/google/protobuf/Type$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/TypeKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/protobuf/TypeKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/protobuf/TypeKt$Dsl;->Companion:Lcom/google/protobuf/TypeKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Type$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Type$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/TypeKt$Dsl;-><init>(Lcom/google/protobuf/Type$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Type;
    .locals 1
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/protobuf/Type;

    .line 8
    .line 9
    return-object v0
.end method

.method public final synthetic addAllFields(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "addAllFields"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addAllFields(Ljava/lang/Iterable;)Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic addAllOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "addAllOneofs"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addAllOneofs(Ljava/lang/Iterable;)Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic addAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "addAllOptions"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic addFields(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Field;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "addFields"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addFields(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic addOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "addOneofs"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addOneofs(Ljava/lang/String;)Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic addOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "addOptions"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearEdition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->clearEdition()Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic clearFields(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "clearFields"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Type$Builder;->clearFields()Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearName()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->clearName()Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic clearOneofs(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "clearOneofs"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Type$Builder;->clearOneofs()Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic clearOptions(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "clearOptions"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Type$Builder;->clearOptions()Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearSourceContext()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->clearSourceContext()Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearSyntax()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->clearSyntax()Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getEdition()Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "getEdition"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->getEdition()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic getFields()Lcom/google/protobuf/kotlin/DslList;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/Type$Builder;->getFieldsList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "getName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getOneofs()Lcom/google/protobuf/kotlin/DslList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/Type$Builder;->getOneofsList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final synthetic getOptions()Lcom/google/protobuf/kotlin/DslList;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/Type$Builder;->getOptionsList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getSourceContext()Lcom/google/protobuf/SourceContext;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "getSourceContext"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->getSourceContext()Lcom/google/protobuf/SourceContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getSyntax()Lcom/google/protobuf/Syntax;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "getSyntax"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->getSyntax()Lcom/google/protobuf/Syntax;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getSyntaxValue()I
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "getSyntaxValue"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->getSyntaxValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasSourceContext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->hasSourceContext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final synthetic plusAssignAllFields(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Field;",
            "Lcom/google/protobuf/TypeKt$Dsl$FieldsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Field;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "plusAssignAllFields"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addAllFields(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic plusAssignAllOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "plusAssignAllOneofs"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addAllOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic plusAssignAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/TypeKt$Dsl$OptionsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Option;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "plusAssignAllOptions"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic plusAssignFields(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Field;",
            "Lcom/google/protobuf/TypeKt$Dsl$FieldsProxy;",
            ">;",
            "Lcom/google/protobuf/Field;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "plusAssignFields"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addFields(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Field;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic plusAssignOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "plusAssignOneofs"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic plusAssignOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/TypeKt$Dsl$OptionsProxy;",
            ">;",
            "Lcom/google/protobuf/Option;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "plusAssignOptions"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setEdition(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "setEdition"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$Builder;->setEdition(Ljava/lang/String;)Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic setFields(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/Field;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "setFields"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Type$Builder;->setFields(ILcom/google/protobuf/Field;)Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "setName"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$Builder;->setName(Ljava/lang/String;)Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic setOneofs(Lcom/google/protobuf/kotlin/DslList;ILjava/lang/String;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "setOneofs"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Type$Builder;->setOneofs(ILjava/lang/String;)Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic setOptions(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/Option;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "setOptions"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Type$Builder;->setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSourceContext(Lcom/google/protobuf/SourceContext;)V
    .locals 1
    .param p1    # Lcom/google/protobuf/SourceContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "setSourceContext"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$Builder;->setSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSyntax(Lcom/google/protobuf/Syntax;)V
    .locals 1
    .param p1    # Lcom/google/protobuf/Syntax;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "setSyntax"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$Builder;->setSyntax(Lcom/google/protobuf/Syntax;)Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSyntaxValue(I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "setSyntaxValue"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$Builder;->setSyntaxValue(I)Lcom/google/protobuf/Type$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
