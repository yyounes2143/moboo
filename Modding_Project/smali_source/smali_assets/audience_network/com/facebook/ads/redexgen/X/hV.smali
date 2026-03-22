.class public final Lcom/facebook/ads/redexgen/X/hV;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/NQ;->A03()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/NQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NQ;)V
    .locals 0

    .line 85137
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hV;->A00:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 85138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hV;->A00:Lcom/facebook/ads/redexgen/X/NQ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/NQ;->A00:Z

    if-nez v0, :cond_0

    .line 85139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hV;->A00:Lcom/facebook/ads/redexgen/X/NQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A05(Lcom/facebook/ads/redexgen/X/NQ;)V

    .line 85140
    :cond_0
    return-void
.end method
