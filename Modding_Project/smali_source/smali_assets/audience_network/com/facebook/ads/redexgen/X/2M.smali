.class public final Lcom/facebook/ads/redexgen/X/2M;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrmConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2L;
    }
.end annotation


# instance fields
.field public final A00:Landroid/net/Uri;

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final A03:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final A05:Ljava/util/UUID;

.field public final A06:Ljava/util/UUID;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final A07:Z

.field public final A08:Z

.field public final A09:Z

.field public final A0A:[B


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2L;)V
    .locals 2

    .line 9701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9702
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2L;->A06(Lcom/facebook/ads/redexgen/X/2L;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2L;->A00(Lcom/facebook/ads/redexgen/X/2L;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 9703
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2L;->A03(Lcom/facebook/ads/redexgen/X/2L;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A05:Ljava/util/UUID;

    .line 9704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A05:Ljava/util/UUID;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A06:Ljava/util/UUID;

    .line 9705
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2L;->A00(Lcom/facebook/ads/redexgen/X/2L;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A00:Landroid/net/Uri;

    .line 9706
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2L;->A02(Lcom/facebook/ads/redexgen/X/2L;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A04:Ljava/util/Map;

    .line 9707
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2L;->A02(Lcom/facebook/ads/redexgen/X/2L;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A03:Ljava/util/Map;

    .line 9708
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2L;->A04(Lcom/facebook/ads/redexgen/X/2L;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A08:Z

    .line 9709
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2L;->A06(Lcom/facebook/ads/redexgen/X/2L;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A07:Z

    .line 9710
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2L;->A05(Lcom/facebook/ads/redexgen/X/2L;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A09:Z

    .line 9711
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2L;->A01(Lcom/facebook/ads/redexgen/X/2L;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A02:Ljava/util/List;

    .line 9712
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2L;->A01(Lcom/facebook/ads/redexgen/X/2L;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A01:Ljava/util/List;

    .line 9713
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2L;->A07(Lcom/facebook/ads/redexgen/X/2L;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9714
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2L;->A07(Lcom/facebook/ads/redexgen/X/2L;)[B

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2L;->A07(Lcom/facebook/ads/redexgen/X/2L;)[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 9715
    :goto_1
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A0A:[B

    .line 9716
    return-void

    .line 9717
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 9718
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/2L;Lcom/facebook/ads/redexgen/X/2F;)V
    .locals 0

    .line 9719
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2M;-><init>(Lcom/facebook/ads/redexgen/X/2L;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 9720
    const/4 v2, 0x1

    if-ne p0, p1, :cond_0

    .line 9721
    return v2

    .line 9722
    :cond_0
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/2M;

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 9723
    return v0

    .line 9724
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/2M;

    .line 9725
    .local v1, "other":Lcom/facebook/ads/redexgen/X/2M;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2M;->A05:Ljava/util/UUID;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2M;->A05:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2M;->A00:Landroid/net/Uri;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2M;->A00:Landroid/net/Uri;

    .line 9726
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2M;->A03:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2M;->A03:Ljava/util/Map;

    .line 9727
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/2M;->A08:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/2M;->A08:Z

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/2M;->A07:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/2M;->A07:Z

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/2M;->A09:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/2M;->A09:Z

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2M;->A01:Ljava/util/List;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2M;->A01:Ljava/util/List;

    .line 9728
    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2M;->A0A:[B

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2M;->A0A:[B

    .line 9729
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9730
    :goto_0
    return v2

    .line 9731
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 9732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A05:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 9733
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A00:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A00:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 9734
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A03:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 9735
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A08:Z

    add-int/2addr v1, v0

    .line 9736
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A07:Z

    add-int/2addr v1, v0

    .line 9737
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A09:Z

    add-int/2addr v1, v0

    .line 9738
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 9739
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2M;->A0A:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 9740
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1

    .line 9741
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
