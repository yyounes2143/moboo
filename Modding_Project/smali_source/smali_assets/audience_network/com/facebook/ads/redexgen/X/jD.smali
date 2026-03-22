.class public abstract Lcom/facebook/ads/redexgen/X/jD;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Predicates$ContainsPatternFromStringPredicate;,
        Lcom/google/common/base/Predicates$ContainsPatternPredicate;,
        Lcom/google/common/base/Predicates$CompositionPredicate;,
        Lcom/google/common/base/Predicates$InPredicate;,
        Lcom/google/common/base/Predicates$SubtypeOfPredicate;,
        Lcom/google/common/base/Predicates$InstanceOfPredicate;,
        Lcom/google/common/base/Predicates$IsEqualToPredicate;,
        Lcom/google/common/base/Predicates$OrPredicate;,
        Lcom/facebook/ads/redexgen/X/BR;,
        Lcom/google/common/base/Predicates$NotPredicate;,
        Lcom/google/common/base/Predicates$ObjectPredicate;
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jD;->A05()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/jB;Lcom/facebook/ads/redexgen/X/jB;)Lcom/facebook/ads/redexgen/X/BR;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "second"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/ads/redexgen/X/jB<",
            "-TT;>;",
            "Lcom/facebook/ads/redexgen/X/jB<",
            "-TT;>;)",
            "Lcom/facebook/ads/redexgen/X/jB<",
            "TT;>;"
        }
    .end annotation

    .line 88381
    .local p2, "first":Lcom/facebook/ads/redexgen/X/jB;, "Lcom/google/common/base/Predicate<-TT;>;"
    .local p3, "second":Lcom/facebook/ads/redexgen/X/jB;, "Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/jA;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/redexgen/X/jB;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/jA;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/jB;

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/jD;->A04(Lcom/facebook/ads/redexgen/X/jB;Lcom/facebook/ads/redexgen/X/jB;)Ljava/util/List;

    move-result-object p1

    const/4 p0, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/BR;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/BR;-><init>(Ljava/util/List;Lcom/facebook/ads/redexgen/X/jC;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/jD;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "methodName",
            "components"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 88382
    .local p2, "components":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jD;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 88383
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 88384
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 88385
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 88386
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88387
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88388
    const/4 v3, 0x0

    .line 88389
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 88390
    :cond_1
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A03(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 0

    .line 88391
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/jD;->A02(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/jB;Lcom/facebook/ads/redexgen/X/jB;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "second"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/ads/redexgen/X/jB<",
            "-TT;>;",
            "Lcom/facebook/ads/redexgen/X/jB<",
            "-TT;>;)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/jB<",
            "-TT;>;>;"
        }
    .end annotation

    .line 88392
    .local p0, "first":Lcom/facebook/ads/redexgen/X/jB;, "Lcom/google/common/base/Predicate<-TT;>;"
    .local p1, "second":Lcom/facebook/ads/redexgen/X/jB;, "Lcom/google/common/base/Predicate<-TT;>;"
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/jB;

    const/4 v0, 0x0

    aput-object p0, v1, v0

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jD;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x3bt
        0x5dt
        0x50t
        0x4ft
        0x54t
        0x4et
        0x4ct
        0x5ft
        0x50t
        0x5et
        0x19t
    .end array-data
.end method
