.class public abstract Lcom/facebook/ads/redexgen/X/oG;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;,
        Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;,
        Lcom/facebook/ads/redexgen/X/AW;,
        Lcom/facebook/ads/redexgen/X/oF;,
        Lcom/google/common/collect/MultimapBuilder$EnumSetSupplier;,
        Lcom/google/common/collect/MultimapBuilder$TreeSetSupplier;,
        Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;,
        Lcom/google/common/collect/MultimapBuilder$HashSetSupplier;,
        Lcom/google/common/collect/MultimapBuilder$LinkedListSupplier;,
        Lcom/facebook/ads/redexgen/X/AX;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/oG;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 101546
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oG;, "Lcom/google/common/collect/MultimapBuilder<TK0;TV0;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Ab;)V
    .locals 0

    .line 101547
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oG;, "Lcom/google/common/collect/MultimapBuilder<TK0;TV0;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oG;-><init>()V

    return-void
.end method

.method public static A00(I)Lcom/facebook/ads/redexgen/X/Ab;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedKeys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/ads/redexgen/X/oF<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 101548
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oG;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/ll;->A00(ILjava/lang/String;)I

    .line 101549
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ab;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ab;-><init>(I)V

    return-object v0
.end method

.method public static A01(Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/AZ;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK0;>;)",
            "Lcom/facebook/ads/redexgen/X/oF<",
            "TK0;>;"
        }
    .end annotation

    .line 101550
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK0;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/jA;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101551
    new-instance v0, Lcom/facebook/ads/redexgen/X/AZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AZ;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static A02()Lcom/facebook/ads/redexgen/X/oF;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/oF<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .line 101552
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oV;->A03()Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oG;->A01(Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/AZ;

    move-result-object v0

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/oG;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oG;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x61t
        0x74t
        0x6ct
        0x61t
        0x5ft
        0x70t
        0x61t
        0x60t
        0x47t
        0x61t
        0x75t
        0x6ft
    .end array-data
.end method
