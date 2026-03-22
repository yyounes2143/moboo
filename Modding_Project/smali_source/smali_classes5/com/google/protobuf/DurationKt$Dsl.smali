.class public final Lcom/google/protobuf/DurationKt$Dsl;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DurationKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DurationKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0012\u001a\u00020\u0013H\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/google/protobuf/DurationKt$Dsl;",
        "",
        "_builder",
        "Lcom/google/protobuf/Duration$Builder;",
        "(Lcom/google/protobuf/Duration$Builder;)V",
        "value",
        "",
        "nanos",
        "getNanos",
        "()I",
        "setNanos",
        "(I)V",
        "",
        "seconds",
        "getSeconds",
        "()J",
        "setSeconds",
        "(J)V",
        "_build",
        "Lcom/google/protobuf/Duration;",
        "clearNanos",
        "",
        "clearSeconds",
        "Companion",
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
.field public static final Companion:Lcom/google/protobuf/DurationKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lcom/google/protobuf/Duration$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/DurationKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/protobuf/DurationKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/protobuf/DurationKt$Dsl;->Companion:Lcom/google/protobuf/DurationKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Duration$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/DurationKt$Dsl;->_builder:Lcom/google/protobuf/Duration$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Duration$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/DurationKt$Dsl;-><init>(Lcom/google/protobuf/Duration$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Duration;
    .locals 1
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DurationKt$Dsl;->_builder:Lcom/google/protobuf/Duration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/protobuf/Duration;

    .line 8
    .line 9
    return-object v0
.end method

.method public final clearNanos()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DurationKt$Dsl;->_builder:Lcom/google/protobuf/Duration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Duration$Builder;->clearNanos()Lcom/google/protobuf/Duration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearSeconds()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DurationKt$Dsl;->_builder:Lcom/google/protobuf/Duration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Duration$Builder;->clearSeconds()Lcom/google/protobuf/Duration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getNanos()I
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "getNanos"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DurationKt$Dsl;->_builder:Lcom/google/protobuf/Duration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Duration$Builder;->getNanos()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getSeconds()J
    .locals 2
    .annotation build Lkotlin/jvm/JvmName;
        name = "getSeconds"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DurationKt$Dsl;->_builder:Lcom/google/protobuf/Duration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Duration$Builder;->getSeconds()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final setNanos(I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "setNanos"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DurationKt$Dsl;->_builder:Lcom/google/protobuf/Duration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Duration$Builder;->setNanos(I)Lcom/google/protobuf/Duration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSeconds(J)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "setSeconds"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DurationKt$Dsl;->_builder:Lcom/google/protobuf/Duration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/Duration$Builder;->setSeconds(J)Lcom/google/protobuf/Duration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
