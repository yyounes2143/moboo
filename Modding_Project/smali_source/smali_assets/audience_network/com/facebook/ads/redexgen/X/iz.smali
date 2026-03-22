.class public final Lcom/facebook/ads/redexgen/X/iz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/iy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/Ln;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87448
    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/iz;->A01:J

    .line 87449
    const/16 v0, 0x5000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/iz;->A00:I

    .line 87450
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/Ln;)Lcom/facebook/ads/redexgen/X/iz;
    .locals 0

    .line 87451
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iz;->A02:Lcom/facebook/ads/redexgen/X/Ln;

    .line 87452
    return-object p0
.end method

.method public final A59()Lcom/facebook/ads/redexgen/X/iy;
    .locals 5

    .line 87453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iz;->A02:Lcom/facebook/ads/redexgen/X/Ln;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Ln;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/iz;->A01:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/iz;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/iy;

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/iy;-><init>(Lcom/facebook/ads/redexgen/X/Ln;JI)V

    return-object v0
.end method
