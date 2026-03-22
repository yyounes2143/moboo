.class public final Lcom/facebook/ads/redexgen/X/JZ;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/JU;-><init>(Lcom/facebook/ads/redexgen/X/ai;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JU;)V
    .locals 0

    .line 45911
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JZ;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 45912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JZ;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0s(Lcom/facebook/ads/redexgen/X/JU;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JZ;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0G(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/bJ;

    move-result-object v1

    const/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XP;->A0D(ILandroid/view/View;)V

    .line 45914
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JZ;->A00:Lcom/facebook/ads/redexgen/X/JU;

    const-wide/16 v0, 0x7d0

    invoke-virtual {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/JU;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45915
    return-void
.end method
