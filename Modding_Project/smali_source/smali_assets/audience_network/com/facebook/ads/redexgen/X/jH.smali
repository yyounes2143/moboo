.class public final Lcom/facebook/ads/redexgen/X/jH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/BJ;,
        Lcom/facebook/ads/redexgen/X/jG;,
        Lcom/google/common/base/Splitter$MapSplitter;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/BZ;

.field public final A02:Lcom/facebook/ads/redexgen/X/jG;

.field public final A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/jG;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 88481
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BZ;->A03()Lcom/facebook/ads/redexgen/X/BZ;

    move-result-object v2

    const v1, 0x7fffffff

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/jH;-><init>(Lcom/facebook/ads/redexgen/X/jG;ZLcom/facebook/ads/redexgen/X/BZ;I)V

    .line 88482
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/jG;ZLcom/facebook/ads/redexgen/X/BZ;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "strategy",
            "omitEmptyStrings",
            "trimmer",
            "limit"
        }
    .end annotation

    .line 88483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88484
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jH;->A02:Lcom/facebook/ads/redexgen/X/jG;

    .line 88485
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/jH;->A03:Z

    .line 88486
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/jH;->A01:Lcom/facebook/ads/redexgen/X/BZ;

    .line 88487
    iput p4, p0, Lcom/facebook/ads/redexgen/X/jH;->A00:I

    .line 88488
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/jH;)I
    .locals 0

    .line 88489
    iget p0, p0, Lcom/facebook/ads/redexgen/X/jH;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/jH;)Lcom/facebook/ads/redexgen/X/BZ;
    .locals 0

    .line 88490
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/jH;->A01:Lcom/facebook/ads/redexgen/X/BZ;

    return-object p0
.end method

.method public static A02(C)Lcom/facebook/ads/redexgen/X/jH;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "separator"
        }
    .end annotation

    .line 88491
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/BZ;->A02(C)Lcom/facebook/ads/redexgen/X/0b;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/jH;->A03(Lcom/facebook/ads/redexgen/X/BZ;)Lcom/facebook/ads/redexgen/X/jH;

    move-result-object p0

    return-object p0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/BZ;)Lcom/facebook/ads/redexgen/X/jH;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "separatorMatcher"
        }
    .end annotation

    .line 88492
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/jA;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88493
    new-instance v1, Lcom/facebook/ads/redexgen/X/BK;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/BK;-><init>(Lcom/facebook/ads/redexgen/X/BZ;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/jH;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/jH;-><init>(Lcom/facebook/ads/redexgen/X/jG;)V

    return-object v0
.end method

.method private A04(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jH;->A02:Lcom/facebook/ads/redexgen/X/jG;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/jG;->AAc(Lcom/facebook/ads/redexgen/X/jH;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/jH;)Z
    .locals 0

    .line 88495
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/jH;->A03:Z

    return p0
.end method


# virtual methods
.method public final A06(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88496
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/jA;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88497
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/jH;->A04(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v2

    .line 88498
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88499
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88500
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88501
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
