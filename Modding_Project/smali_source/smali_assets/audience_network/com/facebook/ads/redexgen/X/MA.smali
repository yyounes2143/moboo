.class public final Lcom/facebook/ads/redexgen/X/MA;
.super Lcom/facebook/ads/redexgen/X/eW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Lz;->A00()Lcom/facebook/ads/redexgen/X/MA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Lz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lz;)V
    .locals 0

    .line 51854
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MA;->A00:Lcom/facebook/ads/redexgen/X/Lz;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eW;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 51855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MA;->A00:Lcom/facebook/ads/redexgen/X/Lz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lz;->A02(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0a()V

    .line 51856
    return-void
.end method

.method public final A03()V
    .locals 3

    .line 51857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MA;->A00:Lcom/facebook/ads/redexgen/X/Lz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lz;->A09(Lcom/facebook/ads/redexgen/X/Lz;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MA;->A00:Lcom/facebook/ads/redexgen/X/Lz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lz;->A02(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/db;->A02:Lcom/facebook/ads/redexgen/X/db;

    const/16 v0, 0x1d

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 51859
    :cond_0
    return-void
.end method
