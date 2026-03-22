.class public final Lcom/facebook/appevents/ml/Model;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/ml/Model$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u001a\n\u0002\u0010%\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 (2\u00020\u0001:\u0001(B\u001d\u0008\u0002\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J-\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0010\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u000fR\u0014\u0010\u0015\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u000fR\u0014\u0010\u0017\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u000fR\u0014\u0010\u0019\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u000fR\u0014\u0010\u001b\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u000fR\u0014\u0010\u001d\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u000fR\u0014\u0010\u001f\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u000fR\u0014\u0010!\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u000fR\u0014\u0010#\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u000fR \u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006)"
    }
    d2 = {
        "Lcom/facebook/appevents/ml/Model;",
        "",
        "",
        "",
        "Lcom/facebook/appevents/ml/MTensor;",
        "weights",
        "<init>",
        "(Ljava/util/Map;)V",
        "dense",
        "",
        "texts",
        "task",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/appevents/ml/MTensor;[Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/ml/MTensor;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcom/facebook/appevents/ml/MTensor;",
        "embedding",
        "convs0Weight",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "convs1Weight",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "convs2Weight",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "convs0Bias",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "convs1Bias",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "convs2Bias",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "fc1Weight",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "fc2Weight",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "fc1Bias",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "fc2Bias",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/Map;",
        "finalWeights",
        "Companion",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/appevents/ml/Model$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/ml/MTensor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/facebook/appevents/ml/Model$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/appevents/ml/Model$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/appevents/ml/Model;->Companion:Lcom/facebook/appevents/ml/Model$Companion;

    .line 8
    .line 9
    const-string v0, "embedding.weight"

    .line 10
    .line 11
    const-string v1, "embed.weight"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "dense1.weight"

    .line 18
    .line 19
    const-string v2, "fc1.weight"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "dense2.weight"

    .line 26
    .line 27
    const-string v3, "fc2.weight"

    .line 28
    .line 29
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "dense3.weight"

    .line 34
    .line 35
    const-string v4, "fc3.weight"

    .line 36
    .line 37
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "dense1.bias"

    .line 42
    .line 43
    const-string v5, "fc1.bias"

    .line 44
    .line 45
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string v5, "dense2.bias"

    .line 50
    .line 51
    const-string v6, "fc2.bias"

    .line 52
    .line 53
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string v6, "dense3.bias"

    .line 58
    .line 59
    const-string v7, "fc3.bias"

    .line 60
    .line 61
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const/4 v7, 0x7

    .line 66
    new-array v7, v7, [Lkotlin/Pair;

    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    aput-object v0, v7, v8

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    aput-object v1, v7, v0

    .line 73
    .line 74
    const/4 v0, 0x2

    .line 75
    aput-object v2, v7, v0

    .line 76
    .line 77
    const/4 v0, 0x3

    .line 78
    aput-object v3, v7, v0

    .line 79
    .line 80
    const/4 v0, 0x4

    .line 81
    aput-object v4, v7, v0

    .line 82
    .line 83
    const/4 v0, 0x5

    .line 84
    aput-object v5, v7, v0

    .line 85
    .line 86
    const/4 v0, 0x6

    .line 87
    aput-object v6, v7, v0

    .line 88
    .line 89
    invoke-static {v7}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 94
    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/ml/MTensor;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "embed.weight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required value was null."

    if-eqz v0, :cond_d

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 4
    sget-object v0, Lcom/facebook/appevents/ml/Operator;->INSTANCE:Lcom/facebook/appevents/ml/Operator;

    const-string v0, "convs.0.weight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v0}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 5
    const-string v0, "convs.1.weight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v0}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 6
    const-string v0, "convs.2.weight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v0}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 7
    const-string v0, "convs.0.bias"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 8
    const-string v0, "convs.1.bias"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 9
    const-string v0, "convs.2.bias"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 10
    const-string v0, "fc1.weight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v0}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 11
    const-string v0, "fc2.weight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v0}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 12
    const-string v0, "fc1.bias"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 13
    const-string v0, "fc2.bias"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 15
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_INTEGRITY_DETECT:Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-virtual {v0}, Lcom/facebook/appevents/ml/ModelManager$Task;->toKey()Ljava/lang/String;

    move-result-object v0

    .line 16
    sget-object v1, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-virtual {v1}, Lcom/facebook/appevents/ml/ModelManager$Task;->toKey()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 19
    const-string v2, ".weight"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 20
    const-string v3, ".bias"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/ml/MTensor;

    .line 22
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/appevents/ml/MTensor;

    if-eqz v3, :cond_1

    .line 23
    invoke-static {v3}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v3

    .line 24
    iget-object v5, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v4, :cond_0

    .line 25
    iget-object v2, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void

    .line 26
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/appevents/ml/Model;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/appevents/ml/Model;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;[Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/ml/MTensor;
    .locals 7
    .param p1    # Lcom/facebook/appevents/ml/MTensor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    return-object v3

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Lcom/facebook/appevents/ml/Operator;->INSTANCE:Lcom/facebook/appevents/ml/Operator;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 14
    .line 15
    const/16 v4, 0x80

    .line 16
    .line 17
    invoke-static {p2, v4, v2}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/String;ILcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object v2, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 22
    .line 23
    invoke-static {p2, v2}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iget-object v2, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 28
    .line 29
    invoke-static {p2, v2}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 36
    .line 37
    invoke-static {p2, v2}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v4, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 42
    .line 43
    invoke-static {v2, v4}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v1}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v4, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 54
    .line 55
    invoke-static {v2, v4}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-object v5, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 60
    .line 61
    invoke-static {v4, v5}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v4}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0}, Lcom/facebook/appevents/ml/MTensor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-static {p2, v5}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {v2, v0}, Lcom/facebook/appevents/ml/MTensor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    invoke-static {v2, v5}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v4, v0}, Lcom/facebook/appevents/ml/MTensor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    invoke-static {v4, v5}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {p2, v0}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v2, v0}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;I)V

    .line 95
    .line 96
    .line 97
    invoke-static {v4, v0}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;I)V

    .line 98
    .line 99
    .line 100
    const/4 v5, 0x4

    .line 101
    new-array v5, v5, [Lcom/facebook/appevents/ml/MTensor;

    .line 102
    .line 103
    const/4 v6, 0x0

    .line 104
    aput-object p2, v5, v6

    .line 105
    .line 106
    aput-object v2, v5, v0

    .line 107
    .line 108
    aput-object v4, v5, v1

    .line 109
    .line 110
    const/4 p2, 0x3

    .line 111
    aput-object p1, v5, p2

    .line 112
    .line 113
    invoke-static {v5}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object p2, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 118
    .line 119
    iget-object v0, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 120
    .line 121
    invoke-static {p1, p2, v0}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {p1}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;)V

    .line 126
    .line 127
    .line 128
    iget-object p2, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 129
    .line 130
    iget-object v0, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/appevents/ml/MTensor;

    .line 131
    .line 132
    invoke-static {p1, p2, v0}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {p1}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;)V

    .line 137
    .line 138
    .line 139
    iget-object p2, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 140
    .line 141
    const-string v0, ".weight"

    .line 142
    .line 143
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    check-cast p2, Lcom/facebook/appevents/ml/MTensor;

    .line 152
    .line 153
    iget-object v0, p0, Lcom/facebook/appevents/ml/Model;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 154
    .line 155
    const-string v1, ".bias"

    .line 156
    .line 157
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p3

    .line 161
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    check-cast p3, Lcom/facebook/appevents/ml/MTensor;

    .line 166
    .line 167
    if-eqz p2, :cond_2

    .line 168
    .line 169
    if-nez p3, :cond_1

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Lcom/facebook/appevents/ml/Operator;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/ml/MTensor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    .line 179
    return-object p1

    .line 180
    :catchall_0
    move-exception p1

    .line 181
    goto :goto_1

    .line 182
    :cond_2
    :goto_0
    return-object v3

    .line 183
    :goto_1
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    return-object v3
.end method
