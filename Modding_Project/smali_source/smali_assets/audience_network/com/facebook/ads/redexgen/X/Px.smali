.class public final Lcom/facebook/ads/redexgen/X/Px;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Pz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/ads/redexgen/X/Py;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1511
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RlDlwXS4AA55AOqx8zmN7uoMQ4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FglEZvMIBCB6z"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "AxTekMmYmWDdJoDxuavW255zDNKNRAPE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "pDpvZxom4p5NfzWuwibdxFCyrgD8wKok"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "A10HdUhRMRjxQ62diLF5JQ0qPoODY0oj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HiaacAz8KFEe90RKULVJfn7mD15J7Igj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NHRqTP3H9N0qm1ewn1pnzRz0iIE8sZVk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "d5VyinGL3JDhuqMz7l90vG32rgbNgkhM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Px;->A00:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Py;Lcom/facebook/ads/redexgen/X/Py;)I
    .locals 5

    .line 58738
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Py;->A03:Lcom/facebook/ads/redexgen/X/6g;

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Py;->A03:Lcom/facebook/ads/redexgen/X/6g;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eq v1, v0, :cond_4

    .line 58739
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/Py;->A03:Lcom/facebook/ads/redexgen/X/6g;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Px;->A00:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Px;->A00:[Ljava/lang/String;

    const-string v1, "WTdcF3CBINcFCy4xHoe1W3dXr7HqLtJl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "sYvRb4Jfa5Xca5GLbtDoWdBBrccl9kaR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    :goto_2
    return v4

    :cond_0
    const/4 v4, -0x1

    goto :goto_2

    .line 58740
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58741
    :cond_4
    iget-boolean v1, p1, Lcom/facebook/ads/redexgen/X/Py;->A04:Z

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Py;->A04:Z

    if-eq v1, v0, :cond_6

    .line 58742
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Py;->A04:Z

    if-eqz v0, :cond_5

    const/4 v4, -0x1

    :cond_5
    return v4

    .line 58743
    :cond_6
    iget v1, p2, Lcom/facebook/ads/redexgen/X/Py;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Py;->A02:I

    sub-int/2addr v1, v0

    .line 58744
    .local v0, "deltaViewVelocity":I
    if-eqz v1, :cond_7

    return v1

    .line 58745
    :cond_7
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Py;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Py;->A00:I

    sub-int/2addr v1, v0

    .line 58746
    .local v2, "deltaDistanceToItem":I
    if-eqz v1, :cond_8

    return v1

    .line 58747
    :cond_8
    return v2
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 58748
    check-cast p1, Lcom/facebook/ads/redexgen/X/Py;

    check-cast p2, Lcom/facebook/ads/redexgen/X/Py;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Px;->A00(Lcom/facebook/ads/redexgen/X/Py;Lcom/facebook/ads/redexgen/X/Py;)I

    move-result v0

    return v0
.end method
