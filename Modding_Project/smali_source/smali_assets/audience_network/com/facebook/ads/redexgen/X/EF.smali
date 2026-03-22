.class public final Lcom/facebook/ads/redexgen/X/EF;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/E1;->A0I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/E1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 0

    .line 34628
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EF;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 34629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0X(Lcom/facebook/ads/redexgen/X/E1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0A(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getCurrentPositionInMillis()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/3Q;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3Q;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Te;->A02(Lcom/facebook/ads/redexgen/X/Td;)V

    .line 34631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A08(Lcom/facebook/ads/redexgen/X/E1;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A07(Lcom/facebook/ads/redexgen/X/E1;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34632
    :cond_0
    return-void
.end method
