.class public final Lcom/facebook/ads/redexgen/X/PQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/PS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionItemInfoCompat"
.end annotation


# instance fields
.field public final A00:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 58193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58194
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PQ;->A00:Ljava/lang/Object;

    .line 58195
    return-void
.end method

.method public static A00(IIIIZZ)Lcom/facebook/ads/redexgen/X/PQ;
    .locals 1

    .line 58196
    sget-object v0, Lcom/facebook/ads/redexgen/X/PS;->A04:Lcom/facebook/ads/redexgen/X/PO;

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/PO;->A00(IIIIZZ)Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Lcom/facebook/ads/redexgen/X/PQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PQ;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
