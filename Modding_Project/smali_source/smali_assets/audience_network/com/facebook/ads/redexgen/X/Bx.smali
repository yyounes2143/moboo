.class public final Lcom/facebook/ads/redexgen/X/Bx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/f6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A56(Lcom/facebook/ads/redexgen/X/f7;)Lcom/facebook/ads/redexgen/X/Bw;
    .locals 2

    .line 31646
    new-instance v1, Lcom/facebook/ads/redexgen/X/C6;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/C6;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bw;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Bw;-><init>(Lcom/facebook/ads/redexgen/X/f7;Lcom/facebook/ads/redexgen/X/fD;)V

    return-object v0
.end method
