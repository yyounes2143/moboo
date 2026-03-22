.class public final Lcom/facebook/ads/redexgen/X/5t;
.super Lcom/facebook/ads/redexgen/X/DV;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/LZ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LZ;)V
    .locals 0

    .line 17175
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5t;->A00:Lcom/facebook/ads/redexgen/X/LZ;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DV;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DW;)V
    .locals 1

    .line 17176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5t;->A00:Lcom/facebook/ads/redexgen/X/LZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LZ;->A01(Lcom/facebook/ads/redexgen/X/LZ;)Lcom/facebook/ads/redexgen/X/YT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YT;->ADH()V

    .line 17177
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 17178
    check-cast p1, Lcom/facebook/ads/redexgen/X/DW;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5t;->A00(Lcom/facebook/ads/redexgen/X/DW;)V

    return-void
.end method
