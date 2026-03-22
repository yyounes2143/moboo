.class public final Lcom/facebook/ads/redexgen/X/Xd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Om;
    }
.end annotation


# static fields
.field public static A02:Lcom/facebook/ads/redexgen/X/Xd;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Om;

.field public final A01:Lcom/facebook/ads/redexgen/X/Xf;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/TE;)V
    .locals 1

    .line 72643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72644
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xf;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Xf;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A01:Lcom/facebook/ads/redexgen/X/Xf;

    .line 72645
    new-instance v0, Lcom/facebook/ads/redexgen/X/Om;

    invoke-direct {v0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/Om;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A00:Lcom/facebook/ads/redexgen/X/Om;

    .line 72646
    return-void
.end method

.method private A00()V
    .locals 2

    .line 72647
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xd;->A01:Lcom/facebook/ads/redexgen/X/Xf;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A00:Lcom/facebook/ads/redexgen/X/Om;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xf;->A03(Lcom/facebook/ads/redexgen/X/Xe;)V

    .line 72648
    return-void
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/TE;)V
    .locals 1

    .line 72649
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A1X(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72650
    return-void

    .line 72651
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xd;->A02:Lcom/facebook/ads/redexgen/X/Xd;

    if-nez v0, :cond_1

    .line 72652
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xd;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Xd;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/TE;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xd;->A02:Lcom/facebook/ads/redexgen/X/Xd;

    .line 72653
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xd;->A02:Lcom/facebook/ads/redexgen/X/Xd;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00()V

    .line 72654
    :goto_0
    return-void

    .line 72655
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xd;->A02:Lcom/facebook/ads/redexgen/X/Xd;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lcom/facebook/ads/redexgen/X/TE;)V

    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/TE;)V
    .locals 1

    .line 72656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A00:Lcom/facebook/ads/redexgen/X/Om;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Om;->A08(Lcom/facebook/ads/redexgen/X/Om;Lcom/facebook/ads/redexgen/X/TE;)V

    .line 72657
    return-void
.end method
