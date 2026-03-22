.class public final Lcom/facebook/ads/redexgen/X/1W;
.super Lcom/facebook/ads/redexgen/X/Al;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/Al<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final A05:Lcom/facebook/ads/redexgen/X/1W;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1W<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:[Ljava/lang/Object;


# instance fields
.field public final transient A00:[Ljava/lang/Object;

.field public final transient A01:[Ljava/lang/Object;

.field public final transient A02:I

.field public final transient A03:I

.field public final transient A04:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/1W;->A06:[Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/facebook/ads/redexgen/X/1W;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A06:[Ljava/lang/Object;

    sget-object v3, Lcom/facebook/ads/redexgen/X/1W;->A06:[Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/1W;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/1W;->A05:Lcom/facebook/ads/redexgen/X/1W;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "hashCode",
            "table",
            "mask",
            "size"
        }
    .end annotation

    .line 8699
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1W;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Al;-><init>()V

    .line 8700
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:[Ljava/lang/Object;

    .line 8701
    iput p2, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:I

    .line 8702
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1W;->A01:[Ljava/lang/Object;

    .line 8703
    iput p4, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:I

    .line 8704
    iput p5, p0, Lcom/facebook/ads/redexgen/X/1W;->A04:I

    .line 8705
    return-void
.end method


# virtual methods
.method public final A0G()I
    .locals 1

    .line 8706
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1W;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A04:I

    return v0
.end method

.method public final A0H()I
    .locals 1

    .line 8707
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1W;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final A0I([Ljava/lang/Object;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dst",
            "offset"
        }
    .end annotation

    .line 8708
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1W;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A04:I

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8709
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A04:I

    add-int/2addr v0, p2

    return v0
.end method

.method public final A0K()Z
    .locals 1

    .line 8710
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1W;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final A0L()[Ljava/lang/Object;
    .locals 1

    .line 8711
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1W;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:[Ljava/lang/Object;

    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/Am;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TE;>;"
        }
    .end annotation

    .line 8712
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1W;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:[Ljava/lang/Object;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A04:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Am;->A09([Ljava/lang/Object;I)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/pg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/pg<",
            "TE;>;"
        }
    .end annotation

    .line 8713
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1W;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Al;->A0J()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Am;->A0N()Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v0

    return-object v0
.end method

.method public final A0O()Z
    .locals 1

    .line 8714
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1W;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 8715
    .local p1, "this":Lcom/facebook/ads/redexgen/X/1W;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1W;->A01:[Ljava/lang/Object;

    .line 8716
    .local v0, "table":[Ljava/lang/Object;
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 8717
    .end local v2
    :cond_0
    return v2

    .line 8718
    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/mU;->A02(Ljava/lang/Object;)I

    move-result v1

    .line 8719
    .local v2, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:I

    and-int/2addr v1, v0

    .line 8720
    aget-object v0, v3, v1

    .line 8721
    .local v3, "candidate":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 8722
    return v2

    .line 8723
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8724
    const/4 v0, 0x1

    return v0

    .line 8725
    .end local v3    # "candidate":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .line 8726
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1W;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:I

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 8727
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1W;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1W;->A0N()Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 8728
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1W;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A04:I

    return v0
.end method
