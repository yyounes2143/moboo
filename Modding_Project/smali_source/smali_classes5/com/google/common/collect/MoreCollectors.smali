.class final Lcom/google/common/collect/MoreCollectors;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation build Lcom/google/common/collect/IgnoreJRERequirement;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MoreCollectors$ToOptionalState;
    }
.end annotation


# static fields
.field private static final NULL_PLACEHOLDER:Ljava/lang/Object;

.field private static final ONLY_ELEMENT:Lj$/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final TO_OPTIONAL:Lj$/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Lj$/util/Optional<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/common/collect/IIl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/IIl;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/common/collect/O0000000000;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/common/collect/O0000000000;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/common/collect/O000000000;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/google/common/collect/O000000000;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/google/common/collect/O00000000;

    .line 17
    .line 18
    invoke-direct {v3}, Lcom/google/common/collect/O00000000;-><init>()V

    .line 19
    .line 20
    .line 21
    sget-object v4, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    new-array v6, v5, [Lj$/util/stream/Collector$Characteristics;

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    aput-object v4, v6, v7

    .line 28
    .line 29
    invoke-static {v0, v1, v2, v3, v6}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/google/common/collect/MoreCollectors;->TO_OPTIONAL:Lj$/util/stream/Collector;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/Object;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/google/common/collect/MoreCollectors;->NULL_PLACEHOLDER:Ljava/lang/Object;

    .line 41
    .line 42
    new-instance v0, Lcom/google/common/collect/IIl;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/google/common/collect/IIl;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/google/common/collect/O0000000;

    .line 48
    .line 49
    invoke-direct {v1}, Lcom/google/common/collect/O0000000;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lcom/google/common/collect/O000000000;

    .line 53
    .line 54
    invoke-direct {v2}, Lcom/google/common/collect/O000000000;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v3, Lcom/google/common/collect/O000000;

    .line 58
    .line 59
    invoke-direct {v3}, Lcom/google/common/collect/O000000;-><init>()V

    .line 60
    .line 61
    .line 62
    new-array v5, v5, [Lj$/util/stream/Collector$Characteristics;

    .line 63
    .line 64
    aput-object v4, v5, v7

    .line 65
    .line 66
    invoke-static {v0, v1, v2, v3, v5}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lcom/google/common/collect/MoreCollectors;->ONLY_ELEMENT:Lj$/util/stream/Collector;

    .line 71
    .line 72
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/common/collect/MoreCollectors$ToOptionalState;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->getElement()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/google/common/collect/MoreCollectors;->NULL_PLACEHOLDER:Ljava/lang/Object;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    :cond_0
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/common/collect/MoreCollectors$ToOptionalState;Ljava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/google/common/collect/MoreCollectors;->NULL_PLACEHOLDER:Ljava/lang/Object;

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->add(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static onlyElement()Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TT;*TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/MoreCollectors;->ONLY_ELEMENT:Lj$/util/stream/Collector;

    .line 2
    .line 3
    return-object v0
.end method

.method public static toOptional()Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lj$/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/MoreCollectors;->TO_OPTIONAL:Lj$/util/stream/Collector;

    .line 2
    .line 3
    return-object v0
.end method
