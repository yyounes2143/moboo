.class public final Lcom/google/protobuf/BytesValueKtKt;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u0007\u001a)\u0010\u0008\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\t"
    }
    d2 = {
        "bytesValue",
        "Lcom/google/protobuf/BytesValue;",
        "block",
        "Lkotlin/Function1;",
        "Lcom/google/protobuf/BytesValueKt$Dsl;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "-initializebytesValue",
        "copy",
        "java_kotlin-lite-well_known_protos_kotlin_lite"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBytesValueKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BytesValueKt.kt\ncom/google/protobuf/BytesValueKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"
    }
.end annotation


# direct methods
.method public static final -initializebytesValue(Lkotlin/jvm/functions/Function1;)Lcom/google/protobuf/BytesValue;
    .locals 2
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/protobuf/BytesValueKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/protobuf/BytesValue;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-initializebytesValue"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/BytesValueKt$Dsl;->Companion:Lcom/google/protobuf/BytesValueKt$Dsl$Companion;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/protobuf/BytesValue;->newBuilder()Lcom/google/protobuf/BytesValue$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/protobuf/BytesValueKt$Dsl$Companion;->_create(Lcom/google/protobuf/BytesValue$Builder;)Lcom/google/protobuf/BytesValueKt$Dsl;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/BytesValueKt$Dsl;->_build()Lcom/google/protobuf/BytesValue;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final copy(Lcom/google/protobuf/BytesValue;Lkotlin/jvm/functions/Function1;)Lcom/google/protobuf/BytesValue;
    .locals 1
    .param p0    # Lcom/google/protobuf/BytesValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/BytesValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/protobuf/BytesValueKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/protobuf/BytesValue;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/BytesValueKt$Dsl;->Companion:Lcom/google/protobuf/BytesValueKt$Dsl$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/protobuf/BytesValue$Builder;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/google/protobuf/BytesValueKt$Dsl$Companion;->_create(Lcom/google/protobuf/BytesValue$Builder;)Lcom/google/protobuf/BytesValueKt$Dsl;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValueKt$Dsl;->_build()Lcom/google/protobuf/BytesValue;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
