.class public abstract Lcom/facebook/ads/redexgen/X/ou;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Sets$DescendingSet;,
        Lcom/google/common/collect/Sets$UnmodifiableNavigableSet;,
        Lcom/google/common/collect/Sets$PowerSet;,
        Lcom/google/common/collect/Sets$SubSet;,
        Lcom/google/common/collect/Sets$CartesianSet;,
        Lcom/google/common/collect/Sets$FilteredNavigableSet;,
        Lcom/facebook/ads/redexgen/X/1T;,
        Lcom/facebook/ads/redexgen/X/AG;,
        Lcom/facebook/ads/redexgen/X/os;,
        Lcom/facebook/ads/redexgen/X/oq;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3356
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QMNv5OeLi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JpCyGMjCH0qsxjrywkKfLwsh76HDYAsW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KBfMQLxtUMBpcerO39v"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kcWpGIrroOmjfPs85a"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Ek92TFQTKr4621X3uMn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aSOd7mkF1z21DVbAzu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Gro5DGcboyXTTqFPFEdSQ7qnAhBJScvW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "47M7luGjiBOnZ0iOunZSyxDazaCqRcyy"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ou;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ou;->A08()V

    return-void
.end method

.method public static A00(Ljava/util/Set;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)I"
        }
    .end annotation

    .line 102464
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    const/4 v2, 0x0

    .line 102465
    .local v0, "hashCode":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 102466
    .local v2, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    .line 102467
    not-int v0, v2

    not-int v2, v0

    .line 102468
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 102469
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 102470
    :cond_1
    return v2
.end method

.method public static A01(Ljava/util/Set;Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/AI;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "set1",
            "set2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TE;>;",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Lcom/facebook/ads/redexgen/X/os<",
            "TE;>;"
        }
    .end annotation

    .line 102471
    .local v1, "set1":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    .local v2, "set2":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    const/16 v2, 0xa

    const/4 v1, 0x4

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ou;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/jA;->A05(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102472
    const/16 v2, 0xe

    const/4 v1, 0x4

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ou;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/jA;->A05(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102473
    new-instance v0, Lcom/facebook/ads/redexgen/X/AI;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/AI;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public static A02(Ljava/util/Set;Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/AH;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "set1",
            "set2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/Set<",
            "*>;)",
            "Lcom/facebook/ads/redexgen/X/os<",
            "TE;>;"
        }
    .end annotation

    .line 102474
    .local v1, "set1":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local v2, "set2":Ljava/util/Set;, "Ljava/util/Set<*>;"
    const/16 v2, 0xa

    const/4 v1, 0x4

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ou;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/jA;->A05(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102475
    const/16 v2, 0xe

    const/4 v1, 0x4

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ou;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/jA;->A05(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102476
    new-instance v0, Lcom/facebook/ads/redexgen/X/AH;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/AH;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public static A03(Ljava/util/SortedSet;Lcom/facebook/ads/redexgen/X/jB;)Lcom/facebook/ads/redexgen/X/1T;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "unfiltered",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lcom/facebook/ads/redexgen/X/jB<",
            "-TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 102477
    .local p1, "unfiltered":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p2, "predicate":Lcom/facebook/ads/redexgen/X/jB;, "Lcom/google/common/base/Predicate<-TE;>;"
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_0

    .line 102478
    check-cast p0, Lcom/facebook/ads/redexgen/X/AG;

    .line 102479
    .local v0, "filtered":Lcom/facebook/ads/redexgen/X/AG;, "Lcom/google/common/collect/Sets$FilteredSet<TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A00:Lcom/facebook/ads/redexgen/X/jB;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/jD;->A00(Lcom/facebook/ads/redexgen/X/jB;Lcom/facebook/ads/redexgen/X/jB;)Lcom/facebook/ads/redexgen/X/BR;

    move-result-object v2

    .line 102480
    .local v1, "combinedPredicate":Lcom/facebook/ads/redexgen/X/jB;, "Lcom/google/common/base/Predicate<TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lm;->A01:Ljava/util/Collection;

    check-cast v1, Ljava/util/SortedSet;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1T;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/1T;-><init>(Ljava/util/SortedSet;Lcom/facebook/ads/redexgen/X/jB;)V

    return-object v0

    .line 102481
    .end local v0    # "filtered":Lcom/facebook/ads/redexgen/X/AG;, "Lcom/google/common/collect/Sets$FilteredSet<TE;>;"
    .end local v1    # "combinedPredicate":Lcom/facebook/ads/redexgen/X/jB;, "Lcom/google/common/base/Predicate<TE;>;"
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/jA;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/SortedSet;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/jA;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/jB;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1T;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/1T;-><init>(Ljava/util/SortedSet;Lcom/facebook/ads/redexgen/X/jB;)V

    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ou;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 102482
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static A06(I)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 102483
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/nz;->A00(I)I

    move-result p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method public static A07(Ljava/util/Set;Lcom/facebook/ads/redexgen/X/jB;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "unfiltered",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lcom/facebook/ads/redexgen/X/jB<",
            "-TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 102484
    .local p1, "unfiltered":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p2, "predicate":Lcom/facebook/ads/redexgen/X/jB;, "Lcom/google/common/base/Predicate<-TE;>;"
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 102485
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/ou;->A03(Ljava/util/SortedSet;Lcom/facebook/ads/redexgen/X/jB;)Lcom/facebook/ads/redexgen/X/1T;

    move-result-object v0

    return-object v0

    .line 102486
    :cond_0
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_1

    .line 102487
    check-cast p0, Lcom/facebook/ads/redexgen/X/AG;

    .line 102488
    .local v0, "filtered":Lcom/facebook/ads/redexgen/X/AG;, "Lcom/google/common/collect/Sets$FilteredSet<TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A00:Lcom/facebook/ads/redexgen/X/jB;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/jD;->A00(Lcom/facebook/ads/redexgen/X/jB;Lcom/facebook/ads/redexgen/X/jB;)Lcom/facebook/ads/redexgen/X/BR;

    move-result-object v2

    .line 102489
    .local v1, "combinedPredicate":Lcom/facebook/ads/redexgen/X/jB;, "Lcom/google/common/base/Predicate<TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lm;->A01:Ljava/util/Collection;

    check-cast v1, Ljava/util/Set;

    new-instance v0, Lcom/facebook/ads/redexgen/X/AG;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/AG;-><init>(Ljava/util/Set;Lcom/facebook/ads/redexgen/X/jB;)V

    return-object v0

    .line 102490
    .end local v0    # "filtered":Lcom/facebook/ads/redexgen/X/AG;, "Lcom/google/common/collect/Sets$FilteredSet<TE;>;"
    .end local v1    # "combinedPredicate":Lcom/facebook/ads/redexgen/X/jB;, "Lcom/google/common/base/Predicate<TE;>;"
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/jA;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/jA;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/jB;

    new-instance v0, Lcom/facebook/ads/redexgen/X/AG;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/AG;-><init>(Ljava/util/Set;Lcom/facebook/ads/redexgen/X/jB;)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ou;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x19t
        0x10t
        0x19t
        0x11t
        0x19t
        0x12t
        0x8t
        0x2ft
        0x19t
        0x8t
        0x79t
        0x6ft
        0x7et
        0x3bt
        0x13t
        0x5t
        0x14t
        0x52t
    .end array-data
.end method

.method public static A09(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 5
    .param p0    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 102491
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    const/4 v4, 0x1

    if-ne p0, p1, :cond_0

    .line 102492
    return v4

    .line 102493
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 102494
    sget-object v1, Lcom/facebook/ads/redexgen/X/ou;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/ou;->A01:[Ljava/lang/String;

    const-string v1, "mkkUVP7U2mO33UgVMEf"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "sZqEaXQqwVxNGw5Qr8W"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast p1, Ljava/util/Set;

    .line 102495
    .local v1, "o":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v1, v0, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    return v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102496
    .local v0, "ignored":Ljava/lang/RuntimeException;
    :catch_0
    return v3

    .line 102497
    .end local v0    # "ignored":Ljava/lang/RuntimeException;
    .end local v1    # "o":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_3
    return v3
.end method

.method public static A0A(Ljava/util/Set;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "set",
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 102498
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local v3, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/jA;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102499
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 102500
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ou;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102501
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ou;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/ou;->A01:[Ljava/lang/String;

    const-string v1, "1Hjzr9oWssjCwBhAVsj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "95dUReBvqcjLhc0vRoV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-le v4, v3, :cond_2

    .line 102502
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/nL;->A0F(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 102503
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ou;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ou;->A01:[Ljava/lang/String;

    const-string v1, "sptQvlXJPhLrnOvdD6zGRYz2Tqrv0eAh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/ou;->A0B(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result v0

    return v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/ou;->A01:[Ljava/lang/String;

    const-string v1, "FhrMChMKSM6HFLoTDqL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "aqz5QQGy23EnDjT9ypo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/ou;->A0B(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method public static A0B(Ljava/util/Set;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "set",
            "iterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/util/Iterator<",
            "*>;)Z"
        }
    .end annotation

    .line 102504
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v1, 0x0

    .line 102505
    .local v0, "changed":Z
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102506
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v1, v0

    goto :goto_0

    .line 102507
    :cond_0
    return v1
.end method
