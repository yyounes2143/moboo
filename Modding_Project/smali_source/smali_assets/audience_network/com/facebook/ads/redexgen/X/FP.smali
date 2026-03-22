.class public final Lcom/facebook/ads/redexgen/X/FP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/3r;->getPackageInstallListener()Lcom/facebook/ads/redexgen/X/Wv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3r;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3r;)V
    .locals 0

    .line 36116
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FP;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AEQ(Ljava/lang/String;)V
    .locals 4

    .line 36117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FP;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3r;->A04(Lcom/facebook/ads/redexgen/X/3r;)Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/ca;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/ca;-><init>(Lcom/facebook/ads/redexgen/X/FP;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36118
    return-void
.end method

.method public final AER(Ljava/lang/String;)V
    .locals 2

    .line 36119
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FP;->A00:Lcom/facebook/ads/redexgen/X/3r;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0c:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3r;->A0J(Lcom/facebook/ads/redexgen/X/3r;Lcom/facebook/ads/redexgen/X/UZ;)V

    .line 36120
    return-void
.end method
