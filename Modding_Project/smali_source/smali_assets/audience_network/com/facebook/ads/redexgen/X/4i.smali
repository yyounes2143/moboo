.class public final Lcom/facebook/ads/redexgen/X/4i;
.super Lcom/facebook/ads/redexgen/X/DP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4Z;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 0

    .line 14202
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4i;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DP;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DQ;)V
    .locals 1

    .line 14203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4i;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A0A:Lcom/facebook/ads/redexgen/X/XH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XH;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4i;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->A1C()V

    .line 14205
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 14206
    check-cast p1, Lcom/facebook/ads/redexgen/X/DQ;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4i;->A00(Lcom/facebook/ads/redexgen/X/DQ;)V

    return-void
.end method
