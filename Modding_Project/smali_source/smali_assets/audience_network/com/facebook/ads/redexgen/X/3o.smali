.class public final Lcom/facebook/ads/redexgen/X/3o;
.super Lcom/facebook/ads/redexgen/X/DU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/dO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/dO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dO;)V
    .locals 0

    .line 11302
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3o;->A00:Lcom/facebook/ads/redexgen/X/dO;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DU;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3Z;)V
    .locals 13

    .line 11303
    new-instance v5, Lcom/facebook/ads/redexgen/X/h9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A00:Lcom/facebook/ads/redexgen/X/dO;

    .line 11304
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dO;->A03(Lcom/facebook/ads/redexgen/X/dO;)Ljava/lang/String;

    move-result-object v6

    .line 11305
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/DZ;->A03()J

    move-result-wide v7

    .line 11306
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/DZ;->A01()J

    move-result-wide v9

    .line 11307
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/DZ;->A02()J

    move-result-wide v11

    invoke-direct/range {v5 .. v12}, Lcom/facebook/ads/redexgen/X/h9;-><init>(Ljava/lang/String;JJJ)V

    .line 11308
    .local v0, "videoFrameInfo":Lcom/facebook/ads/redexgen/X/h9;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/DZ;->A00()F

    move-result v0

    float-to-double v3, v0

    const-wide v1, 0x3fa999999999999aL    # 0.05

    cmpl-double v0, v3, v1

    if-ltz v0, :cond_0

    .line 11309
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/DZ;->A01()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/h9;->A06(J)V

    .line 11310
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A00:Lcom/facebook/ads/redexgen/X/dO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dO;->A00(Lcom/facebook/ads/redexgen/X/dO;)I

    .line 11311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A00:Lcom/facebook/ads/redexgen/X/dO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dO;->A01(Lcom/facebook/ads/redexgen/X/dO;)Lcom/facebook/ads/redexgen/X/h8;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/h8;->A04(Lcom/facebook/ads/redexgen/X/h9;)V

    .line 11312
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 11313
    check-cast p1, Lcom/facebook/ads/redexgen/X/3Z;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3o;->A00(Lcom/facebook/ads/redexgen/X/3Z;)V

    return-void
.end method
