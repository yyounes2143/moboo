.class public final Lcom/google/protobuf/ApiKt$Dsl;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ApiKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ApiKt$Dsl$Companion;,
        Lcom/google/protobuf/ApiKt$Dsl$MethodsProxy;,
        Lcom/google/protobuf/ApiKt$Dsl$MixinsProxy;,
        Lcom/google/protobuf/ApiKt$Dsl$OptionsProxy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u001c\n\u0002\u0008\u0018\u0008\u0007\u0018\u0000 R2\u00020\u0001:\u0004RSTUB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010/\u001a\u000200H\u0001J\u0006\u00101\u001a\u000202J\u0006\u00103\u001a\u000202J\u0006\u00104\u001a\u000202J\u0006\u00105\u001a\u000202J\u0006\u00106\u001a\u000207J%\u00108\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u000f\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u00089J%\u00108\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u00062\u0006\u0010\u000f\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0008:J%\u00108\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00062\u0006\u0010\u000f\u001a\u00020\u0017H\u0007\u00a2\u0006\u0002\u0008;J+\u0010<\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00070>H\u0007\u00a2\u0006\u0002\u0008?J+\u0010<\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u00062\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u000c0>H\u0007\u00a2\u0006\u0002\u0008@J+\u0010<\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00062\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00170>H\u0007\u00a2\u0006\u0002\u0008AJ\u001d\u0010B\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0007\u00a2\u0006\u0002\u0008CJ\u001d\u0010B\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u0006H\u0007\u00a2\u0006\u0002\u0008DJ\u001d\u0010B\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0006H\u0007\u00a2\u0006\u0002\u0008EJ&\u0010F\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u000f\u001a\u00020\u0007H\u0087\n\u00a2\u0006\u0002\u0008GJ,\u0010F\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00070>H\u0087\n\u00a2\u0006\u0002\u0008HJ&\u0010F\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u00062\u0006\u0010\u000f\u001a\u00020\u000cH\u0087\n\u00a2\u0006\u0002\u0008IJ,\u0010F\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u00062\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u000c0>H\u0087\n\u00a2\u0006\u0002\u0008JJ&\u0010F\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00062\u0006\u0010\u000f\u001a\u00020\u0017H\u0087\n\u00a2\u0006\u0002\u0008KJ,\u0010F\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00062\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00170>H\u0087\n\u00a2\u0006\u0002\u0008LJ.\u0010M\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010N\u001a\u00020&2\u0006\u0010\u000f\u001a\u00020\u0007H\u0087\u0002\u00a2\u0006\u0002\u0008OJ.\u0010M\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u00062\u0006\u0010N\u001a\u00020&2\u0006\u0010\u000f\u001a\u00020\u000cH\u0087\u0002\u00a2\u0006\u0002\u0008PJ.\u0010M\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00062\u0006\u0010N\u001a\u00020&2\u0006\u0010\u000f\u001a\u00020\u0017H\u0087\u0002\u00a2\u0006\u0002\u0008QR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\nR$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00108G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\nR$\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u000f\u001a\u00020\u001a8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR$\u0010!\u001a\u00020 2\u0006\u0010\u000f\u001a\u00020 8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R$\u0010\'\u001a\u00020&2\u0006\u0010\u000f\u001a\u00020&8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R$\u0010,\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00108G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008-\u0010\u0013\"\u0004\u0008.\u0010\u0015\u00a8\u0006V"
    }
    d2 = {
        "Lcom/google/protobuf/ApiKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/Api$Builder;",
        "(Lcom/google/protobuf/Api$Builder;)V",
        "methods",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lcom/google/protobuf/Method;",
        "Lcom/google/protobuf/ApiKt$Dsl$MethodsProxy;",
        "getMethods",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "mixins",
        "Lcom/google/protobuf/Mixin;",
        "Lcom/google/protobuf/ApiKt$Dsl$MixinsProxy;",
        "getMixins",
        "value",
        "",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "options",
        "Lcom/google/protobuf/Option;",
        "Lcom/google/protobuf/ApiKt$Dsl$OptionsProxy;",
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
        "version",
        "getVersion",
        "setVersion",
        "_build",
        "Lcom/google/protobuf/Api;",
        "clearName",
        "",
        "clearSourceContext",
        "clearSyntax",
        "clearVersion",
        "hasSourceContext",
        "",
        "add",
        "addMethods",
        "addMixins",
        "addOptions",
        "addAll",
        "values",
        "",
        "addAllMethods",
        "addAllMixins",
        "addAllOptions",
        "clear",
        "clearMethods",
        "clearMixins",
        "clearOptions",
        "plusAssign",
        "plusAssignMethods",
        "plusAssignAllMethods",
        "plusAssignMixins",
        "plusAssignAllMixins",
        "plusAssignOptions",
        "plusAssignAllOptions",
        "set",
        "index",
        "setMethods",
        "setMixins",
        "setOptions",
        "Companion",
        "MethodsProxy",
        "MixinsProxy",
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
.field public static final Companion:Lcom/google/protobuf/ApiKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lcom/google/protobuf/Api$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/ApiKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/protobuf/ApiKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/protobuf/ApiKt$Dsl;->Companion:Lcom/google/protobuf/ApiKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Api$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Api$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/ApiKt$Dsl;-><init>(Lcom/google/protobuf/Api$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Api;
    .locals 1
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/protobuf/Api;

    .line 8
    .line 9
    return-object v0
.end method

.method public final synthetic addAllMethods(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "addAllMethods"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$Builder;->addAllMethods(Ljava/lang/Iterable;)Lcom/google/protobuf/Api$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic addAllMixins(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "addAllMixins"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$Builder;->addAllMixins(Ljava/lang/Iterable;)Lcom/google/protobuf/Api$Builder;

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
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$Builder;->addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/Api$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic addMethods(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Method;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "addMethods"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$Builder;->addMethods(Lcom/google/protobuf/Method;)Lcom/google/protobuf/Api$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic addMixins(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Mixin;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "addMixins"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$Builder;->addMixins(Lcom/google/protobuf/Mixin;)Lcom/google/protobuf/Api$Builder;

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
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Api$Builder;->addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/Api$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic clearMethods(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "clearMethods"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Api$Builder;->clearMethods()Lcom/google/protobuf/Api$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic clearMixins(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "clearMixins"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Api$Builder;->clearMixins()Lcom/google/protobuf/Api$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearName()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->clearName()Lcom/google/protobuf/Api$Builder;

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
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Api$Builder;->clearOptions()Lcom/google/protobuf/Api$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearSourceContext()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->clearSourceContext()Lcom/google/protobuf/Api$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearSyntax()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->clearSyntax()Lcom/google/protobuf/Api$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearVersion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->clearVersion()Lcom/google/protobuf/Api$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic getMethods()Lcom/google/protobuf/kotlin/DslList;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/Api$Builder;->getMethodsList()Ljava/util/List;

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

.method public final synthetic getMixins()Lcom/google/protobuf/kotlin/DslList;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/Api$Builder;->getMixinsList()Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic getOptions()Lcom/google/protobuf/kotlin/DslList;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/Api$Builder;->getOptionsList()Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->getSourceContext()Lcom/google/protobuf/SourceContext;

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
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->getSyntax()Lcom/google/protobuf/Syntax;

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
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->getSyntaxValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "getVersion"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->getVersion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final hasSourceContext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Api$Builder;->hasSourceContext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final synthetic plusAssignAllMethods(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Method;",
            "Lcom/google/protobuf/ApiKt$Dsl$MethodsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Method;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "plusAssignAllMethods"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ApiKt$Dsl;->addAllMethods(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic plusAssignAllMixins(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Mixin;",
            "Lcom/google/protobuf/ApiKt$Dsl$MixinsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Mixin;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "plusAssignAllMixins"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ApiKt$Dsl;->addAllMixins(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

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
            "Lcom/google/protobuf/ApiKt$Dsl$OptionsProxy;",
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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ApiKt$Dsl;->addAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic plusAssignMethods(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Method;",
            "Lcom/google/protobuf/ApiKt$Dsl$MethodsProxy;",
            ">;",
            "Lcom/google/protobuf/Method;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "plusAssignMethods"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ApiKt$Dsl;->addMethods(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Method;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic plusAssignMixins(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Mixin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Mixin;",
            "Lcom/google/protobuf/ApiKt$Dsl$MixinsProxy;",
            ">;",
            "Lcom/google/protobuf/Mixin;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "plusAssignMixins"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ApiKt$Dsl;->addMixins(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Mixin;)V

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
            "Lcom/google/protobuf/ApiKt$Dsl$OptionsProxy;",
            ">;",
            "Lcom/google/protobuf/Option;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "plusAssignOptions"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ApiKt$Dsl;->addOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic setMethods(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/Method;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "setMethods"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Api$Builder;->setMethods(ILcom/google/protobuf/Method;)Lcom/google/protobuf/Api$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic setMixins(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/Mixin;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
        name = "setMixins"
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Api$Builder;->setMixins(ILcom/google/protobuf/Mixin;)Lcom/google/protobuf/Api$Builder;

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
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api$Builder;->setName(Ljava/lang/String;)Lcom/google/protobuf/Api$Builder;

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
    iget-object p1, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Api$Builder;->setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Api$Builder;

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
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api$Builder;->setSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Api$Builder;

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
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api$Builder;->setSyntax(Lcom/google/protobuf/Syntax;)Lcom/google/protobuf/Api$Builder;

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
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api$Builder;->setSyntaxValue(I)Lcom/google/protobuf/Api$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "setVersion"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ApiKt$Dsl;->_builder:Lcom/google/protobuf/Api$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api$Builder;->setVersion(Ljava/lang/String;)Lcom/google/protobuf/Api$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
